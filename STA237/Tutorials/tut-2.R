func1a = function(x, n) {
  output = 1
  
  for (i in 1:n){
    output = output * x
    cat(format(i, width=6), format(output, width=10), "\n", sep="")
  }
  
  return(output)
}

func1b = function(x,y) {
  return(x + y)
}

func1c = function(n) {
  return(prod(1:n))
}

func2 = function(n) {
  if(n == 0) {
    return(1)
  }
  else {
    return(n * func2(n-1))
  }
}

