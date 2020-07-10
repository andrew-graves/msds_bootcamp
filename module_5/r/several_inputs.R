prompts <- list("Please provide your first name: ",
                "Now your middle name: ",
                "Finally, last name: ")

print(lapply(prompts, readline))