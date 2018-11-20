#!/bin/sh

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install openjdk-8-jdk openjdk-8-jre sbt ca-certificates-java
curl https://downloads.lightbend.com/scala/2.12.7/scala-2.12.7.deb  --output scala-2.12.7.deb
sudo dpkg -i scala-2.12.7.deb
sudo apt-get install -f