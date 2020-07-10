prompts = ['Please provide your first name: ',
           'Now your middle name: ',
           'Finally, your last name: ']

inputs = [None] * 3

for i in range(len(inputs)):
    inputs[i] = input(prompts[i])
    if i == (len(inputs) - 1):
        for j in range(len(inputs)):
            print(inputs[j])