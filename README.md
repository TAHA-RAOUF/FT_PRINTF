ft_printf is a custom implementation of the C standard library function printf. The goal of this project is to understand variadic functions, format specifiers, and implement a flexible, reusable version of printf from scratch, while adhering to the principles of the 42 curriculum.

This project will take a format string and a list of arguments, then print the formatted string to the standard output. It handles common format specifiers such as strings (%s), integers (%d), and characters (%c), as well as special cases like printing a literal percent (%%).

Features
Support for Format Specifiers:

%s for strings
%d for integers (signed)
%c for characters
%% for printing a literal percentage sign
Other format specifiers may be added upon further extension (e.g., %x, %p).
Variadic Functionality:
Uses the stdarg.h library to handle an indefinite number of arguments. The function accepts a format string, followed by a list of arguments that match the format specifiers.

Efficient Memory Management:
The implementation avoids unnecessary allocations and handles each type carefully, ensuring the output is correct.

Character Count:
The function returns the total number of characters printed, allowing the caller to track output length (similar to the standard printf).

How it works
ft_printf processes the format string one character at a time:

If the character is not a format specifier (i.e., not a %), it's printed directly.
When a % is encountered, the function looks at the next character to determine the type of specifier and handles the corresponding argument (string, integer, character, etc.).
The function then prints the value and continues scanning the rest of the format string.
After completing the printing, it returns the total number of characters printed.
