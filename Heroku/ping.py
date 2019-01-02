from datetime import datetime
from pytz import timezone
import requests

time = datetime.now(timezone('Asia/Dubai'))
requests.get("https://uoshub.com/api/")
print("pinged UOS HUB at", str(time)[:-7])
