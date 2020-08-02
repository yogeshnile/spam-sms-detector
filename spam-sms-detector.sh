#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

clear
echo -e "			${BROWN}#############################################${NC}"
echo -e "			${BROWN}#             Spam SMS Dectector            #${NC}"
echo -e "			${BROWN}#-------------------------------------------#${NC}"
echo -e "			${BROWN}#  Author   : Yogesh Nile                   #${NC}"
echo -e "			${BROWN}#  Email    : yogeshnile.work4u@gmail.com   #${NC}"
echo -e "			${BROWN}#  Twitter  : twitter.com/YogeshNile        #${NC}"
echo -e "			${BROWN}#  GitHub   : github.com/yogeshnile         #${NC}"
echo -e "			${BROWN}#############################################${NC}"

if [ -x spam-sms-detector.sh ]
then
	cd ~/Downloads/
	filename=spam-sms-detector
	if [ -e $filename ]
	then
		echo -e "${RED}Repo already exit.${NC}"
		rm -rf spam-sms-detector
		if [ $? -eq 0 ]
		then
			echo -e "${GREEN}Repo Deleted.${NC}"
			echo -e "${YELLOW}Downloading ${NC}${BROWN}spam-sms-detector ${NC}${YELLOW}files....${NC}"
			git clone https://github.com/yogeshnile/spam-sms-detector.git
			echo -e "${GREEN}Finished  : ${NC}${YELLOW}Downloading required files${NC}"
		else
			echo -e "${RED}Error: Can't remove repo.${NC}"
		fi
	else
		echo -e "${YELLOW}Downloading ${NC}${BROWN}spam-sms-detector ${NC}${YELLOW}files....${NC}"
		git clone https://github.com/yogeshnile/spam-sms-detector.git
		echo -e "${GREEN}Finished  : ${NC}${YELLOW}Downloading required files${NC}"
	fi
	if [ $? -eq 0 ]
	then
	
		#moveing spam-sms-detector repo
		cd spam-sms-detector

		#Create Virtual Env
		echo -e "${YELLOW}Starting : ${NC}${BLUE}Python Virtual Environment....${NC}"
		python3 -m venv venv
		if [ $? -eq 0 ]
		then
			echo -e "${GREEN}Finished  : ${NC}${YELLOW}Python Virtual Environment${NC}"
			#Activate venv
			echo -e "${YELLOW}Activate Virtual Environment.....${NC}"
			source venv/bin/activate
			if [ $? -eq 0 ]
			then
				echo -e "${GREEN}Activated Virtual Environment${NC}"
	
				#Install All Python Libraris
				echo "${YELLOW}Starting : ${NC}${CYAN}Install All Dependencies......${NC}"
				pip install -r requirements.txt
				if [ $? -eq 0 ]
				then
					echo -e "${GREEN}Finished  :  Installed All Dependencie${NC}"
		
					#Run python file
					echo -e "${GREEN}Running Python File.....${NC}"
					echo -e "${YELLOW}Wait for activate localhost....${NC}"
					python app.py
				else
					echo -e "${RED}Error: All Dependencie does not installed please check internet connectivity${NC}"
				fi
			else
				echo -e "${RED}Error: venv does not activated.${NC}"
			fi
		else
			echo -e "${RED}Error:${NC}${CYAN} python virtual environment don't create${NC}"
		fi
	else
		echo -e "${RED}Repo don't downloaded..please check internet connectivity${NC}"
	fi
else
	echo -e "${RED}Error:  File required executable permission${NC}"
fi
