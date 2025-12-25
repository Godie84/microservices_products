#!/bin/bash
# Espera a que PostgreSQL esté listo
echo "Esperando a que PostgreSQL esté disponible..."
while ! nc -z postgres 5432; do
  sleep 1
done
echo "PostgreSQL está listo, arrancando la aplicación..."

# Arranca Spring Boot
exec java -jar /app/app.jar
