; A function f is defined by f(n) = n if n < 3 and 
; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3. Write a procedure that
; computes f by means of a recursive process. Write a procedure that
; computes f by means of an iterative process

; recursive
(define (compute n)
    (cond ((< n 3) n)
        (else ((>= n 3) ((+ (compute (- n 1)) 
                            (* 2 compute(- n 2)) 
                            (* 3 compute(- n 3))))))))

; iterative
(define (compute n)
    (define (iter a b c count)
        (if (= count 0)
            a
            (iter b c (+ c (* 2 b)) (- count 1))))
    (iter 0 1 2 n))