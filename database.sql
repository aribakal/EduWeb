/* copy this if needed

DROP DATABASE IF EXISTS eduweb;

*/

CREATE DATABASE IF NOT EXISTS eduweb;
USE eduweb;

CREATE TABLE roles(
id              int(255) auto_increment not null,
description     varchar(255),
admin           bit(1) not null,
CONSTRAINT pk_roles PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE users(
id              int(255) auto_increment not null,
role_id         int(255),
name            varchar(255),
surname         varchar(255),
email           varchar(255),
password        varchar(255),
image           varchar(255),
created_at      datetime,
updated_at      datetime,
remember_token  varchar(255),
CONSTRAINT pk_users PRIMARY KEY(id),
CONSTRAINT fk_users_roles FOREIGN KEY(role_id) REFERENCES roles(id)
)ENGINE=InnoDb;
