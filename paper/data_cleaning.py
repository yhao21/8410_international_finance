import pandas as pd
import numpy as np
import matplotlib.pyplot as plt





canada = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/canada.csv')
us = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/us.csv')
denmark = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/denmark.csv')
iceland = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/iceland.csv')
norway = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/norway.csv')
singapore = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/singapore.csv')
switzerland = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/switzerland.csv')
finland = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/finland.csv')
france = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/france.csv')
germany = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/germany.csv')
italy = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/italy.csv')
netherlands = pd.read_csv('~/my_disk/git/data/Balance_of_Payment/CA_NO/netherlands.csv')


year = canada['Year'].values

ca = canada['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_canada.png')
plt.clf()

ca = us['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_us.png')
plt.clf()

ca = denmark['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_denmark.png')
plt.clf()

ca = iceland['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_iceland.png')
plt.clf()

ca = norway['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_norway.png')
plt.clf()

ca = singapore['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_singapore.png')
plt.clf()

ca = switzerland['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_switzerland.png')
plt.clf()

ca = finland['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_finland.png')
plt.clf()

ca = france['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_france.png')
plt.clf()

ca = germany['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_germany.png')
plt.clf()

ca = italy['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_italy.png')
plt.clf()

ca = netherlands['CA'].values
plt.plot(year, ca)
plt.savefig('figures/ca_netherlands.png')
plt.clf()

