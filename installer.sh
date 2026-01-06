#!/usr/bin/env bash

# Copyright (c) 2025, Tyler Eagan
# License: BSD-3-Clause License

clear
echo -e "Starting Install...\n"
sleep 1
echo -e "\033[0;34mInstalling Addert Unified v2.3.1-1\n\033[0m"
sleep 0.5
echo -e "Installing localclock_loop.sh..."
sleep 1
sudo cp ~/addert/bin/localclock_loop.sh /bin
echo -e "Done\n"
echo -e "Installing localclock..."
sleep 1
sudo cp ~/addert/bin/localclock /bin
echo -e "Done\n"
echo -e "Installing clockloop.sh..."
sleep 1
sudo cp ~/addert/bin/clockloop.sh /bin
echo -e "Done\n"
echo -e "Installing addert..."
sleep 1
sudo cp ~/addert/bin/addert /bin
echo -e "Done\n"
echo -e "Installing run_addert.sh..."
sleep 1
sudo cp ~/addert/bin/run_addert.sh /bin
echo -e "Done\n"
echo -e "Installing clock.sh..."
sleep 1
sudo cp ~/addert/bin/clock.sh /bin
echo -e "Done\n"
echo -e "Installing clock..."
sleep 1
sudo cp ~/addert/bin/clock /bin
echo -e "Done\n"
sleep 1
echo -e "Installing addupt..."
sleep 1
sudo cp ~/addert/bin/addupt /bin
echo -e "Done\n"
sleep 1
echo -e "Installing addupt_deps..."
sleep 1
sudo cp ~/addert/bin/addupt_deps.sh /bin
sudo cp ~/addert/bin/cdert.sh /bin
echo -e "Done\n"
sleep 1
echo -e "\033[0;32mInstall Complete!\033[0m"
