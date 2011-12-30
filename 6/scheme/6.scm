;Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
(define (sum-squares x y)
    (+ (square x) (if (= x y) 0 (sum-squares (+ x 1) y))))
(define (square-sum x y)
    (square (let sum-range ((x x) (y y)) (+ x (if (= x y) 0 (sum-range (+ x 1) y))))))
(define (dif-square-sum x y) (- (square-sum x y) (sum-squares x y)))

(display (dif-square-sum 1 100))

