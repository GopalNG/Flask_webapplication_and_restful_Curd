from flask import Flask,json,request
from flask_restful import Resource, Api
from flask_restful import reqparse
import pymysql


# Creating MySQL instance
app = Flask(__name__)

# MySQL configurations
db = pymysql.connect("localhost","root","","test")

api = Api(app)

class AllUsers(Resource):
    def get(self):
        try:
            cursor = db.cursor()

            cursor.callproc('FetchAll')
            data = cursor.fetchall()

            if len(data) is 0:
                conn.commit()
                return json.dumps({'StatusCode':'400','Message': 'No users In your DB'}),400
            else:
                response = app.response_class(
                    response = json.dumps(data),
                    mimetype = 'application/json'
                )
                return response



        except Exception as e:
            return {'error': str(e)}

class AddUser(Resource):


    def post(self):
        try:
            if request.method == 'GET':
                return "failure"
            if request.method == 'POST':
                json_data = request.get_json(force=True)
                _username = json_data['name']
                _useremail = json_data['email']
                _userphnum = json_data['phone']

                cursor = db.cursor()
                cursor.callproc('insertrecored',(_username,_useremail,_userphnum))
                db.commit()
                return_msg = {'StatusCode':'200','Message': 'User Add Successfully'}
                return json.dumps(return_msg),200
        except Exception as e:
            return {'error': str(e)}


class DeleteUser(Resource):

    def delete(self):
        json_data = request.get_json()
        id_data = json_data.get('ids')
        cursor = db.cursor()
        cursor.execute("DELETE FROM student_flask WHERE id=%s", (id_data,))
        db.commit()
        cursor.close()
        return "User Deleted",200



class GUById(Resource):


    def get(self,iddata):
        cursor = db.cursor()
        cursor.execute("SELECT * FROM student_flask WHERE id=%s", (iddata,))
        data = cursor.fetchone()

        if len(data) is 0:
            conn.commit()
            return json.dumps({'StatusCode':'400','Message': 'No users In your DB'}),400
        else:
            response = app.response_class(
            response = json.dumps(data),
            mimetype = 'application/json'
                )
            return response

class Update(Resource):

    def put(self, iddata):
        try:
            if request.method == 'GET':
                return "failure"
            if request.method == 'POST':
                json_data = request.get_json()
                _username = json_data['name']
                _useremail = json_data['email']
                _userphnum = json_data['phone']
        finally:
            yeild "I/'m done"
            return True



api.add_resource(AllUsers,'/allusers')
api.add_resource(AddUser,'/adduser')
api.add_resource(DeleteUser,'/deluser')
api.add_resource(GUById,'/getbyid/<string:iddata>')

if __name__ == '__main__':
    app.run(debug=True)
