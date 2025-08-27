# virosit 🔍 | Advanced Domain Enumeration, Unleashed.

Supercharge your recon with virosit, the turbo-charged successor to virustotalx (v2.0). Go beyond basics and automatically unearth a target's full attack surface: subdomains 🌐, IP addresses 🖥️, and undetected URLs 🔓.

The ultimate tool for uncovering what others miss.

# 💀 PRE-REQUISITE ⚠︎
1. Create 3 Virus Total Accounts & Get 3 API-KEYs
   
2.  Replace the API-KEY into the script:

if [ $api_key_index -eq 1 ]; then
    api_key="XXXXXXXXXXXXXX1"
elif [ $api_key_index -eq 2 ]; then
    api_key="XXXXXXXXXXXXXX2"
else
    api_key="XXXXXXXXXXXXXX3"
fi

# 😎 HOW TO RUN virosit.sh ?
  chmod +x virosit.sh
  ./virosit.sh

===> HOW TO RUN IT ON A SINGLE DOMAIN like google.com?
  ./virosit.sh example.com
  EXAMPLE:
  ./virosit.sh google.com

===> HOW TO RUN THE SCRIPT ON A FILE CONTAINING DOMAINS ?
  ./virosit.sh <file>
  EXAMPLE: ./virosit.sh domains.txt

NB: The output file is automatically generated and saved in your currect working directory
NB: if it is a single domain enumeration process on example.com, the output file will be example_VirusTotal.txt
NB: if you are using a file of domains, all their results will be saved in VirusTotal_Results.txt

# 👀 OUTPUT EXAMPLE
<img width="1898" height="936" alt="Capture d'écran 2025-08-27 211836" src="https://github.com/user-attachments/assets/5b5327dd-c782-4c84-89c2-b6a55fa109ef" />


# ⚠️ LEGAL DISCLAIMER
This tool is intended for educational, research and authorized testing purposes only.
Use of it unethically or against local laws may constitute a crime.
The author disclaims all liability for improper use.

# 📜 License
Distributed under MIT License

# CREDITS TO:
- Orwa & dRoxo
- This Tool is also called virustotalx version 2.0 https://github.com/orwagodfather/virustotalx

  
