; Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.
; http://projecteuler.net/index.php?section=problems&id=52

(define (same-digits? n m)
    (equal?
        (sort (string->list (number->string n)) char<?)
        (sort (string->list (number->string m)) char<?)))
(define (same-digits-1-6? n)
    (and
        (same-digits? n (* n 2))
        (same-digits? n (* n 3))
        (same-digits? n (* n 4))
        (same-digits? n (* n 5))
        (same-digits? n (* n 6))))
(define (find-smallest-same-digits n)
    (if (same-digits-1-6? n)
        n
        (find-smallest-same-digits (+ n 1))))
(display (find-smallest-same-digits 1))
