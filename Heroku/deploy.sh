#!/usr/bin/env bash

# Fetch new back-end changes and wait for cherry-picking
git fetch origin
"C:\Program Files\Git\git-bash.exe"

# Remove & clone front-end repo from GitHub
cd Website
rm -rf static
git clone https://github.com/UOSHUB/FrontEnd static

# Download static requirements compress static files
python download.py
python ../manage.py compress --force

# Cleanup front-end Git files and useless files
cd static
rm -rf .git .gitignore css js LICENSE.md README.md requirements.txt
