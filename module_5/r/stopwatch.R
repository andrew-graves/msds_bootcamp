stopwatch <- function(){
  
  time <- readline(paste(
    "Test waiting time by typing a number in seconds: ")
  )
  
  print(time)
  
  while(suppressWarnings(is.na(as.numeric(time)))){
    
    time <- readline(paste("That is not a valid input.",
                           "Please input a number instead: ")
    )
    
  }
  
  start <- Sys.time()
  Sys.sleep(time)
  print(Sys.time() - start)

}

stopwatch()