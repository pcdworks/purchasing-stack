#!/bin/bash
echo "Installing FreeIPA Groups"
docker exec -it ipa ipa group-add --desc='Validate purchase requests' validator
docker exec -it ipa ipa group-add --desc='Aprove purchase requests' approver

