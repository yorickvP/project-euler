; What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
(define (make-divisible n m)
    (if (= (modulo n m) 0) n (* n (numerator (/ 1 (- (/ n m) (floor (/ n m))))))))

(define (make-divisible-from-to x y)
    (let iteration ((n x) (i x))
        (if (= i y) n (iteration (make-divisible n i) (+ i 1)))))
(display (make-divisible-from-to 1 20))


