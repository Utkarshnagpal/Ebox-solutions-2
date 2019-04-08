			drop table if exists skill;
		drop table if exists city;
		drop table if exists venue;
		drop table if exists team;
		drop table if exists player;
		drop table if exists outcome;
		drop table if exists innings;
		drop table if exists game;
		drop table if exists umpire;
		drop table if exists umpire_type;
		drop table if exists match_umpire_type;
		drop table if exists wicket_type;		
		drop table if exists delivery;		
		drop table if exists wicket;	
		drop table if exists extratype;	
		drop table if exists extradelivery;	
		
		

		
		
		
		create table skill(
		id  int not null,
		name varchar(100) not null,
		primary key(id));
		
		
		create table city(
		id int not null,
		name varchar(100) not null,
		primary key(id));

		create table venue(
		id int not null,
		name varchar(100) not null,
		city_id  int not null,
		primary key(id),
		foreign key(city_id)
		references city(id));

	  create table team(
		id int not null,
		name varchar(100) not null,
		coach varchar(100) not null,
		home_city_id int not null,
		captain int not null,
		primary key(id),
		foreign key(home_city_id)
		references city(id));
	
	
		create table player(
		id int not null,
		name varchar(100) not null,
		country varchar(100) not null,
		skill_id int not null,
		team_id int not null,
		primary key(id),
		foreign key(skill_id)
		references skill(id),
		foreign key(team_id)
		references team(id));
	
     
    create table outcome(
		id int not null,
		status varchar(100) not null,
		winner_team_id int,
		wickets int,
		runs int,
		player_of_match int,
		primary key(id),
		foreign key(winner_team_id)
		references team(id),
		foreign key(player_of_match)
		references player(id));	


    create table innings(
		id int not null,
		innings_number int  not null,
		batting_team_id int not null,
		primary key(id),
		foreign key(batting_team_id)
		references team(id));


		create table game(
		id int not null,
		game_date Date not null,
		team_id_1 int not null,
		team_id_2 int not null,
		venue_id int not null,
		outcome_id int not null,
		first_innings_id int,
		second_innings_id int,
		primary key(id),
		foreign key(team_id_1)
		references team(id),
		foreign key(team_id_2)
		references team(id),
		foreign key(venue_id)
		references venue(id),
		foreign key(outcome_id)
		references outcome(id),
		foreign key(first_innings_id)
		references innings(id),
		foreign key(second_innings_id)
		references innings(id));


    create table umpire(
		id int not null,
		name varchar(100) not null,
		primary key(id));

  
  
    create table umpire_type(
		id int not null,
		type varchar(100) not null,
		primary key(id));



		create table match_umpire_type(
		id int not null,
		game_id int not null,
		umpire_id int not null,
		umpire_type_id int not null,
		primary key(id),
		foreign key(game_id)
		references game(id),
		foreign key(umpire_id)
		references umpire(id),
		foreign key(umpire_type_id)
		references umpire_type(id));



    create table wicket_type(
		id int not null,
		name varchar(100) not null,
		primary key(id));
		
		
		
		create table delivery(
		id int not null,
		innings_id int not null,
		over int not null,
		ball int not null,
		batsman_id int not null,
		bowler_id int not null,
		non_striker_id int not null,
		runs int not null,
		primary key(id),
		foreign key(innings_id)
		references innings(id),
		foreign key(batsman_id)
		references player(id),
		foreign key(bowler_id)
		references player(id),
		foreign key(non_striker_id)
		references player(id));
		

    create table wicket(
		id int not null,
		delivery_id  int not null,
		wicket_type_id  int not null,
		player_id  int not null,
		fielder_id int,
		primary key(id),
		foreign key(delivery_id)
		references delivery(id),
		foreign key(wicket_type_id)
		references wicket_type(id),
		foreign key(player_id)
		references player(id),
		foreign key(fielder_id)
		references player(id));
		
		
		
		create table extratype(
		id int not null,
		name varchar(100) not null,
		primary key(id));

		

		create table extradelivery(
		id int not null,
		delivery_id int not null,
		extra_type_id int not null,
		runs int not null,
		primary key(id),
		foreign key(delivery_id)
		references delivery(id),
		foreign key(extra_type_id)
		references extratype(id));
	
	
	 
	
		
		
		


	
	insert into skill(id,name) values (1,'Batting');
insert into skill(id,name) values (2,'Bowling');
insert into skill(id,name) values (3,'Wicket Keeping Batting');
insert into skill(id,name) values (4,'All Rounder');

insert into city(id,name) values (1,'Ahmedabad');
insert into city(id,name) values (2,'Kolkata');
insert into city(id,name) values (3,'Visakhapatnam');
insert into city(id,name) values (4,'Punjab');
insert into city(id,name) values (5,'Delhi');
insert into city(id,name) values (6,'Banglore');
insert into city(id,name) values (7,'Hyderabad');
insert into city(id,name) values (8,'Mumbai');
insert into city(id,name) values (9,'Pune');
insert into city(id,name) values (10,'Chennai');
insert into city(id,name) values (11,'Rajkot');


insert into venue(id,name,city_id) values (1,'Feroz Shah Kotla',5);
insert into venue(id,name,city_id) values (2,'MA Chidambaram Stadium',10);
insert into venue(id,name,city_id) values (3,'Punjab Cricket Association Stadium',8);
insert into venue(id,name,city_id) values (4,'M.Chinnaswamy Stadium',6);
insert into venue(id,name,city_id) values (5,'Rajiv Gandhi International Stadium',7);
insert into venue(id,name,city_id) values (6,'Eden Gardens',2);
insert into venue(id,name,city_id) values (7,'Dr.Y.S.Rajasekhara Reddy ACA-VDCA Cricket Stadium',3);
insert into venue(id,name,city_id) values (8,'Barabati Stadium',4);
insert into venue(id,name,city_id) values (9,'Maharashtra Cricket Association Stadium',9);
insert into venue(id,name,city_id) values (10,'Green Park',1);
insert into venue(id,name,city_id) values (11,'Saurashtra Cricket Association Stadium',11);


insert into team(id,name,coach,home_city_id,captain) values (1,'Delhi Daredevils','Paddy Upton',5,1);
insert into team(id,name,coach,home_city_id,captain) values (2,'Gujarat Lions','Brad Hodge',1,14);
insert into team(id,name,coach,home_city_id,captain) values (3,'Kings XI Punjab','Sanjay Bangar',4,27);
insert into team(id,name,coach,home_city_id,captain) values (4,'Mumbai Indians','Ricky Ponting',8,39);
insert into team(id,name,coach,home_city_id,captain) values (5,'Rising Pune Supergiants','Stephen Fleming',9,51);
insert into team(id,name,coach,home_city_id,captain) values (6,'Sunrisers Hyderabad','Tom Moody',7,63);
insert into team(id,name,coach,home_city_id,captain) values (7,'Royal Challengers Bangalore','Daniel Vettori',6,75);
insert into team(id,name,coach,home_city_id,captain) values (8,'Kolkata Knight Riders','Jacques Kallis',2,87);



insert into player(id,name,country,skill_id,team_id) values (1,'Zaheer Khan','India',2,1);
insert into player(id,name,country,skill_id,team_id) values (2,'Mayank Agarwal','India',1,1);
insert into player(id,name,country,skill_id,team_id) values (3,'Khaleel Ahmed','India',2,1);
insert into player(id,name,country,skill_id,team_id) values (4,'Mohammed Shami','India',2,1);
insert into player(id,name,country,skill_id,team_id) values (5,'Karun Nair','India',4,1);
insert into player(id,name,country,skill_id,team_id) values (6,'Jayant Yadav','India',2,1);
insert into player(id,name,country,skill_id,team_id) values (7,'Carlos Brathwaite','West India',4,1);
insert into player(id,name,country,skill_id,team_id) values (8,'JP Duminy ','South Africa',4,1);
insert into player(id,name,country,skill_id,team_id) values (9,'Quinton de Kock','South Africa',3,1);
insert into player(id,name,country,skill_id,team_id) values (10,'Chris Morris','South Africa',4,1);
insert into player(id,name,country,skill_id,team_id) values (11,'Shreyas Iyer','India',1,1);
insert into player(id,name,country,skill_id,team_id) values (12,'Nathan Coulter-Nile','Australia',2,1);
insert into player(id,name,country,skill_id,team_id) values (13,'Imran Tahir','South Africa',2,1);





insert into player(id,name,country,skill_id,team_id) values (14,'Suresh Raina','India',1,2);
insert into player(id,name,country,skill_id,team_id) values (15,'Praveen Kumar','India',2,2);
insert into player(id,name,country,skill_id,team_id) values (16,'Akshdeep Nath','India',4,2);
insert into player(id,name,country,skill_id,team_id) values (17,'Dwayne Bravo','West India',4,2);
insert into player(id,name,country,skill_id,team_id) values (18,'James Faulkner','Australia',4,2);
insert into player(id,name,country,skill_id,team_id) values (19,'Shadab Jakati','India',2,2);
insert into player(id,name,country,skill_id,team_id) values (20,'Sarabjit Ladda','India',2,2);
insert into player(id,name,country,skill_id,team_id) values (21,'Brendon McCullum','New Zealand',1,2);
insert into player(id,name,country,skill_id,team_id) values (22,'Ravindra Jadeja','India',4,2);
insert into player(id,name,country,skill_id,team_id) values (23,'Dinesh Karthik ','India',1,2);
insert into player(id,name,country,skill_id,team_id) values (24,'Dwayne Smith','West India',4,2);
insert into player(id,name,country,skill_id,team_id) values (25,'Jaydev Shah','India',1,2);
insert into player(id,name,country,skill_id,team_id) values (26,'Aaron Finch','Australia',1,2);


insert into player(id,name,country,skill_id,team_id) values (27,'Murali Vijay','India',1,3);
insert into player(id,name,country,skill_id,team_id) values (28,'David Miller','South Africa',1,3);
insert into player(id,name,country,skill_id,team_id) values (29,'Kyle Abbott','South Africa',4,3);
insert into player(id,name,country,skill_id,team_id) values (30,'Anureet Singh','India',2,3);
insert into player(id,name,country,skill_id,team_id) values (31,'Armaan Jaffer','India',1,3);
insert into player(id,name,country,skill_id,team_id) values (32,'Nikhil Naik','Australia',3,3);
insert into player(id,name,country,skill_id,team_id) values (33,'Axar Patel','India',4,3);
insert into player(id,name,country,skill_id,team_id) values (34,'Mohit Sharma','India',2,3);
insert into player(id,name,country,skill_id,team_id) values (35,'KC Cariappa','India',2,3);
insert into player(id,name,country,skill_id,team_id) values (36,'Rishi Dhawan','India',4,3);
insert into player(id,name,country,skill_id,team_id) values (37,'Mitchell Johnson','Australia',4,3);
insert into player(id,name,country,skill_id,team_id) values (38,'Shaun Marsh','Australia',1,3);


insert into player(id,name,country,skill_id,team_id) values (39,'Rohit Sharma','India',1,4);
insert into player(id,name,country,skill_id,team_id) values (40,'Corey Anderson','New Zealand',4,4);
insert into player(id,name,country,skill_id,team_id) values (41,'Jasprit Bumrah','England',4,4);
insert into player(id,name,country,skill_id,team_id) values (42,'Jos Buttler','South African',2,4);
insert into player(id,name,country,skill_id,team_id) values (43,'Unmukt Chand','India',1,4);
insert into player(id,name,country,skill_id,team_id) values (44,'Shreyas Gopal','India',4,4);
insert into player(id,name,country,skill_id,team_id) values (45,'Harbhajan Singh','India',2,4);
insert into player(id,name,country,skill_id,team_id) values (46,'Kieron Pollard','West Indian',4,4);
insert into player(id,name,country,skill_id,team_id) values (47,'Jitesh Sharma','India',4,4);
insert into player(id,name,country,skill_id,team_id) values (48,'Krunal Pandya','India',4,4);
insert into player(id,name,country,skill_id,team_id) values (49,'Parthiv Patel','India',3,4);
insert into player(id,name,country,skill_id,team_id) values (50,'Tim Southee','New Zealand',2,4);

insert into player(id,name,country,skill_id,team_id) values (51,'MS Dhoni','India',4,5);
insert into player(id,name,country,skill_id,team_id) values (52,'Ankit Sharma','India',4,5);
insert into player(id,name,country,skill_id,team_id) values (53,'Ankush Bains','India',3,5);
insert into player(id,name,country,skill_id,team_id) values (54,'Ashok Dinda','India',2,5);
insert into player(id,name,country,skill_id,team_id) values (55,'Jaskaran Singh','India',2,5);
insert into player(id,name,country,skill_id,team_id) values (56,'Mitchell Marsh','Australia',4,5);
insert into player(id,name,country,skill_id,team_id) values (57,'Albie Morkel','South Africa',4,5);
insert into player(id,name,country,skill_id,team_id) values (58,'Irfan Pathan','India',4,5);
insert into player(id,name,country,skill_id,team_id) values (59,'Ishant Sharma','India',2,5);
insert into player(id,name,country,skill_id,team_id) values (60,'Kevin Pietersen','England',1,5);
insert into player(id,name,country,skill_id,team_id) values (61,'Saurabh Tiwary','India',1,5);
insert into player(id,name,country,skill_id,team_id) values (62,'Peter Handscomb','Australia',1,5);




insert into player(id,name,country,skill_id,team_id) values (63,'David Warner','Australia',1,6);
insert into player(id,name,country,skill_id,team_id) values (64,'Yuvraj Singh','India',4,6);
insert into player(id,name,country,skill_id,team_id) values (65,'Ben Cutting','Australia',1,6);
insert into player(id,name,country,skill_id,team_id) values (66,'Moises Henriques','Australia',4,6);
insert into player(id,name,country,skill_id,team_id) values (67,'Naman Ojha','India',1,6);
insert into player(id,name,country,skill_id,team_id) values (68,'Barinder Sran','India',1,6);
insert into player(id,name,country,skill_id,team_id) values (69,'Ashish Reddy','India',2,6);
insert into player(id,name,country,skill_id,team_id) values (70,'Siddarth Kaul','India',1,6);
insert into player(id,name,country,skill_id,team_id) values (71,'Bipul Sharma','India',4,6);
insert into player(id,name,country,skill_id,team_id) values (72,'Ashish Nehra','India',2,6);
insert into player(id,name,country,skill_id,team_id) values (73,'Kane Williamson','New Zealand',1,6);
insert into player(id,name,country,skill_id,team_id) values (74,'Deepak Hooda','India',4,6);


insert into player(id,name,country,skill_id,team_id) values (75,'Virat Kohli','India',1,7);
insert into player(id,name,country,skill_id,team_id) values (76,'Sachin Baby','India',1,7);
insert into player(id,name,country,skill_id,team_id) values (77,'Samuel Badree','West India',2,7);
insert into player(id,name,country,skill_id,team_id) values (78,'Harshal Patel','India',2,7);
insert into player(id,name,country,skill_id,team_id) values (79,'Varun Aaron','India',2,7);
insert into player(id,name,country,skill_id,team_id) values (80,'AB de Villiers','South Africa',1,7);
insert into player(id,name,country,skill_id,team_id) values (81,'Chris Gayle ','West India',4,7);
insert into player(id,name,country,skill_id,team_id) values (82,'Abu Nechim','India',2,7);
insert into player(id,name,country,skill_id,team_id) values (83,'Stuart Binny','India',4,7);
insert into player(id,name,country,skill_id,team_id) values (84,'Travis Head','Australia',1,7);
insert into player(id,name,country,skill_id,team_id) values (85,'Adam Milne','New Zealand',2,7);
insert into player(id,name,country,skill_id,team_id) values (86,'Mitchell Starc','Australia',2,7);


insert into player(id,name,country,skill_id,team_id) values (87,'Gautam Gambhir','India',1,8);
insert into player(id,name,country,skill_id,team_id) values (88,'Piyush Chawla','India',4,8);
insert into player(id,name,country,skill_id,team_id) values (89,'John Hastings','Australia',4,8);
insert into player(id,name,country,skill_id,team_id) values (90,'Brad Hogg','Australia',4,8);
insert into player(id,name,country,skill_id,team_id) values (91,'Jason Holder','West India',4,8);
insert into player(id,name,country,skill_id,team_id) values (92,'Chris Lynn','Australia',1,8);
insert into player(id,name,country,skill_id,team_id) values (93,'Colin Munro','New Zealand',1,8);
insert into player(id,name,country,skill_id,team_id) values (94,'Suryakumar Yadav','India',1,8);
insert into player(id,name,country,skill_id,team_id) values (95,'Manan Sharma','India',4,8);
insert into player(id,name,country,skill_id,team_id) values (96,'Ankit Rajpoot','India',2,8);
insert into player(id,name,country,skill_id,team_id) values (97,'Sheldon Jackson','India',1,8);




insert into outcome(id,status,winner_team_id,wickets,runs,player_of_match)
 values (1,'Win',1,10,257,8);
insert into outcome(id,status)
 values (2,'Cancel');
 insert into outcome(id,status,winner_team_id,wickets,runs,player_of_match)
 values (3,'Win',4,10,265,39);
 insert into outcome(id,status,winner_team_id,wickets,runs,player_of_match)
 values (4,'Win',8,5,186,87);
 insert into outcome(id,status)
 values (5,'Cancel');
 
 
insert into innings(id,innings_number,batting_team_id) values (1,1,1);
insert into innings(id,innings_number,batting_team_id) values (2,2,2);
insert into innings(id,innings_number,batting_team_id) values (3,1,4);
insert into innings(id,innings_number,batting_team_id) values (4,2,7);
insert into innings(id,innings_number,batting_team_id) values (5,1,6);
insert into innings(id,innings_number,batting_team_id) values (6,2,8);




insert into game(id,game_date,team_id_1,team_id_2,venue_id,outcome_id,first_innings_id,second_innings_id) values
(1,'2015-05-14',1,2,3,1,1,2);
insert into game(id,game_date,team_id_1,team_id_2,venue_id,outcome_id) values
(2,'2015-02-10',2,5,6,2);
insert into game(id,game_date,team_id_1,team_id_2,venue_id,outcome_id,first_innings_id,second_innings_id) values
(3,'2016-01-05',4,7,7,3,1,2);
insert into game(id,game_date,team_id_1,team_id_2,venue_id,outcome_id,first_innings_id,second_innings_id) values
(4,'2016-02-11',6,8,4,4,1,2);




insert into umpire(id,name) values (1,'Kumar Dharmasena');
insert into umpire(id,name) values (2,'Sundaram Ravi');
insert into umpire(id,name) values (3,'Vineet Kulkarni');
insert into umpire(id,name) values (4,'Anil Chaudhary');
insert into umpire(id,name) values (5,'Chettithody Shamshuddin');
insert into umpire(id,name) values (6,'Rod Tucker');
insert into umpire(id,name) values (7,'Amiesh Saheba');
insert into umpire(id,name) values (8,'Simon Taufel');






insert into umpire_type(id,type) values (1,'First umpire');
insert into umpire_type(id,type) values (2,'Second umpire');
insert into umpire_type(id,type) values (3,'Third umpire');


insert into match_umpire_type(id,game_id,umpire_id,umpire_type_id) values (1,1,4,2);
insert into match_umpire_type(id,game_id,umpire_id,umpire_type_id) values (2,2,5,1);
insert into match_umpire_type(id,game_id,umpire_id,umpire_type_id) values (3,3,2,3);
insert into match_umpire_type(id,game_id,umpire_id,umpire_type_id) values (4,4,7,2);
insert into match_umpire_type(id,game_id,umpire_id,umpire_type_id) values (5,5,6,3);




insert into wicket_type(id,name) values (1,'Retired'); 
insert into wicket_type(id,name) values (2,'Bowled'); 
insert into wicket_type(id,name) values (3,'Timed out'); 
insert into wicket_type(id,name) values (4,'Caught'); 
insert into wicket_type(id,name) values (5,'Handled the ball'); 
insert into wicket_type(id,name) values (6,'Hit the ball twice'); 
insert into wicket_type(id,name) values (7,'Hit wicket'); 
insert into wicket_type(id,name) values (8,'Leg before wicket (LBW)'); 
insert into wicket_type(id,name) values (9,'Obstructing the field'); 
insert into wicket_type(id,name) values (10,'Run out'); 
insert into wicket_type(id,name) values (11,'Stumped'); 





insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (1,1,1,1,2,15,5,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (2,1,1,2,5,15,2,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (3,1,1,3,5,15,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (4,1,1,4,2,15,5,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (5,1,1,5,5,15,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (6,1,1,6,2,15,5,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (7,1,2,1,5,19,2,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (8,1,2,2,5,19,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (9,1,2,3,2,19,5,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (10,1,2,4,2,19,5,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (11,1,2,5,5,19,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (12,1,2,6,2,19,5,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (13,1,2,6,5,19,2,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (14,1,3,1,7,20,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (15,1,3,2,2,20,7,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (16,1,3,3,2,20,7,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (17,1,3,4,2,20,7,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (18,1,3,5,7,20,2,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (19,1,3,6,7,20,2,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (20,1,4,1,2,16,7,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (21,1,4,2,7,16,2,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (22,1,4,3,7,16,2,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (23,1,4,4,7,16,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (24,1,4,5,2,16,7,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (25,1,4,6,2,16,7,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (26,1,5,1,2,15,7,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (27,1,5,2,2,15,7,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (28,1,5,3,7,15,2,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (29,1,5,4,7,15,2,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (30,1,5,5,7,15,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (31,1,5,6,2,15,7,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (32,1,5,6,7,15,2,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (33,1,6,1,2,18,7,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (34,1,6,2,2,18,7,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (35,1,6,3,7,18,2,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (36,1,6,4,7,18,2,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (37,1,6,5,7,18,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (38,1,6,6,2,18,7,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (39,1,7,1,7,17,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (40,1,7,2,8,17,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (41,1,7,3,2,17,8,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (42,1,7,4,2,17,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (43,1,7,5,8,17,2,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (44,1,7,6,8,17,2,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (45,1,7,6,2,17,8,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (46,1,8,1,8,16,2,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (47,1,8,2,8,16,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (48,1,8,3,2,16,8,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (49,1,8,4,2,16,8,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (50,1,8,5,2,16,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (51,1,8,6,8,16,2,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (52,1,9,1,2,19,8,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (53,1,9,2,2,19,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (54,1,9,3,8,19,2,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (55,1,9,4,8,19,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (56,1,9,5,2,19,8,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (57,1,9,6,2,19,8,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (58,1,10,1,8,22,2,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (59,1,10,2,2,22,8,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (60,1,10,3,2,22,8,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (61,1,10,4,9,22,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (62,1,10,5,8,22,9,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (63,1,10,6,9,22,8,5);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (64,1,10,6,9,22,8,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (65,1,11,1,8,15,9,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (66,1,11,2,9,15,8,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (67,1,11,3,9,15,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (68,1,11,4,8,15,9,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (69,1,11,5,8,15,9,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (70,1,11,6,8,15,9,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (71,1,12,1,9,17,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (72,1,12,2,8,17,9,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (73,1,12,3,9,17,8,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (74,1,12,4,9,17,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (75,1,12,5,8,17,9,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (76,1,12,6,8,17,9,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (77,1,13,1,9,15,8,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (78,1,13,2,9,15,8,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (79,1,13,3,9,15,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (80,1,13,4,8,15,9,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (81,1,13,5,8,15,9,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (82,1,13,6,9,15,8,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (83,1,13,6,8,15,9,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (84,1,14,1,9,22,8,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (85,1,14,2,9,22,8,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (86,1,14,3,8,22,9,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (87,1,14,4,10,22,9,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (88,1,14,5,10,22,9,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (89,1,14,6,9,22,10,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (90,1,15,1,10,18,9,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (91,1,15,2,10,18,9,3);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (92,1,15,3,9,18,10,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (93,1,15,4,9,18,10,3);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (94,1,15,5,10,18,9,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (95,1,15,6,9,18,10,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (96,1,16,1,9,19,10,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (97,1,16,2,9,19,10,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (98,1,16,3,9,19,10,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (99,1,16,4,10,19,9,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (100,1,16,5,10,19,9,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (101,1,16,6,10,19,9,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (102,1,17,1,9,20,10,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (103,1,17,2,11,20,10,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (104,1,17,3,11,20,10,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (105,1,17,4,10,20,11,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (106,1,17,5,10,20,11,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (107,1,17,6,1,20,11,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (108,1,18,1,11,24,1,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (109,1,18,2,11,24,1,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (110,1,18,3,11,24,1,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (111,1,18,4,1,24,11,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (112,1,18,5,1,24,11,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (113,1,18,6,3,24,11,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (114,1,19,1,11,17,3,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (115,1,19,2,11,17,3,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (116,1,19,3,4,17,3,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (117,1,19,4,3,17,4,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (118,1,19,5,6,17,4,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (119,1,19,6,6,17,4,0);


insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (120,2,1,1,14,1,16,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (121,2,1,2,16,1,14,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (122,2,1,3,16,1,14,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (123,2,1,4,14,1,16,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (124,2,1,5,14,1,16,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (125,2,1,6,14,1,16,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (126,2,2,1,16,4,14,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (127,2,2,2,16,4,14,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (128,2,2,3,14,4,16,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (129,2,2,3,16,4,14,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (130,2,2,4,16,4,14,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (131,2,2,5,14,4,16,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (132,2,2,6,16,4,14,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (133,2,3,1,16,7,14,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (134,2,3,2,17,7,14,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (135,2,3,3,14,7,17,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (136,2,3,4,14,7,17,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (137,2,3,5,17,7,14,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (138,2,3,6,17,7,14,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (139,2,4,1,14,8,17,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (140,2,4,2,14,8,17,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (141,2,4,3,17,8,14,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (142,2,4,4,17,8,18,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (143,2,4,5,17,8,18,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (144,2,4,6,18,8,17,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (145,2,5,1,18,1,17,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (146,2,5,2,21,1,17,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (147,2,5,3,17,1,21,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (148,2,5,4,21,1,17,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (149,2,5,4,17,1,21,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (150,2,5,5,21,1,17,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (151,2,5,6,21,1,17,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (152,2,6,1,17,8,21,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (153,2,6,2,17,8,21,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (154,2,6,3,21,8,22,4);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (155,2,6,4,21,8,22,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (156,2,6,5,22,8,21,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (157,2,6,6,21,8,22,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (158,2,7,1,21,10,22,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (159,2,7,2,22,10,23,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (160,2,7,3,22,10,23,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (161,2,7,4,23,10,22,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (162,2,7,5,23,10,22,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (163,2,7,6,22,10,23,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (164,2,8,1,23,1,22,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (165,2,8,2,23,1,22,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (166,2,8,3,22,1,23,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (167,2,8,4,22,1,24,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (168,2,8,5,24,1,22,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (169,2,8,6,24,1,22,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (170,2,9,1,24,8,22,6);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (171,2,9,2,24,8,22,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (172,2,9,3,22,8,24,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (173,2,9,4,25,8,24,2);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (174,2,9,4,24,8,25,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (175,2,9,5,24,8,25,0);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (176,2,9,6,25,8,26,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (177,2,10,1,25,1,26,1);
insert into delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs) values (178,2,10,2,26,1,25,0);






insert into wicket(id,delivery_id,wicket_type_id,player_id)
values (1,13,2,5);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (2,39,10,7,23);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (3,60,4,2,19);
insert into wicket(id,delivery_id,wicket_type_id,player_id)
values (4,86,2,8);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (5,101,4,10,20);
insert into wicket(id,delivery_id,wicket_type_id,player_id)
values (6,102,2,9);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (7,106,4,10,14);
insert into wicket(id,delivery_id,wicket_type_id,player_id)
values (8,112,2,1);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (9,115,4,11,16);
insert into wicket(id,delivery_id,wicket_type_id,player_id)
values (10,117,2,3);


insert into wicket(id,delivery_id,wicket_type_id,player_id)
values (11,133,2,16);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (12,141,10,14,2);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (13,145,4,18,10);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (14,153,4,17,11);
insert into wicket(id,delivery_id,wicket_type_id,player_id)
values (15,158,2,21);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (16,166,10,23,7);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (17,172,4,22,10);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (18,175,4,24,11);
insert into wicket(id,delivery_id,wicket_type_id,player_id)
values (19,179,2,15);
insert into wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)
values (20,181,4,20,2);


insert into extratype(id,name) values (1,'No ball');
insert into extratype(id,name) values (2,'Wide');
insert into extratype(id,name) values (3,'Leg-bye');




insert into extradelivery(id,delivery_id,extra_type_id,runs) values (1,12,1,1);
insert into extradelivery(id,delivery_id,extra_type_id,runs) values (2,31,2,2);
insert into extradelivery(id,delivery_id,extra_type_id,runs) values (3,44,1,2);
insert into extradelivery(id,delivery_id,extra_type_id,runs) values (4,63,2,5);
insert into extradelivery(id,delivery_id,extra_type_id,runs) values (5,82,2,2);
insert into extradelivery(id,delivery_id,extra_type_id,runs) values (6,128,2,2);
insert into extradelivery(id,delivery_id,extra_type_id,runs) values (7,148,2,2);
insert into extradelivery(id,delivery_id,extra_type_id,runs) values (8,173,2,2);





























































		
		
		


	
	

