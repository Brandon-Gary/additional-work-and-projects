#BINOMIAL DISTRIBUTION - NO SHOW PROBABILITY

import numpy as np
import scipy
import matplotlib.pyplot as plt
from scipy.stats import binom

n = 18 #n = number of appointments
p = 0.263 # p = no-show probablility
r_values = list(range(n+1))
mean, var = binom.stats(n,p)
dist = [binom.pmf(r, n, p) for r in r_values]

print("r\tp(r)")
for i in range(n +1):
    print(str(r_values[i]) + "\t" + str(dist[i]))
    
print("mean = "+str(mean))
print("variance = "+str(var))

#The above will output the mostly likely number of no-shows based on the probability and total booked appointments (n & p respectively)


n = 18
p = 0.263
# defining list of r values 
r_values = list(range(n + 1)) 
# list of pmf values 
dist = [binom.pmf(r, n, p) for r in r_values ] 
# plotting the graph  
plt.bar(r_values, dist)
plt.xlabel("Number of No Shows")
plt.ylabel("Percent Chance")
plt.show()

#This section will output the same information, but will display it graphically using the matplotlib package
