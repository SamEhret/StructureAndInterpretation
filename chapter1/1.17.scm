; The following multiplication procedure assumes that our language can
; only add, and is analogous to the expt procedure.
;(define (* a b)
;    (if (= b 0)
;        0
;        (+ a (* a (- b 1)))))
; This algoritm takes a number of steps that is linear in b. Now supporse
; we include, togehter with addition, operations double, which doubles
; an integer and halve which divides an even integer by 2. Using these,
; design a multiplication procedure analogous to fast-expt that uses
; a logarithmic number of steps.

(define (double a) (+ a a))
(define (halve a) (/ a 2))
(define (even? b)
    (= (remainder b 2) 0))

(define (multiply a b)
    (cond ((= b 0) 0)
        ((even? b) (double (* a (halve b))))
        (else (+ a (multiply a (- b 1))))))