#!/usr/bin/env bash

echo "Fetching new back-end changes and waiting for cherry-picking"
git fetch origin
"C:\Program Files\Git\git-bash.exe"

echo "Removing then cloning front-end repo from GitHub"
cd Website
rm -rf static
git clone https://github.com/UOSHUB/FrontEnd static

echo "Downloading static requirements & compressing static files"
export DEBUG="False"
python download.py
python minify_html.py
python ../manage.py compress

echo "Cleaning up front-end Git files and useless files"
cd static
rm -rf .git .gitignore css js LICENSE.md README.md requirements.txt

echo "Checking whether to commit and push to Heroku or not"
git status
read -r -p "Deploy to Heroku? [y/N] " response
if [[ ${response,,} =~ ^(yes|y)$ ]]
then

echo "Committing new changes and pushing to Heroku"
git add --all
git commit -m "Added FrontEnd And BackEnd Cumulative Updates"
git push heroku master
fi
echo "All done"