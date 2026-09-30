# 03 — Types, values and expressions

## Why this matters

C makes the representation and interpretation of data unusually visible. Types affect valid values, arithmetic, conversions, interfaces and memory use.

## Learning objectives

After this chapter you can declare basic scalar objects, choose suitable integer and floating types, read expressions, use `sizeof`, and recognize that implicit conversions deserve attention.

## Mental model

An object has a type, a value and a lifetime. An expression computes a value and also has a type. Operators do not work on abstract numbers alone: C applies type rules and conversions before producing a result.

## Small complete example

Build and run `examples/types/types.c`. It uses signed integers, unsigned integers, floating point and `<limits.h>` rather than assuming a particular integer width.

## Walkthrough

The suffix `U` makes `12U` unsigned. `3.3` is a `double`. The format specifiers supplied to `printf` must match the promoted argument types. `INT_MIN` and `INT_MAX` expose the implementation's `int` range.

## Under the hood

C specifies minimum ranges and relationships but does not require every implementation to use the same representation width for every fundamental type. Portable programs ask the implementation instead of assuming unnecessarily.

Integer division discards the fractional part: `5 / 2` is integer arithmetic, while `5.0 / 2.0` is floating-point arithmetic.

## Common mistakes

Avoid assuming `int` is always exactly 32 bits. Be careful when mixing signed and unsigned arithmetic. A compiler warning about conversion is information about a possible change of value, not cosmetic noise.

## Exercises

1. Print `sizeof(int)`, `sizeof(long)` and `sizeof(double)`.
2. Predict and then print `5 / 2` and `5.0 / 2.0`.
3. Compile with the repository warning flags and investigate any conversion warning you deliberately create.
4. Use `<stdint.h>` to declare an `int32_t` when the implementation provides it.

## Checkpoint

Explain why the source text `5 / 2` and `5.0 / 2.0` produces different results and why a portable program should not infer the width of `int` from one computer.

## Further exploration

Inspect `CHAR_BIT`, fixed-width integer types, and the generated assembly for a few simple arithmetic expressions.
