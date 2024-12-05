FROM debian:bullseye-slim

# Instalar dependencias y ejecutar el script de instalación de Outline
RUN apt-get update && apt-get install -y \
    curl sudo && \
    curl -sSL https://raw.githubusercontent.com/Jigsaw-Code/outline-apps/master/server_manager/install_scripts/install_server.sh | bash

# Iniciar bash como comando principal
CMD ["bash"]
