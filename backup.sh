#!/bin/sh

# Dir the backup will go to
DIR=~/Desktop/$(date '+%Y%m%d')-backup;

mkdir $DIR

# Copy .ssh folder
cp -R ~/.ssh $DIR/.ssh

# Copy secret environment variables
cp .secret.env $DIR/.secret.env

# Copy .gradle.properties
mkdir $DIR/.gradle
cp -P ~/.gradle/gradle.properties $DIR/.gradle/.gradle.properties

