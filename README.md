### Description of documents in this repository

- DigitalOcean: contains UOS HUB configuration files on digitalocean droplet
    - /etc/
        - apt/sources.list: An addition to Ubuntu's source list file that fixes unavailable local mirrors (if any)
        - nginx/sites-available/uoshub: Nginx configs file that maps subdomains to their paths and handles ssl
        - systemd/system/gunicorn.service: Gunicorn configs file that specifies the location & settings of our app
        - gunicorn.conf: Nginx environment file to set Django debugging to false and declare its secret key
    - /root/
        - .bashrc: An addition to root user's Bash configs to fix language warnings and default python to python3
        - deploy.sh: A Bash script to deploy new changes of UOS HUB (clean up -> pull changes -> collect & restart)

- Heroku deployment.patch: a Git patch to add necessary changes to our Django app before deploying it on Heroku


***

### References
- [DigitalOcean](https://www.digitalocean.com)
- [Nginx](https://www.nginx.com/wiki)
- [Gunicorn](http://gunicorn.org)
- [Heroku](https://www.heroku.com)
