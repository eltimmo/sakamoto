########################################################################################################################################
# Function - sakamotoDOW 
#            Get day of week using using Sakamoto's method.  https://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week#Sakamoto.27s_methods
# 
# Inputs   - day
#          - month 
#          - year 
#          - example weekDay = sakamotoDOW 01 01 2000
#
# Returns  - Day of week [0 - 6] 0 being Sunday
########################################################################################################################################

function sakamotoDOW 
{

  param
  (
    [int]$d,
    [int]$m,
    [int]$y
  )

  $t = @(0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4)
  $y -= $m -lt 3
  $sakamotoDOW = ($y + [math]::floor($y/4) - [math]::floor($y/100) + [math]::floor($y/400) + $t[$m-1] + $d) % 7

  return ($sakamotoDOW)

}
