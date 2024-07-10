# **Materials Science Data Analysis: Properties of Nanomaterials**

## **Overview**

This project focuses on analyzing and visualizing properties of nanomaterials to understand trends, correlations, and key properties influencing material performance. It leverages SQL for data querying and Python for data analysis and visualization.

## **Table of Contents**

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Setup and Installation](#setup-and-installation)
- [Database Schema](#database-schema)
- [Sample Data](#sample-data)
- [Data Analysis](#data-analysis)
- [Visualizations](#visualizations)
- [How to Use](#how-to-use)
- [Contributing](#contributing)

## **Project Structure**


**MaterialsScienceDataAnalysis/** 
├── data/ 
│   ├── materials.csv
│   ├── properties.csv
│   ├── experiments.csv
│   ├── researchers.csv
├── notebooks/
│   ├── data_analysis.ipynb
├── sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── analysis_queries.sql
├── visualizations/
│   ├── particle_size_vs_thermal_conductivity.png
│   ├── doping_vs_electrical_conductivity.png
├── MaterialsDB
├── README.md



## **Setup and Installation**

### **Prerequisites**

- Python 3.x
- SQLite3 or MySQL (depending on your preference for the database)
- Pandas, Matplotlib, and Seaborn Python libraries

### **Installation**


 **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/MaterialsScienceDataAnalysis.git
   cd MaterialsScienceDataAnalysis
```

### **Install the required Python packages:**

```bash
pip install pandas matplotlib seaborn sqlite3

```

## **Set up the database:**

**If using SQLite:**

```bash
Copy code
sqlite3 SalesDB.db < sql/create_tables.sql
sqlite3 SalesDB.db < sql/insert_data.sql
```

If using MySQL:

**sql**
``` bash
   Copy code
   mysql -u username -p SalesDB < sql/create_tables.sql
   mysql -u username -p SalesDB < sql/insert_data.sql
   Database Schema
```


## **Tables and Relationships:**

Materials: Stores information about different nanomaterials.

-MaterialID: Unique identifier for each material.

-MaterialName: Name of the material.

-ParticleSize: Size of the particles in nanometers.

-Doping: Doping element used.

-SynthesisMethod: Method used for synthesis.

-Properties: Stores properties of the materials.

-PropertyID: Unique identifier for each property record.

-MaterialID: Identifier linking to the material.

-PropertyName: Name of the property.

-PropertyValue: Value of the property.

-Units: Units of the property value.

-Experiments: Stores details of experiments conducted on the materials.

-ExperimentID: Unique identifier for each experiment.

-MaterialID: Identifier linking to the material.

-Date: Date of the experiment.

-ResearcherID: Identifier linking to the researcher.

-Equipment: Equipment used in the experiment.

-Conditions: Conditions under which the experiment was conducted.

-Researchers: Stores information about researchers.

-ResearcherID: Unique identifier for each researcher.

-ResearcherName: Name of the researcher.

-Affiliation: Affiliation of the researcher.

-ContactInfo: Contact information of the researcher.

## **Sample Data**

Sample data is provided in the sql/insert_data.sql file to populate the database tables with initial records.

##  **Data Analysis**

SQL queries are used to perform various analyses, including:

Correlation between particle size and thermal conductivity.
Impact of doping on electrical conductivity.
Properties measured by each researcher.
Queries are provided in the sql/analysis_queries.sql file.


## **Visualizations**

Python scripts in the notebooks/data_analysis.ipynb notebook demonstrate how to visualize the data using Matplotlib and Seaborn.

Example Visualizations:
Particle Size vs Thermal Conductivity

Impact of Doping on Electrical Conductivity

## **How to Use**

Ensure the database is set up and populated with data.
Open the Jupyter Notebook notebooks/data_analysis.ipynb.
Execute the cells to perform data analysis and generate visualizations.
Contributing

**Contributions are welcome! Please fork the repository and create a pull request with your changes.**









