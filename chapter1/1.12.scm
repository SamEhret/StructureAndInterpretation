; Pascal's Triangle
;     1
;    1 1
;   1 2 1
;  1 3 3 1
; 1 4 6 4 1
;    ...
; Numbers at edge are all 1 and each number inside is the sum of the two
; above it. Write a procedure that computes elements of Pascal's Triangle
; by means of a recursive proces

    (define (build_tree row count)
        (if (or (= count 1) (= count row))
            1
            (+ (build_tree (- row 1) (- count 1)) (build_tree (- row 1) count))