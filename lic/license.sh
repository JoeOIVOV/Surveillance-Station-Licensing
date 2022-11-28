#!/bin/sh
ver="1.0.0"

#--------------------------------
# Change permissions of the files
#--------------------------------

echo -e "Making sure license files have the right permissions..."

sudo -i

chmod 757 libsynoss_1.so
chmod 757 sscored
chmod 757 SYNO.SurveillanceStation.Layout.so

echo -e "\t☑ Done!"

#--------------------------------
# Install license
#--------------------------------

echo -e "Installing the license files..."

cp libsynoss_1.so /volume1/@appstore/SurveillanceStation/lib/libsynoss_1.so
cp sscored /volume1/@appstore/SurveillanceStation/sbin/sscored
cp SYNO.SurveillanceStation.Layout.so /volume1/@appstore/SurveillanceStation/webapi/Layout/src/SYNO.SurveillanceStation.Layout.so

echo -e "\t☑ Done!"

#--------------------------------
# Restart Surveillance Station
#--------------------------------

echo -e "Restarting Surveillance Station..."

synoservice --restart pkgctl-SurveillanceStation

echo -e "\t☑ Done!"

#--------------------------------
# Post-work message
#--------------------------------

echo -e "--------------------------------------------------------------------------"
echo -e "The license has been applied."
echo -e "--------------------------------------------------------------------------"
echo -e "You can go to Surveillance Station to verify that the license took effect."
echo -e "                                              Brought to you by PREngineer"
echo -e "--------------------------------------------------------------------------"