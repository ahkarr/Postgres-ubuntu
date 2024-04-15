## CREATE USER
CREATE USER p6admin;

## ALTER PASSWORD
ALTER ROLE p6admin WITH PASSWORD 'Post@123';;

## ALTER ROLE WITH PERMISSION
ALTER ROLE p6admin WITH LOGIN; ## LOGIN 

/*
postgres=# \du
                             List of roles
 Role name |                         Attributes
-----------+------------------------------------------------------------
 p6admin   |
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS
*/

ALTER ROLE p6admin WITH SUPERUSER; ## SUPERUSER

/*
postgres=# \du
                             List of roles
 Role name |                         Attributes
-----------+------------------------------------------------------------
 p6admin   | Superuser
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS
*/

ALTER ROLE p6admin WITH CREATEROLE CREATEDB REPLICATION;

/*
postgres=# \du
                             List of roles
 Role name |                         Attributes
-----------+------------------------------------------------------------
 p6admin   | Superuser, Create role, Create DB, Replication
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS
*/