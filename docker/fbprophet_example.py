#!python

import pandas as pd
import numpy as np
from fbprophet import Prophet
df = pd.read_csv('example_wp_peyton_manning.csv')
df['y'] = np.log(df['y'])
df.head()
m = Prophet()
m.fit(df);
future = m.make_future_dataframe(periods=365)
future.tail()
forecast = m.predict(future)
forecast[['ds', 'yhat', 'yhat_lower', 'yhat_upper']].tail()
