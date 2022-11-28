#!/bin/sh
ver="1.0.0"



#--------------------------------
# Change permissions of the files
#--------------------------------

echo -e "Making sure license files have the right permissions..."

sudo chmod 757 libsynoss_1.so
sudo chmod 757 sscored
sudo chmod 757 SYNO.SurveillanceStation.Layout.so

echo -e "[!] Done!"



#--------------------------------
# Stop Surveillance Station
#--------------------------------

echo -e "Stopping Surveillance Station..."

synoservice --stop pkgctl-SurveillanceStation

echo -e "[!] Done!"



#--------------------------------
# Install license
#--------------------------------

echo -e "Installing the license files..."

mv libsynoss_1.so /volume1/@appstore/SurveillanceStation/lib/libsynoss_1.so
mv sscored /volume1/@appstore/SurveillanceStation/sbin/sscored
mv SYNO.SurveillanceStation.Layout.so /volume1/@appstore/SurveillanceStation/webapi/Layout/src/SYNO.SurveillanceStation.Layout.so

echo -e "[!] Done!"



#--------------------------------
# Restart Surveillance Station
#--------------------------------

echo -e "Restarting Surveillance Station..."

synoservice --start pkgctl-SurveillanceStation

echo -e "[!] Done!"



#--------------------------------
# Cleanup
#--------------------------------

echo -e "Cleaning up downloads..."

rm SS-x64-8.0.3-5159.tar
rm license.sh
  
  echo -e "[!] Done!"



#--------------------------------
# Post-work message
#--------------------------------

echo -e "--------------------------------------------------------------------------"
echo -e "The license has been applied."
echo -e "--------------------------------------------------------------------------"
echo -e "You can go to Surveillance Station to verify that the license took effect."
echo -e "                                              Brought to you by PREngineer"
echo -e "--------------------------------------------------------------------------"
