#!/bin/bash

date
echo "Downloading weather data..."
wget -O `date +"%Y%m%d_%H%M%S.json"` https://prodapi.metweb.ie/observations/athenry/today>>/data/weather    
echo "Weather data downloaded."
date