# Surveillance Station 8.0.3-5159 Licensing
 A script to install Synology Surveillance Station 8.0.3-5159 license

![image](https://user-images.githubusercontent.com/6334069/204353368-7ae3057c-fc69-40ec-bf4a-589972169ee5.png)


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
  wget https://github.com/PREngineer/Surveillance-Station-Licensing/releases/download/v1.0/SS-x64-8.0.3-5159.tar
````
4. Extract the repository files
````
  tar -xvf SS-x64-8.0.3-5159.tar
````
5. Execute the script
````
  ./license.sh
````

# How to check the license status:

1. Open Surveillance Station
2. Click the button on the top left.
3. Click on License
