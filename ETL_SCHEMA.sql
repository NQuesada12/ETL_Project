DROP DATABASE IF EXISTS ETL_db;
CREATE DATABASE ETL_db;

USE ETL_db;

CREATE TABLE traffic_cameras (
	ID INT AUTO_INCREMENT NOT NULL,
	Camera_ID INT,
    Turn_on_Date TEXT,
    Location_Name TEXT,
    Longitude FLOAT,   
    Latitude FLOAT,
    PRIMARY KEY (ID)

);

CREATE TABLE traffic_incidents (
	ID INT AUTO_INCREMENT NOT NULL,
	Traffic_Report_ID TEXT,
    Published_Date TEXT,
    Issue_Reported TEXT,
    Longitude DOUBLE,
    Latitude DOUBLE,
    Address TEXT,
    PRIMARY KEY (ID)
    
);

SELECT * FROM traffic_cameras;

SELECT * FROM traffic_incidents;

-- Join tables
-- SELECT traffic_cameras.Camera_ID, traffic_cameras.Turn_on_Date, traffic_cameras.Location_Name, 
-- traffic_cameras.Longitude, traffic_cameras.Latitude, traffic_incidents.Address, traffic_incidents.Published_Date, 
-- traffic_incidents.Issue_Reported, traffic_incidents.Longitude, traffic_incidents.Latitude, traffic_incidents.Address
-- FROM traffic_incidents
-- INNER JOIN traffic_cameras ON traffic_cameras.Longitude = traffic_incidents.Longitude;
-- INNER JOIN traffic_incidents ON traffic_incidents.Latitude = traffic_cameras.Latitude;


SELECT traffic_cameras.Camera_ID, traffic_cameras.Turn_on_Date, traffic_cameras.Location_Name, 
traffic_cameras.Longitude, traffic_cameras.Latitude, traffic_incidents.Address, traffic_incidents.Published_Date, 
traffic_incidents.Issue_Reported, traffic_incidents.Longitude, traffic_incidents.Latitude, traffic_incidents.Address
FROM traffic_cameras, traffic_incidents
WHERE traffic_cameras.Longitude = traffic_incidents.Longitude AND traffic_cameras.Latitude = traffic_incidents.Latitude;


