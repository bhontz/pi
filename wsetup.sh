#!/bin/bash
sudo apt-get update
sudo apt-get install -y build-essential python-dev
sudo apt-get install -y lighthttp
sudo chown www-data:www-data /var/www
sudo chmod 775 /var/www
sudo usermod -a -G www-data pi
mv pi/my_weather_station.py /var/www
unzip pi/Adafruit_Python_DHT-master
cd Adafruit_Python_DHT
sudo python setup.py install