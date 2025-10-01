#!/bin/bash

mkdir -p src data output
echo "making directory"

touch .gitignore 
touch requirements.txt 
echo "files created"

cat > data/student.csv << 'EOF'
name,age,grade,subject
Alice,23,50,Math
Emma,23,100,Art
Rebekah,22,90,History
Chrissie,23,95,Biology
Debbie,21,88,Physics
Melody,25,79,English
Sara,24,80,Organic Chemistry
Will,26,89,Social Studies
EOF

cat > src/data_analysis.py << 'EOF'
def load_students(filename):
    """Read student data from a CSV file."""
    #TODO: Open the file, read lines, skip header
    #TODO: Split each line by commas
    #TODO: Return list of student data
    pass

def calculate_average_grade(students):
    """Calculate average grade."""
    # TODO: Sum all grades
    # TODO: Divide by number of students
    pass

def count_math_students(students):
    """Count students in Math."""
    # TODO: Count students where subject is Math
    pass

def generate_report(total, average, math_count):
    """Generate report string."""
    # TODO: Create formatted string with results
    # TODO: Use f-strings with .1f for decimals
    pass

def save_report(report, filename):
    """Save report to file."""
    # TODO: Create output directory if needed
    # TODO: Write report to file
    pass

def main():
    # TODO: Load data
    # TODO: Calculate statistics
    # TODO: Generate and save report
    pass

if __name__ == "__main__":
    main()
EOF

cat > src/data_analysis_functions.py << 'EOF'
def load_data(filename):
    """Load data from CSV file."""
    # TODO: Check file extension
    # TODO: Call appropriate loader
    pass

def load_csv(filename):
    """Load CSV data."""
    # TODO: Same technique as basic script
    pass

def analyze_data(students):
    """Analyze student data."""
    # TODO: Calculate multiple statistics
    # TODO: Return dictionary of results
    pass

def analyze_grade_distribution(grades):
    """Count grades by letter grade."""
    # TODO: Count A (90-100), B (80-89), etc.
    pass

def save_results(results, filename):
    """Save detailed results."""
    # TODO: Format and write comprehensive report
    pass

def main():
    # TODO: Orchestrate the analysis
    pass

if __name__ == "__main__":
    main()
EOF

echo "Data analysis functions script placeholder"


chmod +x setup_project.sh













