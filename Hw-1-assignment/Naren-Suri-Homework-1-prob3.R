# stem and leaf
StemAndLeaf = c(88,66,71,63,101,55,76,49,63,38,91,79,41,36,73,55,42,49,50,90,51)
# stem and leaf plots are one way of repesneting the frequency of the elements in the data
# 1. we can use the frequency tables, relative frequencies ec, but stem does the same in a different way
stem(StemAndLeaf)
stem(StemAndLeaf, scale = 1, width = 110)
# 2 - stem plot
stem.leaf(StemAndLeaf,m=2)

stemLeaf2 = c(0.12,0.15,0.15,0.10,0.13,0.15,0.14,0.08,0.11,0.09,0.14,0.09,0.13,0.14,0.12,0.16,0.15,0.13,0.12,0.12,0.09)
stem(stemLeaf2)
stem(stemLeaf2, scale =0.5,width=25)
stem(stemLeaf2, scale =0.2,width=25)
stem(stemLeaf2, scale =1,width=25)
stem(stemLeaf2, scale =10,width=25)
#2-stem plot

stem.leaf(stemLeaf2,m=2)

#Manual way:
# since stem and leaf plots are to represent frequency, its always better to choose the decent number of bukets which can define the behaviour of the data.
# the bucketing should make our job easy to count the frequencies
# The below lines are commented s i have written them in the R editor.

#    88,66,71,63,101,55,76,49,63,38,91,79,41,36,73,55,42,49,50,90,51
# Stem    :    Leaf
#       2 | 68
#       4 | 12990155
#       6 | 3361369
#       8 | 801
#      10 | 1

# As asked if this represented in the two lines of stem, it makes no sense at all. That situation is equal to have the raw data in hand.

# The Bad Case:
# Stem    :    Leaf
#       26
#        28
#       4 | 1
#        42
#        49
#        49
#        40
#        41
#        45
#        45
#       63
#        63
#        66
#        61
#        63
#        69
#       88
#        80
#        81
#      101
#     This is no different than having the original data.
        
#B. Can we modify the second stem plot?
#The decimal point is 1 digit(s) to the left of the |
#Stem    leaf
#0     | 8999
#1     | 012222333444
#1     | 55556

#This split makes it easy to count the frequencies, considering the decimal point location. 

----------------------------------------------------------------------------------------------------
#  B.   Shapes of the stam leaf grpahs : 
       
#  (shape, symmetry, outliers, etc
   
#   1. # Stem    :    Leaf
   #       2 | 68
   #       4 | 12990155
   #       6 | 3361369
   #       8 | 801
   #      10 | 1
#   This is moe right skewed data. 
#   in addition, This is not exactly symmetric. It looks more like a bell curve, a distribution curve. 
#   The 10 value, as it was repaeated only once it dont really affect the final frequency calculations. 
   
#   2. Plot 2 shape
#   Stem    leaf
#   0     | 8999
#   1     | 012222333444
#   1     | 55556
#   This is more like symmetric,though its not exactly symmetric in shape.
#   It has more sharp center hill. right skewed compared to let, but not to a big scale.
   