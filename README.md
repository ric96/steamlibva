 Steam In-Home Streaming with HW accelleration
 Ubuntu 16.06 with Intel HD

First install i386 drivers:
# sudo apt-get install i965-va-driver:i386
# sudo apt-get install libva1:i386
# sudo apt-get install libva-x11-1:i386
# sudo apt-get install libva-glx1:i386

Second, remove steam librarires:
rm ~/.steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libva*

Download and execute script:
# wget http://www.jarzebski.pl/files/upboard/steam_fix/fix_steam_links.sh
# chmod +x fix_steam_links.sh
# ./fix_steam_links.sh