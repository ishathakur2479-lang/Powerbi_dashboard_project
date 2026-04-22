#PART 1
create database streaming_platform;

create table Users (user_id INT Primary Key, name VARCHAR(50)not null,
email VARCHAR(100) UNIQUE,country VARCHAR(50),signup_date DATE);

INSERT into Users(user_id, name, email, country, signup_date) VALUES
(1,'Rahul Sharma','rahul@gmail.com','India','2023-01-12'),
(2,'Priya Singh','priya@gmail.com','India','2023-02-10'),
(3,'John Miller','john@gmail.com','USA','2023-03-15'),
(4,'Aman Gupta','aman@gmail.com','India','2023-04-20'),
(5,'Emily Clark','emily@gmail.com','UK','2023-05-01'),
(6,'Rohit Verma','rohit@gmail.com','India','2023-06-12'),
(7,'Sophia Lee','sophia@gmail.com','Singapore','2023-07-14'),
(8,'Arjun Mehta','arjun@gmail.com','India','2023-08-02'),
(9,'David Brown','david@gmail.com','Canada','2023-09-09'),
(10,'Neha Kapoor','neha@gmail.com','India','2023-10-22');
INSERT into Users(user_id, name, email, country, signup_date) VALUES
(11,"Isha Thakur","isha@gmail.com","India","2023-04-21"),
(12,"Aman sharma","aman1@gmail.com","UK","2023-01-10"),
(13,"Karan mehta","karan3@gmail.com","India","2023-02-15"),
(14,"Simran Kaur","simmi@gmail.com","Canada","2023-06-20"),
(15,"Arjun Patel","arjun7@gmail.com","Singapore","2023-07-11");
insert into Users values(16,'Deepak Singh','deepak15@gmail.com','India','2024-02-11'),
(17,'Kavita Joshi','kavita16@gmail.com','India','2024-02-25'),
(18,'Nikhil Bansal','nikhil17@gmail.com','Canada','2024-03-05'),
(19,'Sonal Gupta','sonal18@gmail.com','India','2024-03-20'),
(20,'Tarun Malhotra','tarun19@gmail.com','UK','2024-04-01'),
(21,'Meena Kapoor','meena20@gmail.com','India','2024-04-15');

create table Subscription(sub_id INT Primary Key, user_id INT, plan_type VARCHAR(20),
price DECIMAL(6,2),start_date DATE, end_date DATE,foreign key(user_id) references Users(user_id));

INSERT INTO Subscription (sub_id, user_id, plan_type, price, start_date, end_date) VALUES
(1,1,'Basic',199,'2023-01-12','2023-02-12'),
(2,2,'Premium',499,'2023-02-10','2023-03-10'),
(3,3,'Standard',299,'2023-03-15','2023-04-15'),
(4,4,'Premium',499,'2023-04-20','2023-05-20'),
(5,5,'Basic',199,'2023-05-01','2023-06-01'),
(6,6,'Standard',299,'2023-06-12','2023-07-12'),
(7,7,'Premium',499,'2023-07-14','2023-08-14'),
(8,8,'Basic',199,'2023-08-02','2023-09-02'),
(9,9,'Standard',299,'2023-09-09','2023-10-09'),
(10,10,'Premium',499,'2023-10-22','2023-11-22');
INSERT INTO Subscription values(11,11,'Standard',299,'2024-02-01','2024-03-01'),
(12,12,'Premium',499,'2024-02-03','2024-03-03'),
(13,13,'Basic',199,'2024-02-05','2024-03-05'),
(14,14,'Standard',299,'2024-02-07','2024-03-07'),
(15,15,'Premium',499,'2024-02-10','2024-03-10'),
(16,16,'Basic',199,'2024-02-12','2024-03-12'),
(17,17,'Standard',299,'2024-02-15','2024-03-15'),
(18,18,'Premium',499,'2024-02-18','2024-03-18'),
(19,19,'Basic',199,'2024-02-20','2024-03-20'),
(20,20,'Standard',299,'2024-02-22','2024-03-22');

create table Movies(movie_id INT Primary Key,title VARCHAR(100),
genre VARCHAR(50),release_year INT,duration INT);

INSERT INTO Movies (movie_id, title, genre, release_year, duration) VALUES
(1,'The Last Kingdom','Action',2022,130),
(2,'Love Forever','Romance',2021,110),
(3,'Space Mission','Sci-Fi',2023,140),
(4,'Haunted Night','Horror',2020,95),
(5,'The Detective','Thriller',2022,125),
(6,'Comedy House','Comedy',2019,100),
(7,'Future World','Sci-Fi',2024,135),
(8,'Family Trip','Drama',2021,115),
(9,'War Zone','Action',2023,145),
(10,'Mystery Lake','Thriller',2020,120);
insert into Movies values(11,'Doctor Strange','Fantasy',2016,115),
(12,'Iron Man','Action',2008,126),
(13,'Avatar','Sci-Fi',2009,162),
(14,'The Batman','Action',2022,176),
(15,'Spiderman','Action',2021,148),
(16,'Encanto','Animation',2021,109),
(17,'Gravity','Sci-Fi',2013,91),
(18,'Coco','Animation',2017,105),
(19,'The Matrix','Sci-Fi',1999,136),
(20,'RRR','Action',2022,182);

create table Watch_History(watch_id INT Primary Key,
user_id INT , movie_id INT,watch_date DATE,watch_time INT,foreign key(user_id) references Users (user_id)
,foreign key(movie_id) references Movies(movie_id));

INSERT INTO Watch_History (watch_id, user_id, movie_id, watch_date, watch_time) VALUES
(1,1,3,'2024-01-10',120),
(2,2,1,'2024-01-12',130),
(3,3,5,'2024-01-14',100),
(4,4,2,'2024-01-16',90),
(5,5,4,'2024-01-18',80),
(6,6,3,'2024-01-19',110),
(7,7,7,'2024-01-20',135),
(8,8,9,'2024-01-22',140),
(9,9,6,'2024-01-23',95),
(10,10,10,'2024-01-25',120),
(11,1,5,'2024-02-01',110),
(12,2,3,'2024-02-03',125),
(13,4,7,'2024-02-04',130),
(14,6,9,'2024-02-05',140),
(15,8,1,'2024-02-06',120);
insert into watch_history values(16,6,17,'2024-03-16',80),
(17,10,5,'2024-03-17',100),
(18,1,7,'2024-03-18',110),
(19,2,9,'2024-03-19',150),
(20,3,1,'2024-03-20',105);

create table Ratings(rating_id INT Primary Key,user_id INT,movie_id INT,
rating INT CHECK (rating BETWEEN 1 AND 5),review_date DATE,foreign key(user_id) references Users (user_id),
foreign key(movie_id) references Movies(movie_id));

INSERT INTO Ratings (rating_id, user_id, movie_id, rating, review_date) VALUES
(1,1,3,5,'2024-01-11'),
(2,2,1,4,'2024-01-12'),
(3,3,5,4,'2024-01-15'),
(4,4,2,3,'2024-01-17'),
(5,5,4,5,'2024-01-19'),
(6,6,3,4,'2024-01-20'),
(7,7,7,5,'2024-01-21'),
(8,8,9,4,'2024-01-22'),
(9,9,6,3,'2024-01-23'),
(10,10,10,5,'2024-01-26');
insert into Ratings values
(11,11,12,4,'2024-03-12'),
(12,12,13,5,'2024-03-13'),
(13,13,14,4,'2024-03-14'),
(14,14,17,5,'2024-03-15'),
(15,15,8,3,'2024-03-16'),
(16,16,4,4,'2024-03-17'),
(17,17,6,5,'2024-03-18'),
(18,18,19,4,'2024-03-19'),
(19,19,2,5,'2024-03-20'),
(20,20,11,4,'2024-03-21');

#PART-2:-
#1. Display all users from India.
select * from Users where country="India";

#2. List all movies released after 2020.
select * from Movies where release_year >2020;

#3. Show users who have a Premium plan.
select * from subscription where plan_type="Premium";
 
#4. Find movies with duration greater than 120 minutes.
select * from movies where duration>120;

#5. Display top 10 latest movies.
select * from movies order by release_year desc limit 10;

#PART-3
#1. Count number of users per country.
select country,count(*) as total_users from Users group by country;

#2. Find total revenue generated from subscriptions.
select * from subscription;
select sum(price) as total_revenue from subscription;

#3. Calculate average movie duration per genre.
select * from movies;
select genre,avg(duration) as movie_duration from movies group by genre;

#4. Find total watch time per user.
select * from watch_history;
select user_id,sum(watch_time)as total_watch_time from watch_history group by user_id;

#5. Show top 5 most watched movies.
select movie_id,count(*) as watch_count from watch_history group by movie_id order by watch_count
 desc limit 5;
 
#PART 4
 #1. Display user name, movie title, and watch date.
 select u.name, m.title as movie_title,w.watch_date from users u join watch_history w on 
 u.user_id=w.user_id join movies m on w.movie_id=m.movie_id;
 
#2. Show movies watched by users from India.
select m.title, u.name,w.watch_date,u.country from users u join watch_history w on u.user_id=w.user_id
 join movies m on w.movie_id=m.movie_id having u.country="india";

#3. Display users and their subscription plans.
select u.name,s.plan_type from users u join subscription s on u.user_id=s.user_id;

#4. Find average rating for each movie.
select m.title,avg(rating) from ratings r join movies m on r.movie_id=m.movie_id group by m.title;

#5. Show movies with rating greater than 4
select m.title,avg(r.rating) as avg_rating from movies m join ratings r on m.movie_id=r.movie_id
 group by m.title having avg(r.rating) >=4;

#Part 5
#1. Find movies with rating higher than average rating.
select m.title,r.rating from movies m join ratings r on m.movie_id=r.movie_id where r.rating>
(select avg(rating) from ratings);

#2. Find users who watched more movies than the average user.
select * from watch_history;
select u.name from users u join watch_history w on u.user_id=w.user_id group by u.name,u.user_id
having count(w.movie_id)>(select avg(movie_count) from (select count(movie_id) as movie_count from
watch_history group by user_id)as avg_table);

#3. Find the most watched genre.
select m.genre,count(w.movie_id)as watch_count from movies m join watch_history w on m.movie_id=
w.movie_id group by m.genre order by watch_count desc limit 1;
 
#4. Find movies watched by more than 5 users.
select m.title,count(w.user_id) as total_users from movies m join watch_history w on m.movie_id=
w.movie_id group by m.movie_id,m.title having count(w.user_id)>5;

#Part 6
#1. Rank movies based on average rating.
select m.title,avg(r.rating)as avg_rating, rank() over(order by avg(r.rating)desc) as movie_rank 
from movies m join ratings r on m.movie_id=r.movie_id group by m.movie_id,m.title;

#2. Find top movie per genre.

select * from(select m.genre,m.title,avg(r.rating) as avg_rating,rank() 
over (partition by m.genre order by avg(r.rating) desc) as rnk from movies m join ratings r on m.movie_id
=r.movie_id group by m.movie_id,m.title,m.genre)t where rnk=1;

#3. Calculate running total of revenue by subscription date.
select * from subscription;
select start_date,sum(price) as daily_revenue,sum(sum(price))over (order by start_date) as running_total
from subscription group by start_date;

#PART 7
#1. Create a Stored Procedure to return movies by genre.
delimiter //
create procedure Moviesbygenre(in genre varchar(50))
begin
select * from movies where genre=genre;
end //

delimiter ;
call Moviesbygenre ("Action");

#Display user name, movie title, and rating.
 select u.name, m.title as movie_title,r.rating from users u join ratings r on 
 u.user_id=r.user_id join movies m on m.movie_id=r.movie_id;

#Show users who watched movies but did not rate them.
select distinct u.name from users u join watch_history w  on u.user_id=w.user_id left join ratings r on 
w.user_id=r.user_id and w.movie_id=r.movie_id where r.rating is null;


#Find movies that have never been watched.
select m.title from movies m left join watch_history w on m.movie_id=w.movie_id where w.movie_id is null;

#Display user name, subscription plan, and price.
select u.name,s.plan_type,s.price from users u join subscription s on u.user_id=s.user_id;

#Show top 5 users who watched the most movies.
select u.name,count(w.movie_id) as total_movies from users u join watch_history w on u.user_id=
w.user_id group by u.user_id,u.name order by total_movies desc limit 5;

#Analytical Queries
#1.	Find the most popular genre based on watch count.
select m.genre,count(m.movie_id) as watch_count from movies m join watch_history w on m.movie_id
=w.movie_id group by m.genre order by watch_count desc limit 2;

#2.	Show top 3 movies with highest total watch time.
select m.title,sum(w.watch_time) as total_watch_time from movies m join watch_history w on m.movie_id
=w.movie_id group by m.movie_id,m.title order by total_watch_time desc limit 3;

#3.	Find the user who generated the highest subscription revenue.
select * from subscription;
select u.name,sum(s.price)as total_revenue from users u join subscription s on u.user_id=s.user_id
 group by u.user_id=s.user_id,u.name order by total_revenue desc limit 1;
 
#4.	Calculate percentage of movies that received ratings.
select count(distinct r.movie_id)*100.0/count(distinct m.movie_id) as percentage from movies m 
left join ratings r on m.movie_id=r.movie_id;

#5.	Find movies watched in more than one country.
select m.title from movies m join watch_history w on m.movie_id=w.movie_id join users u on w.user_id=
u.user_id group by m.movie_id,m.title having count(distinct u.country)>1;

