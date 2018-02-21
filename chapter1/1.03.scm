; define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers

(define (square a) (* a a))

(define (two-squares x y z) 
    (- (+ (square x) (square y) (square z))
        (square (min x y z))))

; test - answer = 13
(two-squares 2 3 1)