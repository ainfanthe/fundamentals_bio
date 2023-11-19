if(FALSE){
  "
  Title: Rabbit and Recurrence Relations
  Rosalind ID: FIB
  Rosalind #: 004
  URL: http://rosalind.info/problems/fib

  Concept - Rabbits reproducing k offspring each month while
  you assume immortality.  Return how many rabbits after 'n'
  months.
  "
}

if(FALSE){
}

fib = function(n,k){
  a <- c(1,1)  
  for(i in seq(n-2)){  
    if(i == 1){
      a = append(a, a[2]+(a[1]*k))
    }else{
      a[1] = a[2]
      a[2] = a[3]
      a[3] = a[3]+(a[1]*k)
    }
  }
  return(a)
}

fib_list = function(n,k){
  fib_table <- c(1)
  for(i in seq(n-1)){
    if(i < 2){
      fib_table = append(fib_table, 1)
    }else{
      fib_table = append(fib_table, (fib_table[length(fib_table)]+(fib_table[length(fib_table)-1]*k)))
    }
  }
  return(fib_table)
}
