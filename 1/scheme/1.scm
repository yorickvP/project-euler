; Find the sum of all the multiples of 'x' or 'y' below 'below'
(define (find-sum-multiples i below)
    (let iteration ((curno 0))
        (if (< curno below)
            (+ curno (iteration (+ curno i))) 0)))

(define (find-sum-multiples-x-or-y x y below)
    (- (+
        (find-sum-multiples x below)
        (find-sum-multiples y below))
    (find-sum-multiples (* x y) below)))
(display (number->string (find-sum-multiples-x-or-y 3 5 1000)))

