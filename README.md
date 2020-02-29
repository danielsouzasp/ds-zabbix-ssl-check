# ds-zabbix-ssl-check
A little Zabbix template to monitor SSL certificate over an HTTPS URL

This plugins has two features:
1. Checking an HTTPS URL and return how many days its SSL will expire; 
2. Cheing an HTTS URL and return how 1 if it is ok or 0 if it is not valid.

# How to use it

Finally, restart the zabbix agent service to apply the new config!

Example of return:
<table>
<thead>
<tr>
<th><input name="all_items" type="checkbox" value="1" /><label for="all_items"></label></th>
<th>Name</th>
<th>Last check</th>
<th>Last value</th>
</tr>
</thead>
<tbody>
<tr>
<td><input disabled="disabled" name="itemids[31178]" type="checkbox" value="31178" /><label for="itemids_31178"></label></td>
<td>Check connectivity</td>
<td>02/29/2020 05:55:38 PM</td>
<td>Pong</td>
</tr>
<tr>
<td><input disabled="disabled" name="itemids[31180]" type="checkbox" value="31180" /><label for="itemids_31180"></label></td>
<td>Check SSL Expiration</td>
<td>02/29/2020 05:55:10 PM</td>
<td>517</td>
</tr>
<tr>
<td><input disabled="disabled" name="itemids[31192]" type="checkbox" value="31192" /><label for="itemids_31192"></label></td>
<td>Check SSL is valid</td>
<td>02/29/2020 05:55:22 PM</td>
<td>1</td>
</tr>
</tbody>
</table>
