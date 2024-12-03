# fazer o dump (local)
sudo docker exec -it 8e755ada1272 mysqldump -u root -p tech_for_good > dump.sql

# copiar dump local para dentro do container 
sudo docker cp dump.sql 8e755ada1272:dump.sql

#entrar no terminal do container
sudo docker exec  -it 8e755ada1272 /bin/bash

# executar o dump
mysql -u root -p tech_for_good < dump.sql 
