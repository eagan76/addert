package adder

// Copyright (c) 2025-2026, Tyler Eagan
// License: BSD-3-Clause License


import "core:c"
import "core:c/libc"
import "core:fmt"
import "core:math"


error :: proc(msg: string, fix: string, procedure: string, code: int) -> int {
	fmt.printfln(
		"\x1b[31m    Error \x1b[0m-> \x1b[31m%v \n\x1b[0mFix: %v\n\nDEBUG: \nProcedure: %v\nError Code: %v",
		msg,
		fix,
		procedure,
		code,
	)
	/*
		Takes four args.

		Msg is intended to be the error it's self.

		Fix is for the uses's proper usage

		Procedure is under the debug section used to tell which proc the error is in

		Code is simply used to assign a value and code for the error

		In this program error code start at 10 and go by 10 so we would have 10, 20, 30...110...
	*/

	return 1
}

main :: proc() {
	// |V| 'y' or 'n' for enabled/disable |V|
	christmas_egg_enabled: rune = 'n'
	mode: rune = ']'
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

		fmt.printf("%.2f + %.2f = \x1b[34m%f\x1b[0m\n", float1, float2, sum_float)
	} else if mode == 'n' {

		num1: c.int = 0
		num2: c.int = 0

		fmt.print("Enter a number you want to add(1) -> ")

		libc.scanf("%d", &num1)

		fmt.print("Enter a number you want to add(2) --> ")

		libc.scanf("%d", &num2)

		sum_int: c.int = num1 + num2

		fmt.printf("%d + %d = \x1b[34m%d\x1b[0m\n", num1, num2, sum_int)
	} else if mode == 'v' {
		fmt.println("Addert-Unified v2.3.1-1 writen in Odin last update: 1-5-26")
	} else if mode == 'c' {
		fmt.println(
			" Copyright (c) 2026 Tyler Eagan, product is licensed under the BSD-3-Clause license\n",
		)
		// help page
	} else if mode == 'h' {
		fmt.println(
			"\nAddert-Unified Program: Terminal-Based Calculator With Extra Suff\nHELP:\nd = decimal mode\nn = full number mode can only use full numbers\nv = list version and last update\nc = list copyright notice\ns = suptraction mode can only use full numbers\nf = decimal subtraction mode\nm = multiplication mode can only use full numbers\nl = decimal multiplication mode\nq = division mode can only use full numbers (won't show remainder)\no = decimal division mode\nk = Convert C° to F°\nb = Convert F° to C°\n/ = Calculate the hypotenuse of a triangle\n8 = Find the square root of a number\n7 = Count forever\nt = list current local and universal time (Linux Only)\nr = list current local and universal time with loop like a clock (Linux Only)\ni = list current local time only (Linux Only)\nw = list current local time only with loop like a clock (Linux Only)\n\nu = Update addert dependencies, run addupt in the terminal for a full upgarde\n\nh = help page (current page)",
		)
	} else if mode == '?' {
		fmt.println(
			"Hello User, you have found the extra modes page: \n\nNOTE: all this suff will work on linux it may work on other OS too\n- = play og theme song must have mpv installed\n+ = play new theme song must mave mpv installed\nz = play a cool song must have mpv installed\n? = Extra Modes (current page)\n",
		)
	} else if mode == 's' {
		sub_int1: c.int = 0
		sub_int2: c.int = 0

		fmt.print("Enter a number you want to subtract(1) -> ")

		libc.scanf("%d", &sub_int1)

		fmt.print("Enter a number you want to subtract(2) --> ")

		libc.scanf("%d", &sub_int2)

		dif_int: c.int = sub_int1 - sub_int2

		fmt.printf("%d - %d = \x1b[32m%d\x1b[0m\n", sub_int1, sub_int2, dif_int)

	} else if mode == 'f' {
		sub_float1: c.float = 0.0
		sub_float2: c.float = 0.0

		fmt.print("Enter a decimal you what to subtract(1) -> ")

		libc.scanf("%f", &sub_float1)

		fmt.print("Enter a decimal you what to subtract(2) --> ")

		libc.scanf("%f", &sub_float2)

		dif_float: c.float = sub_float1 - sub_float2

		fmt.printf("%.2f - %.2f = \x1b[32m%f\x1b[0m\n", sub_float1, sub_float2, dif_float)


	} else if mode == 'm' {
		mul_int1: c.int = 0
		mul_int2: c.int = 0

		fmt.print("Enter a number you want to multiply(1) -> ")
		libc.scanf("%d", &mul_int1)

		fmt.printf("Enter a number you want to multiply(2) -->")
		libc.scanf("%d", &mul_int2)

		pro_int: c.int = mul_int1 * mul_int2
		fmt.printf("%d * %d = \x1b[33m%d\x1b[0m\n", mul_int1, mul_int2, pro_int)

	} else if mode == 'l' {
		mul_float1: c.float = 0.0
		mul_float2: c.float = 0.0

		fmt.print("Enter a decimal you want to multiply(1) -> ")
		libc.scanf("%f", &mul_float1)

		fmt.print("Enter a decimal you want to mulitply(2) --> ")
		libc.scanf("%f", &mul_float2)

		pro_float: c.float = mul_float1 * mul_float2
		fmt.printf("%.2f * %.2f = \x1b[33m%f\x1b[0m\n", mul_float1, mul_float2, pro_float)

	} else if mode == 'q' {
		divide_int1: c.int = 0
		divide_int2: c.int = 0

		fmt.print("Enter a number you want to divide(1) -> ")
		libc.scanf("%d", &divide_int1)

		fmt.print("Enter a number you what to divide(2) --> ")
		libc.scanf("%d", &divide_int2)

		quo_int: c.int = divide_int1 / divide_int2
		fmt.printf("%d / %d = \x1b[35m%d\x1b[0m\n", divide_int1, divide_int2, quo_int)

	} else if mode == 'o' {
		divide_float1: c.float = 0
		divide_float2: c.float = 0

		fmt.print("Enter a decimal you want to divide(1) -> ")
		libc.scanf("%f", &divide_float1)

		fmt.print("Enter a decimal you want to divide(2) --> ")
		libc.scanf("%f", &divide_float2)

		quo_float: c.float = divide_float1 / divide_float2
		fmt.printf("%f / %f = \x1b[35m%f\x1b[m\n", divide_float1, divide_float2, quo_float)

	} else if mode == 't' {
		libc.system("clock")
	} else if mode == 'r' {
		libc.system("clockloop.sh")
	} else if mode == 'i' {
		libc.system("localclock")
	} else if mode == 'w' {
		libc.system("localclock_loop.sh")
	} else if mode == 'k' {
		// C° -> F°
		celsius1: f32 = 0.0
		fahrenheit1: f32 = 0.0

		fmt.print("Enter the C° you want to convert to F° >> ")
		libc.scanf("%f", &celsius1)

		fahrenheit1 = (celsius1 * 9.0 / 5.0) + 32.0

		fmt.printfln("%f°C = \x1b[36m%f°F\x1b[0m", celsius1, fahrenheit1)
	} else if mode == 'b' {
		// F° -> C°
		fahrenheit2: f32 = 0.0
		celsius2: f32 = 0.0

		fmt.print("Enter the F° you want to convert to C° >> ")
		libc.scanf("%f", &fahrenheit2)

		celsius2 = (fahrenheit2 - 32.0) * 5.0 / 9.0

		fmt.printfln("%f°F = \x1b[36m%f°C\x1b[0m", fahrenheit2, celsius2)
	} else if mode == 'u' {
		fmt.print("Updating Addert Dependencies\n\n")
		fmt.println("Pulling Deps... \n")
		libc.system("git -C \"$HOME/addert\" pull")
		libc.system("addupt_deps.sh")
	} else if mode == 'z' {
		libc.system("mpv ~/addert/music/addert_theme2.mp3")

		fmt.println(
			"\nSong Credit: \n\nHomeworld Collapse by Arthur Vyncke | https://soundcloud.com/arthurvost\nCreative Commons / Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)\nhttps://creativecommons.org/licenses/by-sa/3.0/deed.en_US\n",
		)

		fmt.println("\n\nThank You For Useing Addert, eagan76")
	} else if mode == '+' {
		libc.system("mpv ~/addert/music/Addert_Theme3.wav")
		fmt.println("\nSong Credit: \n\nAddert Theme No. 1, by Tyler Eagan")

		fmt.println("\n\nThank You For Useing Addert, Tyler Eagan")
	} else if mode == ';' && christmas_egg_enabled == 'y' {
		libc.system("mpv ~/addert/music/christmasegg.wav")
		fmt.println(
			"\nSong Credit: \n\n Title: We Wish You a Merry Christmas – Arranged for Strings\n Creator: Gregor Quendel\n License: Creative Commons Attribution–NonCommercial 4.0 (CC BY-NC 4.0)",
		)
		fmt.println("\n\nMerry Christmas and Thanks for using addert :]  !\n")
	} else if mode == ';' && christmas_egg_enabled == 'n' {
		error("Try again between 12/18-1/5 ;)", "Wait 'til Dec 18", "main", 69)
	} else if mode == '-' {
		libc.system("mpv ~/addert/music/addert_theme.wav")

		fmt.println("\nSong Credit: \n\nOG Addert Theme by Tyler Eagan")
		fmt.println("\n\nThank You For Using Addert, Tyler Eagan")

	} else if mode == 'j' && christmas_egg_enabled == 'y' {
		libc.system("mpv ~/addert/music/561045__caveanu__als_pv_ds.wav")

		fmt.println(
			"\nSong Credit: \n\nALS_PV_ds.wav by CaveAnu \nhttps://freesound.org/s/561045/ \nLicense: Attribution 3.0",
		)
		fmt.println("\n\nHappy New Year!")
	} else if mode == '/' {
		number1: f64
		number2: f64
		fmt.print("Enter a side of a triangle(1) -> ")
		libc.scanf("%lf", &number1)
		fmt.print("Enter a side of a triangle(2) --> ")
		libc.scanf("%lf", &number2)
		pre_hypotenuse: f64 = (number1 * number1) + (number2 * number2)
		hypotenuse: f64 = math.sqrt(pre_hypotenuse)
		fmt.printfln("Hypotenuse = \x1b[33m%f\x1b[0m", hypotenuse)
	} else if mode == '8' {
		// Square Root
		sqrt_input: f64
		fmt.print("Enter a number to square >> ")
		libc.scanf("%lf", &sqrt_input)
		sqrt_output: f64 = math.sqrt(sqrt_input)
		fmt.printfln(
			"NOTE: The Output Will Cut Off After The Hundred-Quintillionths Place\nThe Square Root of %.4f = \x1b[34m%.20f\x1b[0m",
			sqrt_input,
			sqrt_output,
		)
	} else if mode == '.' || mode == ',' {
		fmt.println("Exiting...\n")
		libc.system("sleep 1")
		fmt.println("Goodbye!")
		libc.system("sleep 0.5")
	} else if mode == '7' {
		loop_num: int
		for {
			fmt.printfln("Count -> %d", loop_num)
			libc.system("sleep .5")
			loop_num += 1
		}
	} else {
		error("Mode Unknown", "Use The Mode \'h\' Access The Help Menu", "main", 10)
	}
}

