#!/bin/bash
RED='\e[93m'
NC='\e[932'
systemctl stop BITMONEY.service
echo -e "${RED}[ 10% ] STOPPING BIT MONEY SERVER${NC}"
sleep 10
echo -e "${RED}[ 22% ] BIT MONEY SERVER STOPPED SUCCESSFULLY${NC}"
sleep 5
cd && cd .bitmoney
echo -e "${RED}[ 23% ] ENTERING INTO BITMONEY DATA FOLDER${NC}"
echo -e "${RED}[ 24% ] SUCCESSFULLY ENTERED INSIDE  BITMONEY DATA FOLDER${NC}"
echo -e "${RED}[ 30% ] DETECTING ISSUES WITH BLOCKCHAIN SYNCING${NC}"
sleep 10
echo -e "${RED}[ 56% ] ISSUES DETECTED , NOW FIXING THEM${NC}"
sleep 20
rm -r backups && rm -r budget.dat && rm -r debug.log && rm -r mnpayments.dat && rm -r sporks && rm -r zerocoin && rm -r blocks && rm -r chainstate && rm -r db.log && rm -r fee_estimates.dat && rm -r mncache.dat && rm -r peers.dat && systemctl start BITMONEY.service
echo -e "${RED}[ 78% ] BLOCKCHAIN SYNCYING ISSUES FIXED SUCCESSFULLY${NC}"
sleep 5
echo -e "${RED}[ 95% ] RESTARTING BIT MONEY SERVER${NC}"
systemctl start BITMONEY.service
sleep 5
echo -e "${RED}[ 100% ] BIT MONEY SERVER STARTED SUCCESSFULLY${NC}"
