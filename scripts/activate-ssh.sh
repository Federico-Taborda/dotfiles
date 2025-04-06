suddo apt update
sudo apt install openssh-server

# Habilita el servicio ssh
sudo systemctl enable ssh

# Habilita el servicio para que inicie cada vez que inicia el pc
sudo systemctl enable --now ssh

# Inicia el servicio ssh
sudo systemctl start ssh

# Permite al firewall el trafico
sudo ufw allow ssh