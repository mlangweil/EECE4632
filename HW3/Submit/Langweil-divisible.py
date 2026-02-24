#!/usr/bin/env python
# coding: utf-8

# In[9]:


import time    
def divide_by_thirteen_sw(integerlist):
    """This function outputs a list where, if the integer on

           the input list is divisible by thirteen, the corresponding

           output is  1 else the output is 0  """  
    start_time = time.time()
    multiple_of_thirteen = 0
    list_of_multiples = []
    for i in range(len(integerlist)):
        newval = integerlist[i]
        if (newval % 13 == 0):
            multiple_of_thirteen = 1
        else: 
            multiple_of_thirteen = 0
        list_of_multiples.append(multiple_of_thirteen)
        multiple_of_thirteen = 0
    end_time = time.time()
    elapsed_time = end_time - start_time
    print("Elapsed time", elapsed_time)
    return list_of_multiples


# In[13]:


from pynq import Overlay
from pynq import DefaultIP


overlay = Overlay('divisible.bit')
add_ip = overlay.divisible
add_ip.register_map
class AddDriver(DefaultIP):
    def __init__(self, description):
        super().__init__(description=description)

    bindto = ['xilinx.com:hls:divisible:1.0']

    def divisible_by_thirteen(self, a):
        self.write(0x10, a)
        return self.read(0x18)
    
def divide_by_thirteen_hw(integerList):
    start_time = time.time()
    list_of_multiples = []
    for i in range(len(integerList)):
        list_of_multiples.append(overlay.divisible.divisible_by_thirteen(integerList[i]))
    end_time = time.time()
    elapsed_time = end_time - start_time
    print("Elapsed time", elapsed_time)
    return list_of_multiples
    


# In[16]:


divide_by_thirteen_sw([13, 13**4, 16,1,13])


# In[17]:


divide_by_thirteen_hw([13, 13**4, 16,1,13])


# In[ ]:




