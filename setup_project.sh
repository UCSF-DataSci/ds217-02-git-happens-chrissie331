#!/bin/bash

mkdir -p src data output
echo "making directory"

touch .gitignore 
touch requirements.txt 
echo "files created"

cat > data/student.csv << 'EOF'
"Name" : "Liz", "Age" : 23, "Grade" : 50, "Subject" : "Math"
"Name" : "Emma", "Age" : 23, "Grade" : 100, "Subject" : "Art"
"Name" : "Rebekah", "Age" : 22, "Grade" : 90, "Subject" : "History"
"Name" : "Chrissie", "Age" : 23, "Grade" : 95, "Subject" : "Biology"
"Name" : "Debbie", "Age" : 21, "Grade" : 88, "Subject" : "Physics"
"Name" : "Melody", "Age" : 25, "Grade" : 79, "Subject" : "English"
"Name" : "Sara", "Age" : 24, "Grade" : 80, "Subject" : "Organic Chemistry"
"Name" : "Will", "Age" : 26, "Grade" : 89, "Subject" : "Social Studies"
EOF

cat > src/data_analysis.py << 'EOF'
EOF

cat > src/data_analysis_functions.py << 'EOF'
EOF
echo "Data analysis functions script placeholder"


chmod +x setup_project.sh













