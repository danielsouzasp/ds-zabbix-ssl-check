# ds-zabbix-ssl-check
A little Zabbix template to monitor SSL certificate over an HTTPS URL

This plugins has two features:
1. Checking an HTTPS URL and return how many days its SSL will expire; 
2. Cheing an HTTS URL and return how 1 if it is ok or 0 if it is not valid.

Example of data generated:
Name                  Interval	                History	 Trends	Type	        Last  check                   Last value
Check connectivity    ds_ssl.ping	              30s	     90d		Zabbix agent	02/29/2020 05:16:08 PM	Pong	
Check SSL Expiration  ds_ssl.expire[myurl.com]	30s	     90d		Zabbix agent	02/29/2020 05:15:40 PM	517	
Check SSL is valid    ds_ssl.valid[myurl.com]	  30s	     90d		Zabbix agent	02/29/2020 05:15:52 PM	1	

# How to use it


Finally, restart the zabbix agent service to apply the new config!
 
