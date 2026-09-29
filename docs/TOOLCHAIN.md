# Toolchain

EduC is intentionally not tied to one compiler.

## Qualified host compilers

- GCC
- Clang

The default language baseline is C17 during the early course. Later chapters may discuss newer C revisions explicitly, but examples must not silently depend on extensions.

## Required development loop

1. edit source
2. compile with warnings enabled
3. fix diagnostics rather than suppressing them casually
4. run and observe
5. debug/inspect when behavior differs from the prediction

The Makefile is the portable entry point for repository checks: `make check`.
