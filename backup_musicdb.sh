#!/bin/bash
FECHA_HORA=$(date +%d-%m-%Y_%H:%M:%S)
echo "Introducir contraseña de admin_user para generar el backup de musicdb en formato plano"
pg_dump -i -h localhost -p 5432 -U admin_user -F p -b -v -f "/home/ofe/bk_DB/bk_musicdb_$FECHA_HORA.sql" musicdb
chmod 755 /home/ofe/bk_DB/bk_musicdb_$FECHA_HORA.sql
echo "Volvera introducir contraseña de admin_user para generar el backup de musicdb en formato postgresql"
pg_dump -i -h localhost -p 5432 -U admin_user -F c -b -v -f "/home/ofe/bk_DB/bk_musicdb_$FECHA_HORA.dump" musicdb
chmod 755 /home/ofe/bk_DB/bk_musicdb_$FECHA_HORA.dump
