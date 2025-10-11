package clock

import "core:c"
import "core:c/libc"

main :: proc() {
	libc.system("clock.sh")
}

