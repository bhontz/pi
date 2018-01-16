apt-get upgrade
apt-get update

apt-get install build-essential -y
apt-get install python-dev -y
apt-get install lighttpd -y

chown www-data:www-data /var/www
chmod 775 /var/www
usermod -a -G www-data pi

mv my_weather_station.py /var/www

unzip Adafruit_Python_DHT-master.zip
cd Adafruit_Python_DHT-master
python setup.py install

rm Adafruit_Python_DHT-master.zip