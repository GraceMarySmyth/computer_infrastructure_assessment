#! /usr/bin/env python

import pandas as pd
import datetime as dt
import os
import lxml

df = pd.read_html('https://data.gov.ie/dataset/todays-weather-athenry')

filename = dt.datetime.now()
filename = filename.strftime("%Y%m%d_%H%M%S")
filename = 'data_notebook/' + filename + ".csv"

os.makedirs('data_notebook', exist_ok=True)

df[0].to_csv(filename)

