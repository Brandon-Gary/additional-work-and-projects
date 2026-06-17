#BINOMIAL DISTRIBUTION - NO SHOW PROBABILITY

import numpy as np
import scipy
import matplotlib.pyplot as plt
from scipy.stats import binom

n = 18
p = 0.263
r_values = list(range(n+1))
mean, var = binom.stats(n,p)
dist = [binom.pmf(r, n, p) for r in r_values]

print("r\tp(r)")
for i in range(n +1):
    print(str(r_values[i]) + "\t" + str(dist[i]))
    
print("mean = "+str(mean))
print("variance = "+str(var))


# In[2]:


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

