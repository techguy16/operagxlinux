echo "
░█████╗░██████╗░███████╗██████╗░░█████╗░  ░██████╗░██╗░░██╗  
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗  ██╔════╝░╚██╗██╔╝  
██║░░██║██████╔╝█████╗░░██████╔╝███████║  ██║░░██╗░░╚███╔╝░  
██║░░██║██╔═══╝░██╔══╝░░██╔══██╗██╔══██║  ██║░░╚██╗░██╔██╗░  
╚█████╔╝██║░░░░░███████╗██║░░██║██║░░██║  ╚██████╔╝██╔╝╚██╗  
░╚════╝░╚═╝░░░░░╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝  ░╚═════╝░╚═╝░░╚═╝  

██╗░░░░░██╗███╗░░██╗██╗░░░██╗██╗░░██╗  ██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░██╗░░░░░███████╗██████╗░
██║░░░░░██║████╗░██║██║░░░██║╚██╗██╔╝  ██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░██╔════╝██╔══██╗
██║░░░░░██║██╔██╗██║██║░░░██║░╚███╔╝░  ██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░██║░░░░░█████╗░░██████╔╝
██║░░░░░██║██║╚████║██║░░░██║░██╔██╗░  ██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██║░░░░░██╔══╝░░██╔══██╗
███████╗██║██║░╚███║╚██████╔╝██╔╝╚██╗  ██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗███████╗███████╗██║░░██║
╚══════╝╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝  ╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝╚══════╝╚═╝░░╚═╝
"
sleep 5
sudo dpkg --add-architecture i386 

sudo apt update
sudo apt install 7za wget
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/${lsb_release -c}/winehq-${lsb_release -c}.sources
sudo apt install winehq-staging

wget https://download3.operacdn.com/pub/opera_gx/100.0.4815.82/win/Opera_GX_100.0.4815.82_Setup.exe
mv Opera_GX_100.0.4815.82_Setup.exe OperaGX.exe
7za x OperaGX.exe

echo "Installed"
echo "Navigate to the OperaGX directory and run 'WINEDEBUG=-all wine opera.exe --no-sandbox --disable-gpu-process' or 'WINEDEBUG=-all wine operagx.exe --no-sandbox --disable-gpu-process'"
