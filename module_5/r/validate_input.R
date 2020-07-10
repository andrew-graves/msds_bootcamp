# Assumes that strings with all alphabetical
# characters and no spaces is a "word".
validate_input <- function(){
  
  input <- readline("Please type a word: ")

while(!grepl("^[A-Za-z]+$", input)){
  input <- readline("Your input was not a word... please try again: ")
}
  print("Your input was a word!")
}
  
validate_input()
