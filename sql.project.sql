#database---> companyy


create table mediciness (medicine_id varchar(10), medicine_name varchar(40),category varchar (20),
 price_per_unit float, stock_quantity int, expiry_date date);
insert into mediciness values("M001","Paracetamol","Analgesic",1.50,200,"2026-03-15"),
("M002", "Amoxicillin", "Antibiotic", 3.20, 150, "2025-12-01"),
("M003", "Cetirizine", "Antihistamine", 2.00, 80 ,"2024-11-30"),
("M004", "Metformin", "Antidiabetic", 5.00, 50, "2027-05-20"),
("M005", "Ibuprofen", "Analgesic", 1.75, 0,"2024-08-01");
insert into mediciness values("M006","dolo","pain relief",22.00,110,"2026-07-08"),("M007","calpol syrup",
"pediatric",35.00,95,"2025-09-18"),("M008","vitamin c","supplement",20.00,180,"2028-02-12");

create table doctors(doctor_id varchar(10) primary key, name varchar(50), specialization varchar(50),
hospital_name varchar(50));
insert into doctors value("D101", "Dr. Anjali Verma", "General","City Care Hospital"),
("D102", "Dr. Rakesh Nair","Pediatrics", "Rainbow Clinic"),
("D103", "Dr. Kavita Shah", "ENT", "Health First Hospital");
insert into doctors values("D104","Dr. Rohan Mehta","cardiologist","apollo hospital"),("D105","Dr. 
Neha Verma","dermatologist","fortis hospital"),("D106","Dr. Arjun patel","orthopedic surgeon","max 
healthcare"),("D107","Dr. priya nanda","pediatrician","aiims"),("D108","Dr. Karan kapoor","neurologist"
,"medanta hospital"),("D109","Dr rajat verma","ent","blk hospital");

create table patientss(patient_id varchar(10), name varchar(50),gender varchar(10), dob date,
city varchar(30));
drop table patients;
insert into patientss values("P001", "Rohit Mehra", "Male", "1985-06-15", "Delhi"),
("P002", "Neha Sharma", "Female", "1992-09-21", "Mumbai"),
("P003", "Suresh Iyer", "Male" ,"1978-12-03", "Bengaluru");
insert into patientss values( "P004", "rishi Iyer", "Male" ,"1977-12-04", "Bengaluru"),
("P005", "Surender", "Male" ,"1975-12-03", "gujarat");
insert into patientss values ("P009", "harmanpreet", "female" ,"1978-12-03", "Bengaluru"),
("P008", "Saresh Iyer", "Male" ,"1978-12-03", "mumbai");

create table prescriptionn(prescription_detail_id varchar(10)primary key,doctor_id varchar(10),
patient_id varchar(10),prescription_date date, diagnosis varchar(50));
insert into prescriptionn values("PR001","D101","P001","2024-10-12","Fever"),
("PR002","D102","P002","2024-11-05","Cold"),
("PR003","D101","P003","2025-01-18","Diabetes");
insert into prescriptionn values("PR004","D103","P004","2023-01-26","Diabetes"),
("PR005","D104","P005","2025-10-22","Bp"),("PR006","D102","P006","2025-05-05","cough");

create table prescription_details(prescription_detail_id varchar(10)primary key,prescription_id 
varchar(10),medicine_id varchar(10), dosage varchar(15), duration int);
insert into prescription_details values("PD001", "PR001", "M001", "2 tablets/day", 5),
("PD002", "PR002", "M003", "1 tablet/day", 3),
("PD003", "PR003", "M004", "1 tablet/day", 30);
insert into prescription_details (prescription_detail_id,prescription_id,dosage,duration) values
("PD004","PR004","3 tablets/day",10);

create table sales(sale_id varchar(10),patient_id varchar(10),medicine_id varchar(10),quantity int,
sale_date date,payment_method varchar(40));
insert into sales values("S001", "P001", "M001", 10, "2024-10-12", "Cash"),
("S002", "P002", "M003", 5, "2024-11-05", "Card"),
("S003", "P003", "M004", 30, "2025-01-18", "UPI");
insert into sales values("S004", "P004", "M002", 15, "2024-01-18", "UPI"),
("S005", "P005", "M005", 34, "2023-11-14", "card"),("S006", "P006", "M006", 33, "2023-12-12", "card");

create table suppliers(supplier_id varchar(10),supplier_name varchar(40),contact_number char(10),
location varchar(30));
insert into suppliers values("S001", "Medico Distributors", "9876543210", "Mumbai"),
("S002", "HealthPlus Pharma", "9123456780", "Delhi"),
("S003", "LifeCare Suppliers", "9988776655", "Bengaluru"),
("S004", "Apollo Wholesalers", "9001122334", "Chennai"),
("S005", "Zenith Pharma Corp", "8866442200", "Hyderabad");


create table restock_alertss (alert_id varchar(10), medicine_id varchar(20) primary key, alert_date 
date, note varchar(250));
insert into restock_alertss values("R001","M001","2023-08-02","stock running low"),("R001","M002",
"2024-09-09","urgent: expiring soon"),("R003","M003","2024-10-19","last batch remaining"),("R004",
"M004","2025-10-22","reorder immediately"),("R005","M005","2025-10-24","high sales, restock needed soon")
,("R006","M006","2023-02-01","supplier delay expected"),("R007","M007","2022-08-12","seasonal demand increasing"),
("R008","M008","2023-12-12","check expiry date,before restock") ;

create table deleted_prescriptionn (prescription_id varchar(10), doctor_id varchar(10), patient_id 
varchar(10), prescription_date date, deletion_time time);
DROP TABLE DELETED_PRESCRIPTION;
insert into deleted_prescriptionn values("PR001","D101","P001","2024-10-12","12:45:00");
insert into deleted_prescriptionn values("PR002","D102","P002","2023-09-08","12:20:00"),
("PR003","D103","P003","2023-12-12","11:11:00"), ("PR004","D104","P004","2022-01-21","10:10:00"),
("PR005","D105","P005","2020-01-01","11:30:00"), ("PR006","D106","P006","2025-01-21","12:10:00");

create table expired_medicine_log(log_id varchar(10), medicine_id varchar(10), expired_on date,
logged_on date);
insert into expired_medicine_log values("L001","M101","2025-08-10","2025-08-12"),
("L002","M102","2024-09-10","2025-09-12"),("L003","M103","2023-07-21","2025-08-18"),
("L004","M104","2019-09-10","2024-10-21");


#QUESTIONS:
#1 list medicines that are below minimum stock level(eg stock_quantity<10).
SELECT medicine_id,medicine_name FROM mediciness where stock_quantity<10;

#2 identify medicines that have expired as of today.
select medicine_id,medicine_name,expiry_date FROM mediciness where expiry_date < current_date;

#3 retrive the top 3 most sold medicines by total quantity
select m.medicine_id,m.medicine_name,sum(s.quantity) as total_sold from mediciness m join sales s on
m.medicine_id=s.medicine_id group by m.medicine_id,m.medicine_name order by total_sold desc limit 3;

select * from mediciness;
select * from sales;
select * from doctors;
#4 calculate total revenue generated per medicine
select m.medicine_id,m.medicine_name, sum(s.quantity*m.price_per_unit) as total_revenue
 from mediciness m join sales s on m.medicine_id=s.medicine_id group by m.medicine_id,m.medicine_name;

#5 find the no. of distinct patients each doctor as treated.
select doctor_id, COUNT(distinct patient_id) as distinct_patients from prescriptionn group by doctor_id;

#6 show daily sales total for the last 30 days.(pending total amount X)
select* from sales;
select date(sale_date) as sale_day, count(*) as total_sales,sum(quantity)as
total_quantity from sales where sale_date>=curdate()-interval 30 day group by date(sale_date) order by
 sale_day;

#7 identify medicines that have never been sold but never prescribed.
select distinct m.medicine_id,m.medicine_name from mediciness m join prescriptionn  on m.medicine_id
=medicine_id where m.medicine_id not in (select distinct medicine_id from sales);

select * from prescriptionn;

#8 retrive the no. of prescription issued by each doctor in the last 6 months.
select doctor_id, count(prescription_detail_id) as total_prescription from prescriptionn where 
prescription_date>= curdate()-interval 6 month group by doctor_id;

#9 find medicines that are sold but never prescribed.
select m.medicine_id, m.medicine_name from mediciness m where m.medicine_id in (select distinct
medicine_id from sales) and m.medicine_id not in (select distinct medicine_id from sales s join prescriptionn p
on s.patient_id=p.patient_id);

#10 list prescription that contain more than 3 different medicines
select s.patient_id, s.sale_date, count(distinct s.medicine_id) as total_medicines from sales s group by 
s.patient_id,s.sale_date having count(distinct s.medicine_id)>3;
select * from sales;
select * from patientss;

#11 find patients who have purchased medicines from more than one city
select p.patient_id, p.name, count(distinct city) as city_count from patientss p join sales s on
 s.patient_id=p.patient_id group by p.patient_id, p.name having count(distinct city)>2;

select distinct city from patientss;

# 12 list suppliers suppliying medicines that are currently out of stock.
select s.supplier_id,s.supplier_name,m.medicine_name,m.stock_quantity from suppliers s join 
mediciness m on s.supplier_id=m.supplier_id where stock_quantity=0;
select* from mediciness;
select* from suppliers;
select* from prescriptionn;

alter table prescriptionn add medicine_id varchar(15);
set sql_safe_updates=0;
update prescriptionn set medicine_id="M001" where diagnosis="fever";
update prescriptionn set medicine_id="M003" where diagnosis="cold";
update prescriptionn set medicine_id="M004" where diagnosis="diabetes";
update prescriptionn set medicine_id="M005" where diagnosis="BP";
update prescriptionn set medicine_id="M007" where diagnosis="cough";

#13 find the most commonly prescribed medicine for each diagonosis.
select p.diagnosis,m.medicine_name, count(*) as total_prescribed from prescriptionn p join 
mediciness m on p.medicine_id=m.medicine_id group by p.diagnosis,m.medicine_name;

#14. show total quantity of each medicine sold in each city.
select * from patientss;
select * from mediciness;
alter table patientss add medicine_id varchar(15);

select m.medicine_name,p.city, sum(s.quantity) as total_quantity_sold from sales s join mediciness m on
s.medicine_id=m.medicine_id join patientss p on s.patient_id=p.patient_id group by m.medicine_name,p.city
order by p.city,m.medicine_name;
select * from sales;

#15. identify doctors who have never prescribed any medicine.
select d.name,d.doctor_id from doctors d left join prescriptionn p
on d.doctor_id=p.doctor_id left join prescription_details pd on p.prescription_detail_id=pd.prescription_detail_id
where pd.medicine_id is null; 

#16. get a list of medicine that are both prescribed and sold on the same day to the same patient .
select p.patient_id,m.medicine_name,pd.medicine_id,p.prescription_date as date from prescriptionn p join prescription_details
pd on p.prescription_detail_id=pd.prescription_detail_id join sales s on p.patient_id=s.patient_id and
pd.medicine_id=s.medicine_id and p.prescription_date=s.sale_date join mediciness m on pd.medicine_id=
m.medicine_id;

#17. identify patients who purchased a medicine more than 15 days after it was prescribed.


#18. find doctors who prescribed the most medicine overall.
select d.doctor_id,d.name as doctor_name, count(pd.medicine_id)as total_medicine_prescribed from doctors d
join prescriptionn p on d.doctor_id=p.doctor_id join prescription_details pd on p.prescription_detail_id
=pd.prescription_detail_id group by d.doctor_id,d.name order by total_medicine_prescribed desc limit 1;

#19. identify patients who purchased a medicine not prescribed to them.
select distinct pa.patient_id,pa.name as patient_name from sales s join patientss pa on
s.patient_id=pa.patient_id  where not exists (select 1 from 
prescriptionn p join prescription_details pd on p.prescription_detail_id=pd.prescription_detail_id where
p.patient_id=s.patient_id and pd.medicine_id=s.medicine_id);
