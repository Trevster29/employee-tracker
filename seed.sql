use TMemployeeTr_db;

insert into department (id, dpt_Name) values(1, "The Head Cheese: CEO");
insert into department (id, dpt_Name) values (2, "The Second Cheese: Upper level");
insert into department (id, dpt_Name) values (3, "The Third Cheese: Lower level");
insert into department (id, dpt_Name) values (4, "The Last Cheese: Customer interaction");

insert into role (id, title, salary, dpt_ID) values (1, "The Head Cheese: CEO", "1,000,000", 1);
insert into role (id, title, salary, dpt_ID) values (2, "The Second Cheese: Upper level", "500,000", 2);
insert into role (id, title, salary, dpt_ID) values (3, "The Third Cheese: Lower level", "300,000", 3);
insert into role (id, title, salary, dpt_ID) values (4, "The Last Cheese: Direct to consumer", "150,000", 4);

insert into employee (id, first_name, last_name, role_id) values (1, "Trevor", "McNamara", 1);
insert into employee (id, first_name, last_name, role_id) values (2, "Travis", "Koziel", 2);
insert into employee (id, first_name, last_name, role_id) values (3, "Zach", "Saul", 3);
insert into employee (id, first_name, last_name, role_id) values (4, "Sasha", "Artemieva", 4);
insert into employee (id, first_name, last_name, role_id) values (5, "Milo", "Otis", 5);


insert into employee (id, first_name, last_name, role_id) values(15, "Eatmy", "shorts", 1);
insert into employee (id, first_name, last_name, role_id) values(16, "lookatthose", "mechanicaldetails", 2);
insert into employee (id, first_name, last_name, role_id) values(17, "farc", "larc", 3);
insert into employee (id, first_name, last_name, role_id) values(18, "Sigh", "Jones", 4);
insert into employee (id, first_name, last_name, role_id) values(19, "Daboi", "1da", 5);

