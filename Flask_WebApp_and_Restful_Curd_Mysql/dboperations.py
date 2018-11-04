import pymysql
from flask import Flask
import os
from werkzeug import secure_filename
import re

app = Flask(__name__)
UPLOAD_FOLDER = 'static\images'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


db = pymysql.connect("localhost","root","","test")
#remove image with image_name from the directory using unlink function
#@app.route('/imgrem/<string:imgname>', methods = ['GET'])
def remove_img(imgname):
    mna = imgname
    c = app.config['UPLOAD_FOLDER'] + '\\'
    path_of_img = c + mna
    cm = path_of_img
    os.remove(os.path.join(cm))
    return "done",200

#@app.route('/imgnam/<string:id>', methods = ['GET'])
def image_name(id):
    data = ''
    cursor = db.cursor()
    cursor.execute("SELECT img_name FROM student_flask WHERE id=%s", (id))
    data = cursor.fetchone()
    return data

#@app.route('/remimg/<int:id>', methods = ['GET']) #just for function check
def direct_img_remove(id):
    name_image = image_name(id)
    #os.remove(name_image)
    c = app.config['UPLOAD_FOLDER'] + '\\'
    path_of_img = c + str(name_image[0])
    cm = path_of_img

    try:
        if os.path.exists(cm):
            os.unlink(cm)
            return True
        else:
            return False
    except OSError as e: # this would be "except OSError, e:" before Python 2.6
        if e.errno != errno.ENOENT: # errno.ENOENT = no such file or directory
            raise # re-raise exception if a different error occurred



def fechallusers():
    cursor = db.cursor()
    cursor.callproc('FetchAll')
    data = cursor.fetchall()
    cursor.close()
    return data


def deleteuser(id_data):
    id = id_data
    c = direct_img_remove(id_data)
    if c is True:
        cursor = db.cursor()
        cursor.callproc('DelById',[id])
        db.commit()
        cursor.close()
        return True

class updateuserinfo():
    """docstring forupdateuserinfo."""
    def __init__(self, name,email,phone,id_data):
        self.name = name
        self.email = email
        self.phone = phone
        self.id_data = id_data
    def updateuser(self):
        cursor = db.cursor()
        cursor.callproc('update_user_b_data',(self.name,self.email,self.phone,self.id_data))
        db.commit()
        cursor.close()
        return True

#query = """ UPDATE student_flask SET img_name=%s WHERE id = %s """
#data = (path,id_data)
