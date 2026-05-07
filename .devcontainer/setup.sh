#!/bin/bash
set -e

echo "==> Instalando dependencias Python..."
pip install -r /workspaces/bai-de-aws/.devcontainer/requirements.txt

echo "==> Iniciando contenedor Sakila..."
docker start sakila || docker run -d -p 3306:3306 --name sakila -e MYSQL_ROOT_PASSWORD=password dbaden/sakila

echo "==> Listo!"

