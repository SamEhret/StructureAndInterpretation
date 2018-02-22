The square root computations will get stuck in a loop for the else-clause
since this will keep being evaluated, calling the procedure again. This
is because the condition statement is wrapped in a function.