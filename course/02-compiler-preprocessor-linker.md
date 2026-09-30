# 02 — Compiler, preprocessor and linker

## Why this matters

A C source file is not an executable. Understanding the build pipeline makes diagnostics, headers, libraries and multi-file programs much less mysterious.

## Learning objectives

After this chapter you can distinguish preprocessing, compilation and linking; explain declarations versus definitions; and build a program made from multiple translation units.

## Mental model

Think of each `.c` file as a separate translation unit. The preprocessor handles directives such as `#include`; the compiler translates each unit; the linker combines the resulting object files and resolves external symbols.

## Small complete example

Use `examples/build-model/`. It deliberately separates `main.c`, the declaration in `greeting.h`, and the definition in `greeting.c`.

## Walkthrough

`main.c` can call `greeting` because the header provides its declaration. The function body lives in another translation unit. Both source files must be compiled and their object code linked into the final program.

Try the stages separately:

```sh
cc -std=c17 -E examples/build-model/main.c > build-model.i
cc -std=c17 -c examples/build-model/main.c -o main.o
cc -std=c17 -c examples/build-model/greeting.c -o greeting.o
cc main.o greeting.o -o build-model
```

## Under the hood

A declaration tells the compiler a name and type exist. A definition supplies the object or function. The linker resolves references between translation units. Removing `greeting.o` therefore produces a linker error rather than a C syntax error.

## Common mistakes

Do not `#include` a `.c` file to solve linking. Put shared declarations in headers. Header guards prevent accidental repeated inclusion within a translation unit.

## Exercises

1. Change the returned greeting.
2. Compile with `-E` and find the declaration from the header.
3. Omit `greeting.o` during linking and explain the diagnostic.
4. Add a second function declared in the header and defined in `greeting.c`.

## Checkpoint

Explain why a compiler can accept `main.c` even though the body of `greeting` is elsewhere, and why the linker still needs that body.

## Further exploration

Use `nm` or your platform's equivalent to inspect defined and undefined symbols in the object files.
