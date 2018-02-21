; Provided:
; (define (p) (p))
; (define (test x y)
;    (if (= x 0)
;        0
;        y))

; Then evaluates:
; (test 0 (p))

; What applicative-order behavior is observed?
(test 0 (p))
(test 0 (p))
...

Keeps going because (p) is continuously set as (p)

; What normal-order behavior is observed?
(test 0 (p))
(if (= 0 0) 0 (p))
(if #t 0 (p))
0

Evaluation progresses step by step, to 0