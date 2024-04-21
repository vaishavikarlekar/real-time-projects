create schema cars;
use cars;
-- READ DATA-- 
select * FROM vaishu.`car details from car dekho`;
 -- Total Cars: To get a count of total records --
 select count(*) from vaishu.`car details from car dekho`;
-- The manger asked the employee How many cars will be available in 2019 ?--
select count(*)  from vaishu.`car details from car dekho` where year = 2019;
-- the manager asked the employee how many cars is available in 2017,2018,2019--
select count(*)  from vaishu.`car details from car dekho` where year = 2017; #466
select count(*)  from vaishu.`car details from car dekho` where year = 2018; #366
select count(*)  from vaishu.`car details from car dekho` where year = 2019; #195
-- the manager asked the emplyoe give me report of how many cars is availble in 2007,2010,2011,2012 --
-- group By --
select count(*) from vaishu.`car details from car dekho` where year in (2007,2010,2011,2012) group by year;
-- client asked me to print the total of all cars by year. I don't see all the details --
select year, count(*) from vaishu.`car details from car dekho` group by year;
--  client asked to car dealer agent How many diesel cars will there be in 2012  --
select count(*) from vaishu.`car details from car dekho` where year =2012 and fuel = "diesel" ;
-- client requested a car dealer agent How many petrol cars wil there be in 2019?  --
select count(*) from vaishu.`car details from car dekho` where year =2012 and fuel = "petrol" ;
-- The manager told the employee to give a print all the fuel cars (petrol,diesel,and CNG) come by all year --
select year, count(*) from vaishu.`car details from car dekho` where fuel = "petrol" group by year;
select year, count(*) from vaishu.`car details from car dekho` where fuel = "diesel" group by year;
select year, count(*) from vaishu.`car details from car dekho` where fuel = "CNG" group by year;
-- manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
select year, count(*) from vaishu.`car details from car dekho`group by year having count(*)>100;
-- THe manager said to the employee all cars count details between 2011 and 2014 we need a complere list;
select count(*) from vaishu.`car details from car dekho` where year between 2011 and 2014; 
-- THe manager said to the employee all cars detils between 2007 and 2008 we need a complere list --
select * from vaishu.`car details from car dekho` where year between 2007 and 2008; 















