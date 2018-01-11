from requests import get as ping
from datetime import datetime

# Ping UOS HUB to prevent Heroku's dyno from sleeping
if ping("https://uoshub.com").status_code != 200:
    print("Failed to", end=" ")

print("ping UOS HUB at", str(datetime.now())[:-7])
