create table app_role (role_id bigint not null, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table hibernate_sequence (next_val bigint) type=MyISAM
insert into hibernate_sequence values ( 1 )
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null auto_increment, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
create table app_role (role_id bigint not null auto_increment, role_name varchar(30) not null, primary key (role_id)) type=MyISAM
create table app_user (user_id bigint not null auto_increment, email varchar(100) not null, enabled bit not null, encryted_password varchar(128) not null, user_name varchar(36) not null, primary key (user_id)) type=MyISAM
create table pitch (pitch_id bigint not null auto_increment, name varchar(30) not null, user_id bigint, primary key (pitch_id)) type=MyISAM
create table user_role (id bigint not null auto_increment, role_id bigint not null, user_id bigint not null, primary key (id)) type=MyISAM
alter table app_role add constraint APP_ROLE_UK unique (role_name)
alter table app_user add constraint APP_USER_UK unique (user_name)
alter table pitch add constraint PITCH_UK unique (pitch_id, name)
alter table user_role add constraint USER_ROLE_UK unique (user_id, role_id)
alter table pitch add constraint FK972hb4pjnuh1665skb974dfr0 foreign key (user_id) references app_user (user_id)
alter table user_role add constraint FKp6m37g6n6c288s096400uw8fw foreign key (role_id) references app_role (role_id)
alter table user_role add constraint FKg7fr1r7o0fkk41nfhnjdyqn7b foreign key (user_id) references app_user (user_id)
