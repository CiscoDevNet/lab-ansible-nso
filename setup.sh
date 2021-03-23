#!/bin/bash

NSO_HOST=10.10.20.49
NSO_USERNAME=developer
NSO_PASSWORD=C1sco12345

# Delete all groups
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device-group=ALL" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device-group=ASA-DEVICES" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device-group=IOS-DEVICES" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device-group=NXOS-DEVICES" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device-group=XR-DEVICES" -u "${NSO_USERNAME}:${NSO_PASSWORD}"

# Delete all devices
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=core-rtr01" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=core-rtr02" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=dist-rtr01" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=dist-rtr02" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=dist-sw01" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=dist-sw02" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=edge-firewall01" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=edge-sw01" -u "${NSO_USERNAME}:${NSO_PASSWORD}"
curl -k -X DELETE "https://${NSO_HOST}:443/restconf/data/tailf-ncs:devices/device=internet-rtr01" -u "${NSO_USERNAME}:${NSO_PASSWORD}"

# Create an ansible directory
cp -r ansible/ ${HOME}/ansible
