# Load the CSV file using generic loader
def load_data(filename = 'data/students.csv'):
    with open(filename, 'r') as file:
        lines = file.readlines() [1:]
    return lines 

# Load CSV data using same technique as basic script
def load_csv(filename = 'data/students.csv'):
    lines = load_data(filename)
    students = []
    for line in lines:
        fields = line.strip().split(',')
        name = fields[0]
        age = int(fields[1])
        grade = int(fields[2])
        subject = fields[3]
        students.append({'name': name, 'age': age, 'grade': grade, 'subject': subject})
    return students

# Analysis of student.csv data
def analyze_data(students):
    grades = [student['grade'] for student in students]
    subjects = [student['subject'] for student in students]

    # Calculating max and min grades
    max_grade = max(grades)
    min_grade = min(grades)

    # Count students by subject 
    subject_count = {}
    for subject in subjects:
        subject_count[subject] = subject_count.get(subject, 0) + 1
    
    # Grade Distribution
    grade_distribution = analyze_grade_distribution(grades)

    results = {
        'max_grade': max_grade,
        'min_grade': min_grade,
        'subject_count': subject_count,
        'grade_distribution': grade_distribution
    }

    return results

# Create grade distribution 
def analyze_grade_distribution(grades):
    grade_distribution = {'A': 0, 'B': 0, 'C': 0, 'D': 0, 'F': 0}
    for grade in grades:
        if grade >= 90:
            grade_distribution['A'] += 1
        elif grade >= 80:
            grade_distribution['B'] += 1
        elif grade >= 70:
            grade_distribution['C'] += 1
        elif grade >= 60:
            grade_distribution['D'] += 1
        else: 
            grade_distribution['F'] += 1
    
    return grade_distribution

# Save detailed report 
def save_results(results, filename = 'output/analysis_report.txt'):
    with open(filename, 'a') as file:
        file.write(f"Highest Grade: {results['max_grade']}\n")
        file.write(f"Lowest Grade: {results['min_grade']}\n")
        file.write("Number of Students per Subject:\n")
        for subject, count in results['subject_count'].items():
            file.write(f"  {subject}: {count}\n")
        
        file.write("Grade Distribution:\n")
        total_students = sum(results['grade_distribution'].values())
        for range_label, count in results['grade_distribution'].items():
            percent = (count / total_students) * 100
            file.write(f"  {range_label}: {percent:.1f}%\n")
    
    print(f"Results appended to {filename}")

def main():
    input_file = 'data/students.csv'
    output_file = 'output/analysis_report.txt'
    students = load_csv(input_file)
    results = analyze_data(students)
    save_results(results, output_file)

if __name__ == '__main__':
    main()

       