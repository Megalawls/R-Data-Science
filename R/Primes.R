

eratosthenes <- function(number){
  number <- as.integer(number)
  primeNumbers <- rep(T, number) #list of true with a length of number
  primeNumbers[1] <- F #set 1 to false
  last <- 2L #a "count" variable starting at 2, 
  squareN <- floor(sqrt(number))  #only need to calculate up to the square root, as there will be no squares higher than that
  
  while(last<=squareN){
    primeNumbers[seq.int(2L*last, number, last)] <- F #sets everything from last*2 to the number, in steps of the last number to false
                                                      #first iteration starts from 4, going up in multiples of 2, changing them to false
    selection <- which(primeNumbers[(last+1):(squareN+1)]) #selects indices from the last prime until one more than the square root of input
                                                           #there will not be a
    if(any(selection)){ #if there is a selection set last to the lowest number in selection of prime numbers plus the current last prime
      last <- last+min(selection)
    }else{last <- squareN+1}#if there is no selection then set last to one more than the square root of n, ending the while loop
  }
  length(which(primeNumbers))
}

print(eratosthenes(2000000000))