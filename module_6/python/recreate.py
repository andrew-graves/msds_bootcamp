import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("data/andre.csv")
df = df[df['Year'].between(1977, 1993)]

fig, ax = plt.subplots()
hist = df.hist("H", bins=100, ax=ax)
fig.savefig('output/recreate.png')