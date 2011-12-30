; How many Lychrel numbers are there below ten-thousand?
(define (palindrome? n)
    ((lambda (n) (equal? (reverse n) n)) (string->list (number->string n))))
(define (reverse-add n)
    (+ n (string->number (list->string (reverse (string->list (number->string n)))))))
(define (is-lychrel-below-i n i)
    (let ((n (reverse-add n)))
    (cond
        ((= i 0) #t)
        ((palindrome? n) #f)
        (else (is-lychrel-below-i n (- i 1))))))
(define (count-lychrel-between-x-y-below-i x y i)
    (let iteration ((currentnumber x))
        (if (= currentnumber y) 0
                (+ (iteration (+ currentnumber 1))
                   (if (is-lychrel-below-i currentnumber i) 1 0)))))
(display (count-lychrel-between-x-y-below-i 1 10000 50))

