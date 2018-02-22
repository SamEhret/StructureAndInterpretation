; The "good-enough?" test will not work for very small or large numbers.
; Explain with examples how this test fails for these numbers.

; Small Number Example
sqrt(0.0001)
guess = 1
.0001 / 1 = .0001
(.0001 + 1) / .0001 = 10,000.0001

guess2 = 10,000.0001
.0001 / 10,000.0001 = 0.00000001
(.00000001 + 10,000.0001) / .0001 = 100,000,001.0001

The guesses will keep growing and getting farther and farther away from
the actual square root of the given number.

; Large Number Example
sqrt(100,000,000)
guess = 1
100,000,000 / 1 = 100,000,000
(100,000,000 + 1) / 100,000,000 = 1.00000001

guess2 = 1.00000001
100,000,000 / 1.00000001 = 99,999,999
(99,999,999 + 1.00000001) / 100,000,000 = 1

The guesses will keep ending up around 1 and the procedure will not move
closer to the correct answer, since the guesses are not changing.

; Alternative is to watch how much the guess changes between iterations
; and to stop when the change is a small fraction of the guess. Design a
; square-root procedure that uses this kind of end test. Does this work
; for very large and small numbers?

(define (sqrt-iter guess oldguess x)
    (if (good-enough? guess oldguess)
        guess
        (sqrt-iter (improve guess x) guess
            x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess oldguess)
    (<= (abs (- guess oldguess))
        (* guess 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 2.0 x))