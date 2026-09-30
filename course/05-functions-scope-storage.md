# 05 — Functions, scope and storage duration

## Why this matters

Functions let us name operations, isolate responsibilities and build interfaces. Scope and lifetime rules tell us where names are visible and how long objects exist.

## Learning objectives

After this chapter you can declare, define and call functions; pass arguments and return values; distinguish block and file scope; explain automatic and static storage duration; and use `static` for an internal helper.

## Mental model

A function call creates a new execution context for its parameters and automatic local objects. Names obey lexical scope rules, while object lifetime is governed by storage duration. These concepts are related but not identical.

## Small complete example

`examples/functions/functions.c` defines a file-local helper named `square` and calls it from `main`.

## Walkthrough

The function's parameter `value` is local to `square`. `input` and `result` are local to `main`. The leading `static` on the file-scope function gives it internal linkage, so it is not exported for other translation units to call by that name.

## Under the hood

A typical implementation passes arguments according to an ABI and creates stack-frame state for calls, but ISO C describes behavior rather than requiring a particular stack. Later we inspect generated assembly and calling conventions explicitly.

## Common mistakes

Do not return a pointer to an automatic local object after its lifetime has ended. Do not use global state merely to avoid parameters. A declaration and a definition have different jobs, just as in chapter 2.

## Exercises

1. Add `cube(int)`.
2. Write `max_int(int, int)` without global variables.
3. Move function declarations above `main` and definitions below it.
4. Deliberately reference a local variable outside its scope and interpret the diagnostic.

## Checkpoint

Explain the difference between the scope of `result`, its automatic storage duration, and the internal linkage of `square`.

## Further exploration

Generate assembly for `square` with optimization disabled and then enabled. Compare the output and look for cases where the compiler inlines the function.
