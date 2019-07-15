# zabbix-telegram.sh
Simple script, with only cURL as requirement to send Zabbix alerts to Telegram.

### Example
![example](https://i.imgur.com/vlTxJQ0.png)

### Install
1) Put the script `telegram.sh` to `/usr/lib/zabbix/alertscripts/`

2) Create new media in zabbix, replace with your api key for the first parameter
![](https://i.imgur.com/lK6Vfoa.png)

3) Assign this new media to your profile, fill the first parameter with your channel, group or personal Telegram account ID
![](https://i.imgur.com/veanpvR.png)

4) Have fun !
