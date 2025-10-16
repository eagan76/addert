# Copyright (c) 2025, Tyler Eagan
# License: BSD-3-Clause

import subprocess

option = input("Addcomp >> A = addert_linux.odin B = addert_win.odin -> ")

if option == "A":
    subprocess.run("odin build addert_linux.odin -file -out=addert", shell=True)
    print("Exited, Reason = Program Ended")
elif option == "B":
    subprocess.run("odin build addert_win.odin -file -out=addert", shell=True)
    print("Exited, Reason = Program Ended")
else:
    print("Exited, Reason = Error: Option Unknown")
    


    
