## Addert is a Program made for me to Learn how to use git, odin and bash scripting it will get more complex in the future.
## Linux/WSL Install 
### 1.
```
git clone https://github.com/eagan76/addert.git
```
### 2.
```
cd addert
```
###  3.
```
./installer.sh
```
## Run Addert
```
addert
```
Or 
```
run_addert.sh
```
This will restart program after stop
## Windows Install
### 1.
Open CMD or PowerShell
```
git clone https://github.com/eagan76/addert.git
```
### 2.
```
cd addert\bin
```
### Run Addert CMD
```
addert.bat
```
### Run Addert PowerShell
```
.\addert.bat
```

Do not run addert.exe you will have issuse with simbols being rendered weird.
###
For windows I've been unsuccessful at making install scripts, and scripts that loop the program so you can go and manually set the executable as an environment variable or you could just run it inside of the directory it's in. 


## Updating
### Linux 
To update addert and other suff on linux all you have to do is run
```
addupt
```
### Windows
For Windows there is no update script so insted run inside of your local addert repo
```
git pull
```
## Compiling
### UNIX-Like systems e.g. Linux, MacOS or the BSDs
If you wish to compile addert your self you will need the odin compiler run your package manager e.g ArchLinux `pacman -S odin` MacOS (HomeBrew) `brew install odin` FreeBSD `pkg install odin` Debian/Ubuntu Linux `apt install odin` after you install the compiler make sure that you are on the most recent version with `odin version` then you need to clone the addert repo make sure you have git intalled use your package manager for that again once you have git installed to clone the repo run `git clone https://github.com/eagan76/addert.git` now you need to cd into the repo with `cd addert/src` if you run `ls` you will see two .odin files `addert_linux.odin` and `addert_win.odin`, addert_linux and addert_win will both work on UNIX-Like systems addert_win.odin excludes the clock because it relies on some bash scripts if you don't what the clock you can use addert_win. If you want the clock you will need to use addert_linux it also might be a good idea to install bash on your system with your package manager if you are using some kind of linux distro it will probably be installed already now it's time to compile To compile addert_win run `odin build addert_win.odin -file -out="addert"` if you want to compile addert_linux run `odin build addert_linux.odin -file -out"addert"` now you should be able to run ./addert and it will start addert if you want to run addert from any where in the terminal `mv` addert to somewhere in your path run `$PATH` to figure that out.
### Windows 
For compiling addert for Windows you will need the Build Tools for Visual Studio 2022 this is needed to run the odin compiler go to https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022 to downloads it. After you install the Build Tools you will need the odin compiler open CMD or PowerShell and run `winget install odin` Now we need to clone the repo make sure you have git installed run `winget install git` to install git to clone the repo run `git clone https://github.com/eagan76/addert.git` then we need to cd into the local addert repo run `cd addert\src` now run dir (CMD) or ls (PowerShell) to see whats in the directory there should be `addert_linux.odin` and `addert_win.odin` we need to compile addert_win.odin run `odin build addert_win -file -out="addert.exe"` after it's done you can run `.\addert.exe` (PowerShell) or `addert.exe` (CMD) you will run into issues with fonts specificaly the degree sign if you move addert.exe to the bin dir in the local repo and run `addert.bat` instead you shouldn't run into these issuse also it might be a decent idea to set environment variable so you can run addert.bat any where from your CMD or PowerShell.
