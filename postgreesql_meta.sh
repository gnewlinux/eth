#!/bin/bash
# Confira primeiro em db_status dentro de msfconsole se está tudo ok. Se não...
# Criar banco de dados paramsf.

RED='\033[0;31m' # red color
GREEN='\033[0;32m'
NC='\033[0m' # no color

msfdb delete
printf "${GREEN}msfdb delete --- OK${NC}\n"
msfdb init
echo -e "${GREEN}msfdb init --- OK${NC}"
cp /usr/share/metasploit-framework/config/database.yml /root/.msf4/
echo -e "${GREEN}Copy database.yml to /root/.msf4/ --- OK${NC}"
service postgresql restart
echo -e "${GREEN}PostgreSql restart --- OK${NC}"
sleep 1s
echo -e "${GREEN}OK! run ${NC}msfconfole ${GREEN}and${NC} check db_status${GREEN}!${NC}"

# Iniciar msfconsole
# msfconsole

# Status do banco de dados.
# db_status
