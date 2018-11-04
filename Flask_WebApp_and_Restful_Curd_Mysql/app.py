from flask import Flask, render_template, request, redirect, url_for, flash
import pymysql
import os
from werkzeug import secure_filename
import time
import re
import dboperations #In project file | which have database operations.


app = Flask(__name__)
app.config['MAX_CONTENT_LENGTH'] = 16 * 1024 * 1024
UPLOAD_FOLDER = 'static\images'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

db = pymysql.connect("localhost","root","","test")

ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])
def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

#starting page which loads all information
@app.route('/')
def Index():
    data = dboperations.fechallusers()
    return render_template('index.html', students=data)
#insert operation
@app.route('/insert', methods = ['POST'])
def insert():
    cursor = db.cursor()
    if request.method == "POST":
        name = request.form['name']
        email = request.form['email']
        phone = request.form['phone']
        image = request.files['imgfile'] #myfile is name of input tag

        if image and allowed_file(image.filename):
            fileTemp = secure_filename(image.filename)
            time_p = time.strftime('%Y%H%M%S')
            filename = time_p+"_"+fileTemp
            image.save(os.path.join(app.config['UPLOAD_FOLDER'],filename))
            path = filename
        empty=''
        if not image:
            flash("You have not uploading a image")
            return  redirect(url_for('Index'))
        else:
            #cursor.execute("INSERT INTO student_flask (name, email, phone, img_name) VALUES (%s, %s, %s, %s)", (name,email,phone,path))
            cursor.callproc('inswithallparm',(name,email,phone,path))
            db.commit()
            cursor.close()
            flash("Data Inserted Successfully")
        return redirect(url_for('Index'))

#delete information 
@app.route('/delete/<string:id_data>', methods = ['GET'])
def delete(id_data):
    dur = dboperations.deleteuser(id_data)
    if dur is True:
        flash("Successfully Deleted Requested")
        return redirect(url_for('Index'))
    else:
        flash("Something Gone Worng !! TryAgain After Sometime")
        
#update infomation except image
@app.route('/update',methods=['POST','GET'])
def update():
    if request.method == 'POST':
        id_data = request.form['id']
        name = request.form['name']
        email = request.form['email']
        phone = request.form['phone']
        try:
            obj = dboperations.updateuserinfo(name,email,phone,id_data)
            p = obj.updateuser()
            if p is True:
                flash("Done")
            else:
                pass
        except Error as error:
            print(error)
        finally:
            return redirect(url_for('Index'))

#This route will update image
@app.route('/upda',methods=['GET','POST'])
def upda():
    id_data = request.form['id']
    user_id=id_data
    image = request.files['imgfile']
    if image and allowed_file(image.filename):
        dboperations.direct_img_remove(user_id)
        fileTemp = secure_filename(image.filename)
        time_p = time.strftime('%Y%H%M%S')
        filename = time_p+"_"+fileTemp
        image.save(os.path.join(app.config['UPLOAD_FOLDER'],filename))
        path = filename
        query = """ UPDATE student_flask
                        SET img_name=%s
                        WHERE id = %s """
        data = (path,id_data)

        try:
            cursor = db.cursor()
            cursor.execute(query, data)
            db.commit()
            flash("Successfully UPDATEed your Requested images it will update soon or refresh page")
        except Error as error:
            print(error)

        finally:
            cursor.close()
            return redirect(url_for('Index'))

if __name__ == "__main__":
    app.secret_key ='super secret key'
    app.run(port=5000,debug=True)
