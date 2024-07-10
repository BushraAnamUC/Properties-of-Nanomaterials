-- Create the MaterialsDB database
CREATE DATABASE IF NOT EXISTS MaterialsDB;

-- Use the database
USE MaterialsDB;

-- Create the Materials table
CREATE TABLE IF NOT EXISTS Materials (
    MaterialID INT PRIMARY KEY,
    MaterialName VARCHAR(50),
    ParticleSize DECIMAL(10, 2),
    Doping VARCHAR(50),
    SynthesisMethod VARCHAR(50)
);

-- Create the Properties table
CREATE TABLE IF NOT EXISTS Properties (
    PropertyID INT PRIMARY KEY,
    MaterialID INT,
    PropertyName VARCHAR(50),
    PropertyValue DECIMAL(10, 2),
    Units VARCHAR(20),
    FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID)
);

-- Create the Experiments table
CREATE TABLE IF NOT EXISTS Experiments (
    ExperimentID INT PRIMARY KEY,
    MaterialID INT,
    Date DATE,
    ResearcherID INT,
    Equipment VARCHAR(50),
    Conditions TEXT,
    FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID),
    FOREIGN KEY (ResearcherID) REFERENCES Researchers(ResearcherID)
);

-- Create the Researchers table
CREATE TABLE IF NOT EXISTS Researchers (
    ResearcherID INT PRIMARY KEY,
    ResearcherName VARCHAR(50),
    Affiliation VARCHAR(100),
    ContactInfo VARCHAR(100)
);
