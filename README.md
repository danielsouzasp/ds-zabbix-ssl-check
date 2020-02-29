# ds-zabbix-ssl-check
A little Zabbix template to monitor SSL certificate over an HTTPS URL

This plugins has three commands:
1. ds_ssl.expire[$myurl] - Check an URL and return how many days its SSL will expire (it returns zero if is is expired); 
2. ds_ssl.valid[$myurl] - Check an URL and return how 1 if it is ok or 0 if it is not valid;
3. ds_ssl.ping - Just an way to check connectivy to agent.

# How to use it

Finally, restart the zabbix agent service to apply the new config!

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
