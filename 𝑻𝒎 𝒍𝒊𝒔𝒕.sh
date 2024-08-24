#!/bin/bash

clear
# Tm Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color
C='\033[1;36m'

# Tm Check if offline
Tmnetcheck() {
clear
echo ""
echo ""
echo -e "               ${GREEN}╔═══════════════╗"
echo -e "               ${GREEN}║ ${NC}</>  ${C}◦•●◉[Ꭰ/Ꭺ/Ꭱ/Ꮶ ᚓͲᎷ ]◉●•◦${GREEN}   ║"
echo -e "               ${GREEN}╚═══════════════╝"
echo -e "  ${GREEN}╔════════════════════════════════════════════╗"
echo -e "  ${GREEN}║${GREEN}[${NC}</>${GREEN}] ${YELLOW}Checking  Your Internet Connection¡${GREEN}   ║"
echo -e "  ${GREEN}╚════════════════════════════════════════════╝\n"
    while true; do
        wget --spider --quiet https://github.com
        if [ "$?" != 0 ]; then
            echo -e "  ${GREEN}[${NC}×${GREEN}] ${RED}No internet!\007\n"
            sleep 2.5
        else
            break
        fi
    done
    clear
}

Tmnetcheck
printf "\n"
printf "\n"
# TM Main program
printf "\n"
echo -e "${C}  《《《《《《《《《《《《《《《《《《《《《《《《《《《《《《《《《"
echo -e "${C}      ██████╗ ██╗    ██╗██████╗     ██████╗ ███╗   ██╗████████╗███████╗"
echo -e "${C}      ██╔══██╗██║    ██║██╔══██╗   ██╔════╝ ████╗  ██║╚══██╔══╝██╔════╝"
echo -e "${C}      ██████╔╝██║ █╗ ██║██║  ██║   ██║  ███╗██╔██╗ ██║   ██║   █████╗  "
echo -e "${C}      ██╔═══╝ ██║███╗██║██║  ██║   ██║   ██║██║╚██╗██║   ██║   ██╔══╝  "
echo -e "${C}      ██║     ╚███╔███╔╝██████╔╝██╗╚██████╔╝██║ ╚████║   ██║   ███████╗"
echo -e "${C}      ╚═╝      ╚══╝╚══╝ ╚═════╝ ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝ "
echo -e "${C}  《《《《《《《《《《《《《《《《《《《《《《《《《《《《《《《《《 "
echo -e "${C}              ◦•●◉[Ꭰ/Ꭺ/Ꭱ/Ꮶ ᚓͲᎷ ]◉●•◦"
echo -e "${YELLOW}              +-+-+-+-+-+-+-+-+-+${NC}"
echo ""
printf "\n"
echo ""
echo -e "  ${GREEN}[${NC}1${GREEN}] ${C}password wardlist generate${NC}"
echo -e "  ${GREEN}[${NC}2${GREEN}] ${C}password attack ${NC}"
echo -e "  ${GREEN}[${NC}0${GREEN}] ${C}Exit Tool"
echo ""
read -p "[+]──[Choose an option]────► " choice

case $choice in
  1)
    read -p "Enter the characters you want to use (e.g. abc): " characters
read -p "Enter a minimum length of words: " min_length
read -p "Enter the maximum length of words: " max_length
read -p "Enter the output file name (e.g. wordlist.txt): " output_file

echo -n > "$output_file"

for ((length=$min_length; length<=$max_length; length++)); do
    for combination in $(printf "%${length}s" | grep -o ".{$length}" | tr -d '\0' | eval printf "${characters}"); do
        echo "$combination" >> "$output_file"
    done
done

echo "Wordlist is successfully generated in $output_file"
    ;;
  2)
    
    ;;
   0)
   printf "\n"
   echo -e "   ${GREEN}[${NC}^${GREEN}] ${YELLOW}Exiting Tools"
   sleep 1
   echo ""
   exit 1
   ;;
  *)
    printf "\n"
    echo -e "  ${GREEN}[${NC}×${GREEN}] ${RED}Invalid choice. ${GREEN}Try Again!${NC}"
    sleep 1
    echo ""
    bash d1code.sh
    ;;
esac
     echo -e "  ${GREEN}[${NC}^${GREEN}] ${YELLOW}Exiting Tools${NC}"
