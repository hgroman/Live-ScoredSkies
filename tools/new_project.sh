#!/bin/bash
# new_project.sh — Create new project folder with standardized structure
# Usage: ./new_project.sh <ProjectName>

# Get current system time for documentation
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S %Z")

# Check if project name was provided
if [[ -z "$1" ]]; then
  echo "Please provide a project name. Usage: ./new_project.sh <ProjectName>"
  exit 1
fi

# Set project name and directory
PROJECT_NAME="$1"
PROJECT_DIR="projects/$PROJECT_NAME"

# Check if project already exists
if [[ -d "$PROJECT_DIR" ]]; then
  echo "Error: Project '$PROJECT_NAME' already exists."
  exit 1
fi

# Create project directory structure
echo "Creating project structure for '$PROJECT_NAME'..."
mkdir -p "$PROJECT_DIR/01_Video/Raw" \
         "$PROJECT_DIR/01_Video/Exports" \
         "$PROJECT_DIR/02_Audio/Stems" \
         "$PROJECT_DIR/02_Audio/Exports" \
         "$PROJECT_DIR/03_Documents" \
         "$PROJECT_DIR/04_Reference"

# Copy template files
echo "Copying templates..."
cp "../_templates/Project_Brief.md" "$PROJECT_DIR/03_Documents/"
cp "../_templates/Gear_Catalogue.md" "$PROJECT_DIR/03_Documents/"
cp "../_templates/Journal_Entry_Template.md" "$PROJECT_DIR/03_Documents/Journal.md"

# Create README with project info
cat > "$PROJECT_DIR/README.md" << EOL
# $PROJECT_NAME

Project created: $TIMESTAMP

## Overview
This project follows the standard Sky workspace structure.

## Quick Links
- [Project Brief](03_Documents/Project_Brief.md)
- [Gear & Samples Catalogue](03_Documents/Gear_Catalogue.md)
- [Journal](03_Documents/Journal.md)

For details on the folder structure, see [Project Structure Guide](../../_templates/Project_Structure_README.md).
EOL

# Success message
echo "✅ Project '$PROJECT_NAME' created successfully!"
echo "📂 $PROJECT_DIR/"
echo ""
echo "Next steps:"
echo "1. Edit the Project Brief: $PROJECT_DIR/03_Documents/Project_Brief.md"
echo "2. Update the Gear Catalogue with relevant sample libraries"
echo "3. Begin your first journal entry"
