# Create Stored Procedures In MySql

For CRUD operations ARE
  - Create
  - Read
  - Update
  - Delete

>Total Five 5 procedures i'm using in this project,
>MySql we can create them directly through Dashboard or through a query.
`Note : IN MySql we show procedures As Routine`

#### Create Procedures Query

```DELIMITER //
CREATE PROCEDURE DelById(IN userid int(16)) #for delete
DELETE 
FROM student_flask 
WHERE id=userid;
 END //
DELIMITER ;
```

#### FecthAllusers : Procedure name in project : FetchAll
```DELIMITER //
CREATE PROCEDURE FetchAll()
SELECT 
* 
FROM student_flask;
 END //
DELIMITER ;
```

#### GetAllUserBy userid : Procedure name in project : GetUserByID
```DELIMITER //
CREATE PROCEDURE GetUserByID(IN userid int(16))
BEGIN
SELECT
    *
FROM
    student_flask
WHERE
    id = userid ;
 END //
DELIMITER ;
```
#### Update : procedure name in project : 
```DELIMITER //
CREATE PROCEDURE GetUserByID(IN uname varchar(125),IN uemail varchar(125),IN uphone BIGINT(255),uid int(16))
BEGIN
UPDATE student_flask 
SET 
name = uname,
email=uemail,
phone=uphone 
WHERE id = uid;
 END //
DELIMITER ;
```
