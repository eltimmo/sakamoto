# Sakamoto day of week

A PowerShell function that returns the day of week using the Sakamoto method. See [here](https://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week#Sakamoto.27s_methods) for how the algorithm works.


Inputs

* day
* month 
* year 

Example ``weekDay = sakamotoDOW 01 01 2000``

Returns

* Day of week [0..6] 0 being Sunday