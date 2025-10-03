package adder

import "core:c"
import "core:c/libc"
import "core:fmt"

main :: proc() {
	mode: rune = 'i'
	fmt.print("Mode: type h for help -> ")
	libc.scanf("%c", &mode)

	if mode == 'd' {
		float1: c.float = 0.0
		float2: c.float = 0.0
		fmt.print("Enter the decimal you want to add(1) -> ")
		libc.scanf("%f", &float1)
		fmt.print("Enter the decimal you want to add(2) --> ")
		libc.scanf("%f", &float2)
		sum_float: c.float = float1 + float2
		libc.printf("%.2f + %.2f = \x1b[34m%.2f\x1b[0m\n", float1, float2, sum_float)
	} else if mode == 'n' {
		num1: c.int = 0
		num2: c.int = 0
		fmt.print("Enter a number you want to add(1) -> ")
		libc.scanf("%d", &num1)
		fmt.print("Enter a number you want to add(2) --> ")
		libc.scanf("%d", &num2)
		sum_int: c.int = num1 + num2
		libc.printf("%d + %d = \x1b[34m%d\x1b[0m\n", num1, num2, sum_int)
	} else if mode == 'v' {
		fmt.println("Addert v1.4.3 writen in odin last update 10-03-25")
	} else if mode == 'c' {
		fmt.println("(c) 2025 Tyler Eagan, product is licensed under the BSD-3-Clause license\n")
	} else if mode == 'h' {
		fmt.println(
			"\nAddert Program For Adding Suff\n\nHELP:\nd = decimal mode\nn = full number mode can only use full numbers\nv = list version and last update\nc = list copyright notice\nh = help page (current page)",
		)
	} else {
		fmt.println("\x1b[31mError Invalid Mode\x1b[0m\nUse h For The Help Page")
	}

}
