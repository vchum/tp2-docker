# tp2-docker

Commande à utiliser dans le dossier "Python" pour créer l'image python + app :
- docker build -t pyapp .

Commande à utiliser dans le dossier "MariaDB" pour créer l'image de la base de données :
- docker build -t madb .

Executer le programme apres avoir lancé docker compose, utiliser l'identifiant user1/user1 :
- docker exec -it py-container login 
