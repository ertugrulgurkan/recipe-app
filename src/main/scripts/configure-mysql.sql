
## Use to run mysql db docker image, optional if you're not using a local mysqldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
#Create Databases
CREATE DATABASE recipe_dev;
CREATE DATABASE recipe_prod;

#Create database service accounts
CREATE USER 'recipe_dev_user'@'localhost' IDENTIFIED BY 'ertugrul';
CREATE USER 'recipe_prod_user'@'localhost' IDENTIFIED BY 'ertugrul';
CREATE USER 'recipe_dev_user'@'%' IDENTIFIED BY 'ertugrul';
CREATE USER 'recipe_prod_user'@'%' IDENTIFIED BY 'ertugrul';

#Database grants
GRANT SELECT ON recipe_dev.* to 'recipe_dev_user'@'localhost';
GRANT INSERT ON recipe_dev.* to 'recipe_dev_user'@'localhost';
GRANT DELETE ON recipe_dev.* to 'recipe_dev_user'@'localhost';
GRANT UPDATE ON recipe_dev.* to 'recipe_dev_user'@'localhost';
GRANT SELECT ON recipe_prod.* to 'recipe_prod_user'@'localhost';
GRANT INSERT ON recipe_prod.* to 'recipe_prod_user'@'localhost';
GRANT DELETE ON recipe_prod.* to 'recipe_prod_user'@'localhost';
GRANT UPDATE ON recipe_prod.* to 'recipe_prod_user'@'localhost';
GRANT SELECT ON recipe_dev.* to 'recipe_dev_user'@'%';
GRANT INSERT ON recipe_dev.* to 'recipe_dev_user'@'%';
GRANT DELETE ON recipe_dev.* to 'recipe_dev_user'@'%';
GRANT UPDATE ON recipe_dev.* to 'recipe_dev_user'@'%';
GRANT SELECT ON recipe_prod.* to 'recipe_prod_user'@'%';
GRANT INSERT ON recipe_prod.* to 'recipe_prod_user'@'%';
GRANT DELETE ON recipe_prod.* to 'recipe_prod_user'@'%';
GRANT UPDATE ON recipe_prod.* to 'recipe_prod_user'@'%';