; By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
(define (sum-fibonacci-below below)
    (let iteration ((n 0) (m 1))
        (if (< n below) (+ (iteration m (+ n m))
                             (if (= (modulo n 2) 0) n 0)) 0)))
(display (sum-fibonacci-below 4000000))

