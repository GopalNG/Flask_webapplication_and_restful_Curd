# Flask_webapplication_and_restful_Curd

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Flask_webapplication_and_restful_Curd Using MySql DB
This is an example which is hand coded with flask and flaskrestful to perform curd operations Using MYSQL as a database .
##### Definition CRUD operations ?
  - Create
  - Read
  - Update
  - Delete
### Used stored procedures for manipulation of data
### Main Features in this version are !

  - insert username , mailid , phonenumber and Image
  - View all inserted values in card form with bootstrap
  - update values username ,mailid ,phonenumber 
  - delete with id and unlink the image 
  - ### And with Restful you can perform :
  | Url | Method | Operation|
 | ------ | ---- | ----- |
| /allusers | GET |Get all users |
| /adduser | POST | Insert data into table |
| /deluser | Delete | Delete the user from table |
| /GuByID | GET | Get user by id |
| /updateuser | PUT | update user with id |


### Tech

Dillinger uses a number of open source projects to work properly:

* [Bootstrap] - FrontEnd Desing framework!
* [Flask] - Is a microframework for Python based on Werkzeug, Jinja. 
* [MySql] - Backend Database.

For Restfull Operations I Used Flask Restful Library of Flask.

### Install requied Library's 

Offical Website of [Flask](https://flask.pocoo.org/).

Install the Flask.

```win
> Install Python
> Install Pip
> pip install flask-restful
> pip install flask
> pip install pymysql #for using mysql with flask
```
#### I have used POSTMAN for API Testing 
``` 
Install from offical Postman Website (https://www.getpostman.com/)
````
### Todos

 - Update of Image IN WebAPplication
 - Insert and delete image IN RestFul Application i.e API

License
---- MIT

