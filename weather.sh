#!/bin/bash

date
echo "Downloading weather data..."
wget -P data/weather/ `date +"%Y%m%d_%H%M%S.json"` https://prodapi.metweb.ie/observations/athenry/today
echo "Weather data downloaded."
date
