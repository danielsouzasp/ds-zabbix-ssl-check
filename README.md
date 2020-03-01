# ds-zabbix-ssl-check
A little Zabbix template to monitor SSL certificate over an HTTPS URL

# Features
This plugin has three commands:<br>
<strong>ds_ssl.expire[$myurl]</strong> - Check an URL and return 'how many days' its SSL will expire (it returns '0' if expired);<br> 
<strong>ds_ssl.valid[$myurl]</strong> - Check an URL and return '1' if it is ok or '0' if it is not valid;<br>
<strong>ds_ssl.ping</strong> - Just an way to check connectivy to agent.
Note: This was tested on Zabbix server 4.0.17

# How to install it
1. Download all files of this repository;
2. Access the host with Zabbix agent to set the config files;
3. Copy the file "ds_ssl_check.conf" to "/etc/zabbix/zabbix_agentd.d/";
4. Copy the files "ds_ssl_expiration.sh" and "ds_ssl_is_valid.sh" to "/etc/zabbix/zabbix_agentd.d/scripts/";
5. At the Zabbix admin, go to "Configuration >> Templates" and import the template file "ds_ssl_template.xml";
6. After add this template to some host, you will see the macro called "{$URL}" where you can set a domain name to check (like google.com).

Finally, restart the <strong>zabbix agent service</strong> to apply the new config!

# To try manually from Zabbix server
zabbix_get -s agent-hostname -k ds_ssl.ping<br>
zabbix_get -s agent-hostname -k ds_ssl.expire[google.com]<br>
zabbix_get -s agent-hostname -k ds_ssl.valid[google.com]

Example of return:
<table><thead><tr>
<th>Name</th>
<th>Last check</th>
<th>Last value</th>
</tr></thead><tbody>
<tr><td>Check connectivity</td>
<td>02/29/2020 05:55:38 PM</td>
<td style="text-align: center;">Pong</td></tr>
<tr><td>Check SSL Expiration</td>
<td>02/29/2020 05:55:10 PM</td>
<td style="text-align: center;">517</td></tr>
<tr><td>Check SSL is valid</td>
<td>02/29/2020 05:55:22 PM</td>
<td style="text-align: center;">1</td>
</tr></tbody></table>
