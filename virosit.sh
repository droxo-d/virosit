#!/bin/bash

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

#!/bin/bash

display_virosit_banner() {
    local green_bold="\e[1;32m"
    local green_light="\e[0;32m"
    local reset="\e[0m"
    
    clear
    
    # Animate "VIROSIT" banner
    echo -ne "${green_bold}"
    echo -n "    ██╗   ██╗██╗██████╗  ██████╗ ███████╗██╗████████╗" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "    ██║   ██║██║██╔══██╗██╔═══██╗██╔════╝██║╚══██╔══╝" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "    ██║   ██║██║██████╔╝██║   ██║███████╗██║   ██║   " | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "    ██║   ██║██║██╔══██╗██║   ██║╚════██║██║   ██║   " | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "    ╚██████╔╝██║██║  ██║╚██████╔╝███████║██║   ██║   " | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "     ╚═════╝ ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝   " | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo -e "${reset}"
    
    sleep 0.3
    
    # Animate the box
    echo -ne "${green_light}"
    echo -n "╔══════════════════════════════════════════════════════════════════════════════╗" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "║                                                                              ║" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "║                         VIROSIT                                              ║" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "║                                                                              ║" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "║                      Codename: Prototypum                                    ║" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "║                      Author: LexS                                            ║" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "║                                                                              ║" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "║                 Intelligence Gathering Tool                                  ║" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "║                                                                              ║" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo ""
    
    echo -n "╚══════════════════════════════════════════════════════════════════════════════╝" | while IFS= read -r -n1 char; do
        echo -n "$char"
        sleep 0.001
    done
    echo -e "${reset}"
}



# Custom display
big_echo() {
    local text="$1"
    local color="${2:-white}"
    local width=${3:-60}
    
    # Color codes
    case $color in
        red)    color_code="\e[1;31m" ;;
        green)  color_code="\e[1;32m" ;;
        yellow) color_code="\e[1;33m" ;;
        blue)   color_code="\e[1;34m" ;;
        purple) color_code="\e[1;35m" ;;
        cyan)   color_code="\e[1;36m" ;;
        white)  color_code="\e[1;37m" ;;
        *)      color_code="\e[1;37m" ;;
    esac
    
    local reset="\e[0m"
    local border="═"
    local border_length=$((width - 4))
    local border_line=$(printf "%${border_length}s" | tr ' ' "$border")
    
    echo -e "\n${color_code}╔${border_line}╗${reset}"
    echo -e "${color_code}║${reset} $(printf "%*s" $(( (width - ${#text} - 4) / 2 )) )${color_code}${text}${reset} $(printf "%*s" $(( (width - ${#text} - 4 + 1) / 2 )) )${color_code}║${reset}"
    echo -e "${color_code}╚${border_line}╝${reset}\n"
}

# Function to fetch and display undetected URLs for a domain
fetch_undetected_urls_for_domainFile() {
  local domain=$1
  local api_key_index=$2
  local api_key

  if [ $api_key_index -eq 1 ]; then
    api_key=""
  elif [ $api_key_index -eq 2 ]; then
    api_key=""
  else
    api_key=""
  fi

  local URL="https://www.virustotal.com/vtapi/v2/domain/report?apikey=$api_key&domain=$domain"

  echo -e "\n${BGreen}Fetching data for domain: "$domain" (using API key $api_key_index) ${NC}"
  response=$(curl -s "$URL")
  if [[ $? -ne 0 ]]; then
    echo -e "${BRed}Error fetching data for domain: $domain !!!${NC}"
    return
  fi

  subdomains=$(echo "${response}" | jq -r '.subdomains[]' 2> /dev/null)
  ip=$(echo "${response}" | jq -r '.resolutions[]["ip_address"]' 2> /dev/null)
  undetected_urls=$(echo "${response}" | jq -r '.undetected_urls[][0]' 2> /dev/null)
  # HERE if conditional if there subdo , ip , undetected_urls are null
  big_echo "$domain" "green" >> "VirusTotal_Results.txt"
  echo -e "\n${BPurple}Sudomains:${NC}\n${BGreen}${subdomains}${NC}\n${BPurple}IPs:${NC}\n${BGreen}${ip}${NC}\n${BPurple}Undetected_urls:${NC}\n${BGreen}${undetected_urls}${NC}" >> "VirusTotal_Results.txt"
}

# Function to fetch and display undetected URLs for a domain
fetch_undetected_urls_for_a_domain() {
  local domain=$1
  local api_key_index=$2
  local api_key

  if [ $api_key_index -eq 1 ]; then
    api_key="0897329071435c53bfac1d5566cb16866b4c78eb4452481d5c5621e27e7701ed"
  elif [ $api_key_index -eq 2 ]; then
    api_key="ec5649eb4c9776260b277c1679ae294e070d66bfa5b1fb20ad04a62d19069f32"
  else
    api_key="f9834b87c5b405df03797e44749333716d6303246f311386eee36af2ff49e72b"
  fi

  local URL="https://www.virustotal.com/vtapi/v2/domain/report?apikey=$api_key&domain=$domain"

  echo -e "\n${BGreen}Fetching data for domain: "$domain" (using API key $api_key_index) ${NC}"
  response=$(curl -s "$URL")
  if [[ $? -ne 0 ]]; then
    echo -e "${BRed}Error fetching data for domain: $domain !!!${NC}"
    return
  fi

  subdomains=$(echo "${response}" | jq -r '.subdomains[]' 2> /dev/null)
  ip=$(echo "${response}" | jq -r '.resolutions[]["ip_address"]' 2> /dev/null)
  undetected_urls=$(echo "${response}" | jq -r '.undetected_urls[][0]' 2> /dev/null)
  # HERE if conditional if there subdo , ip , undetected_urls are null
  big_echo "$domain" "green" >> "${orgName}_VirusTotal.txt"
  echo -e "\n${BPurple}Sudomains:${NC}\n${BGreen}${subdomains}${NC}\n${BPurple}IPs:${NC}\n${BGreen}${ip}${NC}\n${BPurple}Undetected_urls:${NC}\n${BGreen}${undetected_urls}${NC}" >> "${orgName}_VirusTotal.txt"
  }

# Function to display a countdown
countdown() {
  local seconds=$1
  while [ $seconds -gt 0 ]; do
    echo -ne "\033[1;36mWaiting for $seconds seconds...\033[0m\r"
    sleep 1
    : $((seconds--))
  done
  echo -ne "\033[0K"  # Clear the countdown line
}


main() {
# Check if an argument is provided
if [ -z $1 ]; then
  echo -e "${BGreen}[+] Usage: $0 <domain OR domains.txt>\n[+] Example1: $0 subdomain.txt\n[+] Example2: $0 google.com${NC}"
  exit 1
fi

# Initialize variables for API key rotation
api_key_index=1
request_count=0

# Check if the argument is a file

if [ -f "$1" ]; then
  while IFS= read -r domain; do
    # Remove the scheme (http:// or https://) if present
    domain=$(echo "$domain" | sed 's|https\?://||')
    if [ ! -f "VirusTotal_Results.txt" ];then
    touch "VirusTotal_Results.txt"
    fi
    fetch_undetected_urls_for_domainFile "$domain" $api_key_index
    countdown 20

    # Increment the request count and switch API key if needed
    request_count=$((request_count + 1))
    if [ $request_count -ge 5 ]; then
      request_count=0
      if [ $api_key_index -eq 1 ]; then
        api_key_index=2
      elif [ $api_key_index -eq 2 ]; then
        api_key_index=3
      else
        api_key_index=1
      fi
    fi
  done < "$1"
else
  # Argument is not a file, treat it as a single domain
  domain=$(echo "$1" | sed 's|https\?://||')
  declare -g orgName=$(echo "$domain" | grep -oP '(?:[^./]+\.)*\K[^./]+(?=\.(?:com|org|net|edu|gov|io|co\.\w+|\w{2,})($|/))')
  fetch_undetected_urls_for_a_domain "$domain" $api_key_index
fi

if [ $? -eq 0 ];then

    echo -e "${BGreen}Results are saved in the current directory.${NC}"

else
    
    echo -e "${BRed}There was an error while querying Virus Total! ${NC}" 
    exit 1
fi
}

# Equivalent to if __name__ == '__main__'
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    
    # Call the banner
  display_virosit_banner


  main "$@"
fi


