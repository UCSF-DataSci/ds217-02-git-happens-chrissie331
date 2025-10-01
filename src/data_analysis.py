# Read CSV file line by line 
def load_students(filename = 'data/students.csv'):
    with open(filename, 'r') as file:
        lines = file.readlines() [1:]
    students = []
    for line in lines:
        fields = line.strip().split(',')
        fields[1] = int(fields[1])
        fields[2] = int(fields[2])
        students.append(fields)
    return students 

# Calculate average grade 
def calculate_average_grade(students):
    total = 0 
    for student in students:
        total += student[2]
    average = total /len(students)
    return average 

# Count number of math students 
def count_math_students(students):
    count = 0 
    for student in students:
        if student[3]. lower() == 'math':
            count += 1
    return count

# Generate report 
def generate_report(students):
    average_grade = calculate_average_grade(students)
    math_students = count_math_students(students)
    total_students = len(students)

    report = f"""
Total students = {total_students}
Average grade = {average_grade: .1f}
Number of math students = {math_students}
"""
    return report 

# Save report to file 
def save_report(report, filename = 'output/analysis_report.txt'):
    with open(filename, 'w') as file:
        file.write(report)
    print(f'Report saved to {filename}')

def main():
    students = load_students()
    report = generate_report(students)
    print(report)
    save_report(report)

if __name__ == '__main__':
    main()

