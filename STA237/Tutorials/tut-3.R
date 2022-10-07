# 1a
theory_result = dbinom(4, 20, 0.5)
paste0("Theoretical Result: ", theory_result)


# 1b
check.condition = function(n, r) {
  simulation = sample(0:1, n, replace=TRUE)
  if (sum(simulation) == r) {
    return(1)
  }
  else {
    return(0)
  }
}


# 1c
simulation = function(n, r, N) {
  count = 0
  
  for (i in 1:N) {
    check = check.condition(n, r)
    count = count + check
  }
  
  return(count/N)
}


# 1d
simulated_result = simulation(20, 4, 10000)
paste0("Simulated Result: ", simulated_result)

difference = abs(simulated_result - theory_result)

paste0("Difference between theoretical and simulation results: ", difference)

