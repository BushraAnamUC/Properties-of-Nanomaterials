-- Use the MaterialsDB database
USE MaterialsDB;

-- Query 1: Correlation Between Particle Size and Thermal Conductivity
SELECT m.ParticleSize, p.PropertyValue AS ThermalConductivity
FROM Materials m
JOIN Properties p ON m.MaterialID = p.MaterialID
WHERE p.PropertyName = 'Thermal Conductivity';

-- Query 2: Impact of Doping on Electrical Conductivity
SELECT m.Doping, AVG(p.PropertyValue) AS AvgElectricalConductivity
FROM Materials m
JOIN Properties p ON m.MaterialID = p.MaterialID
WHERE p.PropertyName = 'Electrical Conductivity'
GROUP BY m.Doping;

-- Query 3: Properties Measured by Each Researcher
SELECT r.ResearcherName, m.MaterialName, p.PropertyName, p.PropertyValue, p.Units
FROM Researchers r
JOIN Experiments e ON r.ResearcherID = e.ResearcherID
JOIN Materials m ON e.MaterialID = m.MaterialID
JOIN Properties p ON m.MaterialID = p.MaterialID;

-- Query 4: Average Thermal Conductivity by Synthesis Method
SELECT m.SynthesisMethod, AVG(p.PropertyValue) AS AvgThermalConductivity
FROM Materials m
JOIN Properties p ON m.MaterialID = p.MaterialID
WHERE p.PropertyName = 'Thermal Conductivity'
GROUP BY m.SynthesisMethod;

-- Query 5: List of Experiments with Equipment Used
SELECT e.ExperimentID, m.MaterialName, e.Date, e.Equipment, e.Conditions
FROM Experiments e
JOIN Materials m ON e.MaterialID = m.MaterialID;

-- Query 6: Researcher Contributions to Each Material
SELECT m.MaterialName, r.ResearcherName, COUNT(e.ExperimentID) AS NumExperiments
FROM Materials m
JOIN Experiments e ON m.MaterialID = e.MaterialID
JOIN Researchers r ON e.ResearcherID = r.ResearcherID
GROUP BY m.MaterialName, r.ResearcherName;
