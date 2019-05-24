sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install mc -y
sudo apt-get remove python3-pip
sudo apt-get install python3-pip
wget https://nvidia.box.com/shared/static/veo87trfaawj5pfwuqvhl6mzc5b55fbj.whl -O torch-1.1.0a0+b457266-cp36-cp36m-linux_aarch64.whl
pip3 install numpy torch-1.1.0a0+b457266-cp36-cp36m-linux_aarch64.whl
sudo apt-get install libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev
git clone https://github.com/pytorch/vision
cd vision
sudo python3 setup.py install
pip3 install -U protobuf
pip3 install --upgrade future
pip3 install matplotlib
sudo apt-get install libcanberra-gtk-module
sudo apt-get install libjpeg-dev zlib1g-dev
pip3 install Pillow
sudo apt-get install flac ffmpeg
sudo apt update && sudo apt install python3-pyaudio
sudo apt-get install python3-dev
pip3 install pysine
#https://pypi.org/project/Jetson.GPIO/
cd Download
wget https://files.pythonhosted.org/packages/59/b2/4278fa96366f8a79d43cc017fa3ea6aac2ef1d23011e09738e8044253262/Jetson.GPIO-0.1.2.tar.gz
sudo unzip Jetson.GPIO-0.1.2.tar.gz -d /opt/nvidia/
mv /opt/nvidia/jetson-gpio-master /opt/nvidia/jetson-gpio
sudo pip3 install Jetson.GPIO
sudo groupadd -f -r gpio
sudo usermod -a -G gpio careface
sudo cp /opt/nvidia/jetson-gpio/etc/99-gpio.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger


