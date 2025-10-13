#!/usr/bin/env bash

# Copyright (c) 2025, Tyler Eagan
# License: BSD-3-Clause License

clear
echo -e "Starting Install...\n"
echo -e "\033[0;34mInstalling Addert_Linux v2\n\033[0m"
echo -e "Installing localclock_loop.sh"
sudo cp ~/addert/bin/localclock_loop.sh /bin
echo -e "Done"
echo -e "Installing localclock"
sudo cp ~/addert/bin/localclock /bin
echo -e "Done"
echo -e "Installing clockloop.sh"
sudo cp ~/addert/bin/clockloop.sh /bin
echo -e "Done"
echo -e "Installing addert"
sudo cp ~/addert/bin/addert /bin
echo -e "Done"
echo -e "Installing run_addert.sh"
sudo cp ~/addert/bin/run_addert.sh /bin
echo -e "Done"
echo -e "Installing clock.sh"
sudo cp ~/addert/bin/clock.sh /bin
echo -e "Done"
echo -e "Installing clock"
sudo cp ~/addert/bin/clock /bin
echo -e "Done\n"
echo -e "\033[0;32mInstall Complete!\033[0m"
