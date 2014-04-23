#!/bin/bash
pushd /tmp

# install openjdk7 by default
sudo apt-get -y install openjdk-7-jdk

# install commonly used Java build tools
sudo apt-get -y install ant ant-contrib ivy maven

# install utility that allows us to switch JDK versions
sudo apt-get -y install default-jdk

# Download gradle 1.11
wget http://services.gradle.org/distributions/gradle-1.11-bin.zip --quiet
unzip -q gradle-1.11-bin.zip
rm gradle-1.11-bin.zip
sudo mv gradle-1.11 /usr/local
sudo chown -R ubuntu:ubuntu /usr/local/gradle-1.11
chmod +x /usr/local/gradle-1.11/bin/gradle

popd
