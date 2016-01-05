declare
userexist integer;
begin
  select count(*) into userexist from dba_users where username='WORKINGBRAIN_';
  if (userexist = 1) then
    execute immediate 'DROP USER WORKINGBRAIN_ CASCADE';
  end if;
end;
/


CREATE USER WORKINGBRAIN_ IDENTIFIED BY WORKINGBRAIN_;
ALTER USER WORKINGBRAIN_ quota 50m ON system;

GRANT CREATE SESSION TO WORKINGBRAIN_;
GRANT CREATE TABLE TO WORKINGBRAIN_;

ALTER SESSION SET CURRENT_SCHEMA =  WORKINGBRAIN_;

CREATE TABLE website (
title varchar(50) ,
description varchar(50) ,
url varchar(50) );

INSERT INTO website (title, description, url) VALUES('Docker', 'This is docker url', 'https://docs.docker.com/');
INSERT INTO website (title, description, url) VALUES('Vagrant', 'This is vagrant url', 'https://docs.vagrantup.com/v2/');
COMMIT;
