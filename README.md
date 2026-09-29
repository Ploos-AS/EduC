# EduC

**Learn C from first principles to confident, portable programming.**

EduC is Ploos AS' general introduction to the C programming language. It starts from zero and builds toward a solid understanding of modern, portable C, including how C maps to memory and machine-level execution.

EduC is the common foundation for more specialized courses such as **EduPOSIX** and **EduAmigaC**.

## Goals

By the end of the course, the learner should be able to:

- read and write idiomatic C
- understand compilation, linking and translation units
- reason about integers, pointers, arrays, strings and memory
- use structs, enums, unions and function pointers
- design small reusable libraries
- understand stack, heap, object lifetime and ownership conventions
- diagnose undefined behavior and common memory bugs
- use a debugger, compiler warnings and sanitizers
- write portable command-line programs
- understand enough generated assembly to connect C with the machine

## Scope

EduC teaches **the C language itself**. Operating-system-specific system programming belongs in sibling courses:

- [EduPOSIX](https://github.com/Ploos-AS/EduPOSIX) — POSIX/Linux systems programming
- [EduAmigaC](https://github.com/Ploos-AS/EduAmigaC) — AmigaOS systems programming in C

## Course structure

1. Your first C program
2. The compiler toolchain
3. Values, types and expressions
4. Control flow
5. Functions and scope
6. Arrays and strings
7. Pointers
8. Structs, enums and unions
9. Dynamic memory
10. Files and streams
11. Multi-file programs
12. Libraries and interfaces
13. The C memory model
14. Undefined and implementation-defined behavior
15. Defensive and secure C
16. Debugging and diagnostics
17. Testing
18. Portability
19. Reading generated assembly
20. Capstone projects

## Teaching philosophy

The course is practical, but every important abstraction is connected to what happens underneath. Examples should be small enough to understand completely before larger projects are introduced.

Where useful, chapters compare C source with generated assembly and memory layouts.

## Languages and publishing

The course is intended to be available in both **English and Norwegian** and published as web material and book formats through the Ploos publishing toolchain.

## Status

**M0 — Project foundation**

The initial curriculum and repository structure are being established.

## License

Course material and documentation will use an appropriate Creative Commons license. Source code examples are intended to use the MIT license unless otherwise stated.
