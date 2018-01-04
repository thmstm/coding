#===============================================================================
# This script generates a random new seed for IOTA
# 
# DON'T FORGET TO SAVE THE SEED TO A SAFE PLACE AS THIS GIVES ACCESS TO YOUR
# WALLET! IF SOMEONE GETS THE SEED, CAN TAKE CONTROL OF YOUR WALLET!
#===============================================================================

#--- Importing libraries
import random

#--- Initialising
charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZ9"
count = 0
seed = []

#--- Generating a list of random characters from the character set
while count < 81:
    seed.append(charset[random.randint(0,len(charset)-1)])
    count+=1

#--- Joinin the list of characters into a string
seed = ''.join(c for c in seed)

#--- Printing the generated seed
print(seed)