#!/usr/bin/env bash

# Go to project dir
cd /home

# Clean up cached static files
rm -r static Website/static/min Website/static/fonts

# Backup database file
mv db.sqlite3 db.save

# Sync back-end repo with GitHub
git fetch --all
git reset --hard origin/master

# Sync front-end repo with GitHub
cd Website/static
git fetch --all
git reset --hard origin/master
cd ../..

# Restore database file
mv db.save db.sqlite3

# Install python packages updates if any
pip3 install -r requirements.txt

# Download & combine static requirements
cd Website
python3 download.py
cd ..

# Compress and collect static files
python3 manage.py compress --force
python3 manage.py collectstatic

# Clean up uncompressed static files
rm -r static/css static/js

# Restart Gunicorn and Nginx
systemctl restart gunicorn
systemctl restart nginx
