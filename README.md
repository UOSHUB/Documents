### Description of documents in this repository

- DigitalOcean: contains UOS HUB configuration files on digitalocean droplet
    - /etc/nginx/sites-available/uoshub: Nginx configs file that maps subdomains to their paths and handles ssl
    - /etc/systemd/system/gunicorn.service: Gunicorn configs file that specifies the location & settings of our app

- Heroku deployment.patch: a Git patch to add necessary changes to our Django app before deploying it on Heroku


***

### References
- [DigitalOcean](https://www.digitalocean.com)
- [Nginx](https://www.nginx.com/wiki)
- [Gunicorn](http://gunicorn.org)
- [Heroku](https://www.heroku.com)
