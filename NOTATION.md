# Notation

- [X] Vous avez un Dockerfile permettant de créer une image contenant l’application prête à l’emploi
- [X] Vous avez docker-compose.yml permettant de travailler sur le projet en local
- [X] Vous avez un script docker entrypoint qui exécute le script d’import de BDD
- [X] Vous avez un script docker entrypoint qui installe les dépendances seulement en dev
- [X] Vous faites du multi stage build pour alléger le poids final de votre image
- [X] Dans un workflow GitHub, vous lancez les tests
- [X] Dans un workflow GitHub, vous construisez et envoyez l’image docker de l’application sur un registry
- [X] Dans un workflow GitHub, vous lancez un audit de sécurité
- [X] Les identifiants de connexion à la base de données sont passés en environnement
- [X] Les identifiants de connexion à la base de données de prod ne sont jamais visibles dans le code versionné
- [X] Vous avez eslint de fonctionnel en local et sur le workflow GitHub
- [X] Vous avez docker-compose.prod.yml permettant de lancer l’application en mode prod
- [X] Sur le serveur, l’application de production est accessible et fonctionnelle sur le port 80
- [X] Sur le serveur, vous utilisez watchtower (ou similaire) pour mettre à jour l’application sur le serveur
- [X] Sur le serveur, vous déployez un environnement de production et un environnement de développement
- [X] Dans un workflow GitHub, lighthouse est lancé tous les jours pour auditer les performances de l’application de production
- [X] Sur le serveur, l’application de production et de développement sont accessibles en https
- [X] Envoyer une notification (email, slack, discord...) quand un environnement est déployé
- [X] Vous avez un playbook Ansible qui installe docker sur le serveur.

Bonus :
- [X] Vous avez un playbook Ansible qui copie les fichiers docker-compose du projet sur le serveur. 
  Ce playbook peut-être lancé manuellement via un workflow GitHub. 
  Vous envoyez une notification quand le playbook est lancé.

> Pensez à ajouter à votre projet Git tous les fichiers docker-compose qui sont sur le serveur.
