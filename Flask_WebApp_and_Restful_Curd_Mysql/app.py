from flask import Flask, render_template, request, redirect, url_for, flash
import pymysql
import os
from werkzeug import secure_filename
import time
import re

app = Flask(__name__)
app.config['MAX_CONTENT_LENGTH'] = 16 * 1024 * 1024
UPLOAD_FOLDER = 'static\images'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
db = pymysql.connect("localhost","root","","test")


ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])
def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.route('/')
def Index():
    cursor = db.cursor()
    cursor.callproc('FetchAll')
    data = cursor.fetchall()
    cursor.close()
    return render_template('index.html', students=data)

#@app.route('/imgnam/<string:id>', methods = ['GET'])
def image_name(id):
    data = ''
    cursor = db.cursor()

    cursor.callproc('GetUserByID',(id))
    #cursor.execute("SELECT img_name FROM student_flask WHERE id=%s", (id))
    data = cursor.fetchone()
    return data

#remove image with image_name from the directory using unlink function
#@app.route('/imgrem/<string:imgname>', methods = ['GET'])
def remove_img(imgname):
    mna = imgname
    c = app.config['UPLOAD_FOLDER'] + '\\'
    path_of_img = c + mna
    cm = path_of_img
    os.unlink(os.path.join(cm))
    return "done",200

#@app.route('/remimg/<int:id>', methods = ['GET']) #just for function check
def direct_img_remove(id):
    name_image = image_name(id)
    #os.remove(name_image)
    c = app.config['UPLOAD_FOLDER'] + '\\'
    path_of_img = c + str(name_image[0])
    cm = path_of_img
    os.unlink(cm)
    return True

@app.route('/insert', methods = ['POST'])
def insert():
    cursor = db.cursor()
    if request.method == "POST":
        flash("Data Inserted Successfully")
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
        if path is empty:
            return "You have not uploading a image"
        else:
            #cursor.execute("INSERT INTO student_flask (name, email, phone, img_name) VALUES (%s, %s, %s, %s)", (name,email,phone,path))
            cursor.callproc('inswithallparm',(name,email,phone,path))
            db.commit()
            cursor.close()

        return redirect(url_for('Index'))


@app.route('/delete/<string:id_data>', methods = ['GET'])
def delete(id_data):
    cursor = db.cursor()

    #query = """ DELETE FROM student_flask
    #            WHERE id = %s """

    #data = (id_data)

    try:
        c = direct_img_remove(id_data)
        if c is True:
            cursor = db.cursor()
            #cursor.execute(query, data)
            cursor.callproc('delwithid',(id_data))
            db.commit()
            flash("Requested User 'DELETED' Successfully")


    except Error as error:
        print(error)

    finally:
        #cursor.close()
        return redirect(url_for('Index'))




@app.route('/update',methods=['POST','GET'])
def update():
    if request.method == 'POST':
        if 'file' not in request.files:
            id_data = request.form['id']
            name = request.form['name']
            email = request.form['email']
            phone = request.form['phone']

            #query = """ UPDATE student_flask
                            #SET name = %s,email=%s,phone=%s
                            #WHERE id = %s """
            #data = (name,email,phone,id_data)

            try:
                cursor = db.cursor()
                #cursor.execute(query, data)
                cursor.callproc('update_user_b_data',(name,email,phone,id_data))
                db.commit()

            except Error as error:
                print(error)

            finally:
                cursor.close()
                return redirect(url_for('Index'))

#actually here i am trying to update the only ---image
@app.route('/upda/<string:userid>',methods=['GET']) # """UPDATE student_flask SET img_name WHERE id=%s """
def upda(userid):
    user_id = userid
    image = request.files['imgfile']
    if image and allowed_file(image.filename):
        imn = direct_img_remove(user_id)
        if imn is True:
            fileTemp = secure_filename(image.filename)
            time_p = time.strftime('%Y%H%M%S')
            filename = time_p+"_"+fileTemp
            image.save(os.path.join(app.config['UPLOAD_FOLDER'],filename))
            path = filename
            return redirect(url_for('Index'))

if __name__ == "__main__":
    app.secret_key ='super secret key'
    app.run(port=5000,debug=True)
