# 04 — Decisions and loops

## Why this matters

Programs become useful when they can select actions and repeat work. C keeps these mechanisms small and explicit.

## Learning objectives

After this chapter you can use `if`/`else`, `for`, `while`, `do`/`while`, `switch`, comparison and logical operators, and reason about loop termination.

## Mental model

Control flow chooses the next statement to execute. Conditions in C are scalar expressions: zero means false and nonzero means true. A loop must have a path toward termination unless it is intentionally infinite.

## Small complete example

`examples/control-flow/control-flow.c` sums the even integers from 1 through 10 and returns failure if the computed result is unexpected.

## Walkthrough

The `for` statement contains initialization, condition and iteration. `value % 2 == 0` detects even values. Braces make the controlled block explicit. The final conditional expression turns the expected result into a useful process exit status.

## Under the hood

At machine level, many high-level control constructs become comparisons and branches. The exact generated instructions are an implementation detail, but inspecting them later will connect C's structured control flow to the processor.

## Common mistakes

Do not confuse assignment `=` with equality `==`. Watch boundary conditions such as `<` versus `<=`. Avoid changing a loop variable in several unrelated places unless the algorithm genuinely requires it.

## Exercises

1. Sum odd values instead.
2. Rewrite the loop using `while`.
3. Print FizzBuzz for 1 through 30.
4. Write a `switch` that maps numbers 1–3 to three words and handles all other values with `default`.

## Checkpoint

Before running it, predict the values of `value` that modify `sum`, the final sum, and the program's exit status.

## Further exploration

Compile a tiny `if` and loop with `-S` and identify conditional and unconditional branches in the generated assembly.
