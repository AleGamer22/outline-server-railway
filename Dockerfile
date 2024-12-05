# Usa una imagen base de Debian o Ubuntu
FROM ubuntu:20.04

# Instala las dependencias necesarias
RUN apt-get update && apt-get install -y \
    curl sudo

# Ejecuta el script de instalación de Outline
RUN curl -sSL https://raw.githubusercontent.com/Jigsaw-Code/outline-apps/master/server_manager/install_scripts/install_server.sh | bash

# Exponer el puerto necesario
EXPOSE 443

# Comando por defecto
CMD ["bash"]

