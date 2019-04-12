CREATE DATABASE ETL_db;
USE ETL_db;

CREATE TABLE traffic_cameras (
	Camera ID INT,
    Turn on Date, TEXT,
    Location Name TEXT,
    Location TEXT,
    Longitude FLOAT,   
    Latitude FLOAT PRIMARY KEY,

);