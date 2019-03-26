# pi
GSOC Raspberry Pi Setup Files

Used to configure the 10 GSOC Raspberry Pi kits after first installating the 12/27/2017 NOOBS (Raspbian Desktop) update.

Instructions:
cd /usr/local/bin

sudo git clone https://github.com/bhontz/pi.git (in otherwords git clone this respository into /usr/local/bin)

cd pi

sudo sh wsetup.sh

The script above adds build-essential, python-dev and lighttpd packages.  It also installs downloads the Adafruit_Python_DHT module from this repository and builds the module, and installs the my_weather_station.py python script used for the GSOC Raspberry Pi weather station project.

Testing:
1) validate that my_weather_station.py exists within /var/www
2) start the Pi desktop web browser and verify you can see the lighttpd web server's default page from local host (URL 127.0.0.1)
3) Install the weather station breadboard properly (AFTER POWER DOWN OF THE PI) and from within /var/www, sudo python my_weather_station.py 127.0.0.1
4) Verify that you can see the time, weather and humidity from URL 127.0.0.1:8051 from the Pi desktop web browser.
