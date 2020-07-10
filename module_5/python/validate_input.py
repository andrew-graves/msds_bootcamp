# Assumes that strings with all alphabetical
# characters and no spaces is a "word".
import re

user_input = input('Please type a word: ')

while not bool(re.search('^[A-Za-z]+$', user_input)):
    user_input = input('Your input was not a word... please try again: ')
    
print('Your input was a word!')