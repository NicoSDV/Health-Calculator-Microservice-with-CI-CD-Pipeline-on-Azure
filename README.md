# Health-Calculator-Microservice-with-CI-CD-Pipeline-on-Azure

Contenu du Repository
app.py : Code principal de l'API Flask qui expose les endpoints /bmi et /bmr.
health_utils.py : Fonctions pour le calcul du BMI et BMR.
test.py : Tests unitaires pour valider les calculs.
Dockerfile : Fichier Docker pour conteneuriser l'application.
requirements.txt : Dépendances nécessaires au projet.
Makefile : Automatisation des tâches de développement.
Pipeline CI/CD : Configuration YAML pour Azure DevOps.
Installation et Utilisation
Prérequis
Python 3.10 ou version ultérieure
Flask et dépendances
Compte Azure avec une WebApp configurée
Étapes
Clonez le projet :

git clone https://github.com/NicoSDV/Health-Calculator-Microservice-with-CI-CD-Pipeline-on-Azure.git
cd Health-Calculator-Microservice-with-CI-CD-Pipeline-on-Azure
Installez les dépendances :

pip install -r requirements.txt
Lancez le serveur localement :

python app.py
Accédez à l'API sur http://127.0.0.1:5000.

Exemples de requêtes :

Calcul du BMI :
curl -X POST -H "Content-Type: application/json" -d '{"height": 1.75, "weight": 70}' http://127.0.0.1:5000/bmi
Calcul du BMR :
curl -X POST -H "Content-Type: application/json" -d '{"height": 1.75, "weight": 70, "age": 25, "gender": "male"}' http://127.0.0.1:5000/bmr
Déploiement sur Azure
Créez une WebApp Azure via le portail Azure.
Configurez un pipeline Azure DevOps utilisant le fichier main_healthcalculator.yml pour CI/CD.
Push vos modifications sur la branche main pour déclencher automatiquement le pipeline et déployer l'application.
Tests
Exécutez les tests unitaires avec :

python -m unittest test.py
Structure des Fichiers
├── app.py              # API principale
├── health_utils.py     # Fonctions de calcul
├── test.py             # Tests unitaires
├── Dockerfile          # Configuration Docker
├── Makefile            # Automatisation des tâches
├── requirements.txt    # Dépendances Python
└── main_healthcalculator.yml # Pipeline CI/CD
