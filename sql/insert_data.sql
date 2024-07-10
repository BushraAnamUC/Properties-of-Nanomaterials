-- Use the MaterialsDB database
USE MaterialseDB;

-- Insert sample data into the Materials table
INSERT INTO Materials (MaterialID, MaterialName, ParticleSize, Doping, SynthesisMethod) VALUES
(1, 'Nanomaterial A', 10.5, 'Dopant X', 'Sol-Gel'),
(2, 'Nanomaterial B', 15.0, 'Dopant Y', 'Hydrothermal'),
(3, 'Nanomaterial C', 8.2, 'None', 'Ball Milling');

-- Insert sample data into the Properties table
INSERT INTO Properties (PropertyID, MaterialID, PropertyName, PropertyValue, Units) VALUES
(1, 1, 'Thermal Conductivity', 200.5, 'W/mK'),
(2, 1, 'Electrical Conductivity', 5.2, 'S/m'),
(3, 2, 'Thermal Conductivity', 180.0, 'W/mK'),
(4, 2, 'Electrical Conductivity', 4.8, 'S/m'),
(5, 3, 'Thermal Conductivity', 220.0, 'W/mK'),
(6, 3, 'Electrical Conductivity', 6.0, 'S/m');

-- Insert sample data into the Experiments table
INSERT INTO Experiments (ExperimentID, MaterialID, Date, ResearcherID, Equipment, Conditions) VALUES
(1, 1, '2023-01-15', 1, 'XRD', 'Ambient'),
(2, 2, '2023-02-10', 2, 'SEM', 'Vacuum'),
(3, 3, '2023-03-05', 3, 'TEM', 'Cryogenic');

-- Insert sample data into the Researchers table
INSERT INTO Researchers (ResearcherID, ResearcherName, Affiliation, ContactInfo) VALUES
(1, 'Dr. Alice Smith', 'University of Canterbury', 'alice.smith@canterbury.ac.nz'),
(2, 'Dr. Bob Johnson', 'Purdue University', 'bob.johnson@purdue.edu'),
(3, 'Dr. Charlie Brown', 'MIT', 'charlie.brown@mit.edu');
