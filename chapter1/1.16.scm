; Design a procedure that evolves an iterative exponentiation process
; that uses successive squaring and uses a logarithmic number of steps.
; (b^n/2)^2 = (b^2)^n/2
; Keep an additional variable a and define the state transformation in
; such a way that the product ab^n is unchanged from state to state.
; At the beginning of the process, a is taken to be 1 and the answer is
; the value of a at the end of the process.

(define (expt b n)
    (define (expt-iter a b n)
        (cond (= n 0)
            a
            ((even? n) (expt-iter a (square b) (/ n 2))
            (else (expt-iter (* a a) b (- n 1))))))
    (expt-iter 1 b n)

(define (square x) (* x x))