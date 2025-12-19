#!/usr/bin/env bash

# Copyright (c) 2025-2026, Tyler Eagan
# License: BSD-3-Clause License

sleep 1
echo -e "\033[0;34mUpgrading Addert Deps... \n\033[0m"
sleep 0.5
echo -e "Updating localclock_loop.sh..."
sleep 1
sudo cp ~/addert/bin/localclock_loop.sh /bin
echo -e "Done\n"
echo -e "Updating localclock..."
sleep 1
sudo cp ~/addert/bin/localclock /bin
echo -e "Done\n"
echo -e "Updating clockloop.sh..."
sleep 1
sudo cp ~/addert/bin/clockloop.sh /bin
echo -e "Done\n"
echo -e "Updating run_addert (addert loop)..."
sleep 1
sudo cp ~/addert/bin/run_addert.sh /bin
echo -e "Done\n"
echo -e "Updating clock.sh..."
sleep 1
sudo cp ~/addert/bin/clock.sh /bin
echo -e "Done\n"
echo -e "Updating clock..."
sleep 1
sudo cp ~/addert/bin/clock /bin
echo -e "Done\n"
sleep 1
echo -e "\033[0;32mDeps Update Complete!\n Run 'addupt' for a full upgrade\033[0m"
