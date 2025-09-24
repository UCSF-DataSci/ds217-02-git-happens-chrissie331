#!/bin/bash

mkdir -p src data output
echo "making directory"

touch .gitignore 
touch requirements.txt 
echo "files created"

cat > data/student.csv << 'EOF'
Liz 23, 50, Math 
Emma 23, 100, Art 
Rebekah 22, 90, History 
Chrissie 23, 95, Biology 
Debbie 21, 88, Physics 
Melody 25, 79, English 
Sara 24, 80, Organic Chemistry 
Will 26, 89, Social Studies 
EOF

cat > src/data_analysis.py << 'EOF'
EOF
echo "Data analysis script placeholder"

cat > src/data_analysis_functions.py << 'EOF'
EOF
echo "Data analysis functions script placeholder"


chmod +x setup_project.sh













