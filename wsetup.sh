apt-get upgrade
apt-get update

apt-get install --yes build-essential
apt-get install --yes python-dev
apt-get install --yes lighttpd

chown www-data:www-data /var/www
chmod 775 /var/www
usermod -a -G www-data pi

mv my_weather_station.py /var/www

unzip Adafruit_Python_DHT-master.zip
cd Adafruit_Python_DHT-master
python setup.py install

cd ..
rm Adafruit_Python_DHT-master.zip