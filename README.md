# Surveillance Station 8.0.3-5159 Licensing
 A script to install Synology Surveillance Station 8.0.3-5159 license



# How to use:

1. SSH into your Synology/XPEnology NAS
````
   ssh username@ip
````
2. Become root for this session
````
   sudo -i
````
     *Enter your admin password when prompted*
   
3. Copy the repository from Github
````
  wget https://github.com/PREngineer/Surveillance-Station-Licensing/archive/master.tar.gz
````
4. Extract the repository files
````
  tar -zxvf master.tar.gz
````
5. Get into the proper directory
````
  cd Surveillance-Station-Licensing-main/lic/
````
6. Make the script executable
````
  chmod +x license.sh
````
7. Execute the script
````
  ./license.sh
````
