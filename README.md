### Description of documents in this repository

- DigitalOcean: Contains UOS HUB configuration files on DigitalOcean droplet
    - /etc/
        - apt/sources.list: An addition to Ubuntu's source list file that fixes unavailable local mirrors (if any)
        - nginx/sites-available/uoshub: Nginx configs file that maps subdomains to their paths and handles ssl
        - systemd/system/gunicorn.service: Gunicorn configs file that specifies the location & settings of our app
        - gunicorn.conf: Nginx environment file to set Django debugging to false and declare its secret key
    - /root/
        - .bashrc: An addition to root user's Bash configs to fix language warnings and default python to python3
        - deploy.sh: A Bash script to deploy new changes of UOS HUB (clean up -> pull changes -> collect & restart)

- Heroku: contains necessary files for deployment on Heroku
	- deploy.sh: A Bash script to pull new changes locally then push them to UOS HUB Heroku repository
	- Procfile: Declares the Gunicorn command that will be run by UOS HUB's dynos on the Heroku platform
	- runtime.txt: Specifies which version of Python should be used on Heroku
	- ping.py: A Python script that pings UOS HUB, it's used to prevent Heroku's dyno from sleeping


***

### References
- [DigitalOcean](https://www.digitalocean.com)
- [Heroku](https://www.heroku.com)
- [Nginx](https://www.nginx.com/wiki)
- [Gunicorn](http://gunicorn.org)
