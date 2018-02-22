; Newton's method for cube roots based on the fact that if y is an approx
; of the cube root of x, a better appx is given by
; x / (y^2) + 2y
; --------------
;       3
; Use this formula to implement a cube-root procedure analagous to the
; square root procedure

(define (cubert-iter guess oldguess x)
    (if (good-enough guess oldguess)
        guess
        (cubert-iter (improve guess x) guess x)))

(define (good-enough guess oldguess)
    (< (abs (- guess oldguess)) (abs (* guess 0.0001))))

(define (square x)
    (* x x))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cubert x)
    (cubert-iter 1.0 0.0 x))