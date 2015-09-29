#!/bin/sh
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# whipe network configuration
#
# remove hostapd init file
echo -en "Deleting default hostapd and configuration files...			"
rm /etc/default/hostapd
rm /etc/hostapd/hostapd.conf
echo -en "[OK]\n"

# remove dnsmasq
echo -en "Deleting dnsmasq configuration file... 			"
rm /etc/dnsmasq.conf
echo -en "[OK]\n"

# remove interfaces configuration file
echo -en "Removing network interfaces configuration file... 			"
rm /etc/network/interfaces

# Remove startup scripts and delete
echo -en "Disabling and deleting startup subnodes startup scripts... 			"
update-rc.d -f subnodes_config_mesh remove
rm /etc/init.d/subnodes_config_mesh
update-rc.d -f subnodes_config_ap remove
rm /etc/init.d/subnodes_config_ap