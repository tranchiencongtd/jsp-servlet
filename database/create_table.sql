use jspservlet;

create table role(
	id bigint not null primary key auto_increment,
    name varchar(255) not null,
    code varchar(255) not null,
    createdDate timestamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255)
);

create table user(
	id bigint not null primary key auto_increment,
    name varchar(255) not null,
    password varchar(255) not null,
    fullname varchar(255) not null,
    status int not null,
    roleid bigint not null,
    createdDate timestamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);

alter table user add constraint fk_user_role foreign key (roleid) references role(id);


create table news(
	id bigint not null primary key auto_increment,
    title varchar(255) not null,
    thumbail varchar(255) not null,
    shortDescription varchar(255) not null,
    content int not null,
    categoryid bigint not null,
    createdDate timestamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);

create table category(
	id bigint not null primary key auto_increment,
    name varchar(255) not null,
    code varchar(255) not null,
    createdDate timestamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);

alter table news add constraint fk_news_category foreign key (categoryid) references category(id);

create table comment(
	id bigint not null primary key auto_increment,
    content text not null,
    user_id bigint not null,
    news_id bigint not null,
    createdDate timestamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);

alter table comment add constraint fk_comment_user foreign key (user_id) references user(id);
alter table comment add constraint fk_comment_news foreign key (news_id) references news(id);
