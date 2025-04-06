# Genera un par de claves ssh(publica y privada)
# la privada se guarda en ~/.ssh/id_rsa (no compartir)
# la publica en ~/.ssh/id_rsa.pub (se copia a la PC remota).
ssh-keygen -t rsa

# Copia tu clave publica a la pc remota para conectarte remotamente sin contraseñas
# Copiará la clave pública al archivo ~/.ssh/authorized_keys
ssh-copy-id usuario@ip-remota