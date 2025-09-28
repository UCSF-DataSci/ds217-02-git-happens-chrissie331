# Datasci 217 Week 2 Assignment: Git Happens 

## Project Overview 
This project allows us to understand the integration of Git workflows, CLI automation, and Python data processing. 

## Project Structure 
DS217-02-Git-Happens/ |----README.MD---|----.gitignore----|---requirements.txt----|----setup_project.sh----|---src/---|data_analysis.py---|---data_analysis_functions.py---|---data/---|---student.csv---|---output/---|---analysis_report.txt

## Features
- **Project Scaffold**: Automated project setup with setup_project.sh
- **Data Processing**: Python scripts for student grade analysis using the student.csv file. Created a text output from both scripts. 
- **Git Workflow**: Feature branch development and merging back to main branch

## Usage
1. Run ./setup_project.sh to create project structure
2. Execute python 'src/data_analysis.py' for basic analysis 
3. Run python 'src/data_analysis_functions.py' for advanced analysis and to demonstrate modular design 

## Git Workflow 
| Branch | Purpose | Status |
|--------|---------|--------|
| main | Production code | Active |
| feature/project-scaffold | CLI Automation | Merged |
| feature/data-processing | Python analysis | Merged |