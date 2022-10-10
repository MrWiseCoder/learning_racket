#lang racket

(define (func) 
  (define a null)
  (printf "Welcome to guessing game\n")
  (define r (random 10))
  (for ([i 4])
    (printf "Please enter a value: ")
    (set! a (string->number (read-line (current-input-port) 'any)))
    #:break (equal? a r)
      (printf " --- U sucked big time --- \n")
  )
  (if (equal? a r)
    (printf "\t *** U won *** \n")
    (writeln (string-append "Number was: " (number->string r)))
    )
  )
    
(func)
    
