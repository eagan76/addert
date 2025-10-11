package clock

import "core:c"
import "core:c/libc"
import "core:fmt"
import "core:time"

main :: proc() {
	uni_time := time.now()
	libc.system("clock.sh")
	fmt.printfln("\x1b[33m Universal Time: \x1b[34m%v\x1b[0m", uni_time)
}

