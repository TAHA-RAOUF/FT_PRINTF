# ft_printf - Custom Implementation of printf

## Introduction

This repository contains my custom implementation of the **printf** function, called `ft_printf`. This project is part of the 42 curriculum and aims to recreate the behavior of the standard `printf` function from the C standard library.

## Features

`ft_printf` supports:
- Character output (`%c`)
- String output (`%s`)
- Pointer address (`%p`)
- Decimal and integer numbers (`%d` and `%i`)
- Unsigned integer (`%u`)
- Hexadecimal (lowercase `%x`, uppercase `%X`)
- Percentage symbol (`%%`)

## Implementation Details

### Function Prototype
```c
int ft_printf(const char *format, ...);
```

### How It Works
1. **Parsing Format String:**
   - `ft_printf` iterates through the format string, checking for `%` conversion specifiers.
2. **Handling Arguments:**
   - Uses `va_list` to retrieve the arguments corresponding to the format specifiers.
3. **Printing Output:**
   - Converts the values and writes them to standard output using `write()`.

### Example Usage
```c
#include "ft_printf.h"

int main()
{
    ft_printf("Hello, %s!\n", "world");
    ft_printf("Decimal: %d, Hex: %x\n", 42, 42);
    return 0;
}
```

### Sample Output
```
Hello, world!
Decimal: 42, Hex: 2a
```

## How to Compile and Use
1. Clone the repository:
   ```sh
   git clone https://github.com/YOUR_GITHUB_USERNAME/ft_printf.git
   cd ft_printf
   ```
2. Compile the library:
   ```sh
   make
   ```
3. Link it with your program:
   ```sh
   gcc main.c libftprintf.a -o my_program
   ```
4. Run your program:
   ```sh
   ./my_program
   ```

## Project Constraints
- No use of standard library functions (except `write`, `malloc`, `free`, and `va_*` macros).
- Handles multiple specifiers in a single format string.
- Supports `%p` for printing memory addresses.

## Conclusion
This project was a great opportunity to understand formatted output, variadic functions, and efficient string manipulation in C. Feel free to fork and improve it!

