; why can't "if" be created as an ordinary procedure instead of as a
; special form? Using a "new-if" for finding square roots, explain why
; this will not work

The square root computations will get stuck in a loop for the else-clause
since this will keep being evaluated, calling the procedure again. This
is because the condition statement is wrapped in a function.