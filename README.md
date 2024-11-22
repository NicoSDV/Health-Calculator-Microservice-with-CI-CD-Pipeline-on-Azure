
# Health Calculator Microservice

## Fonctionnalités
- **Calcul du BMI** (Body Mass Index) : basé sur la taille et le poids.
- **Calcul du BMR** (Basal Metabolic Rate) : basé sur la taille, le poids, l'âge et le genre.
- API REST construite avec Flask.
- Tests unitaires pour garantir la fiabilité des calculs.
- Déploiement continu via une pipeline Azure DevOps.

## Contenu du Repository
- **`app.py`** : Code principal de l'API Flask qui expose les endpoints `/bmi` et `/bmr`.
- **`health_utils.py`** : Fonctions pour le calcul du BMI et BMR.
- **`test.py`** : Tests unitaires pour valider les calculs.
- **`Dockerfile`** : Fichier Docker pour conteneuriser l'application.
- **`requirements.txt`** : Dépendances nécessaires au projet.
- **`Makefile`** : Automatisation des tâches de développement.
- **Pipeline CI/CD** : Configuration YAML pour Azure DevOps.

## Installation et Utilisation

### Prérequis
- Python 3.10 ou version ultérieure
- [Flask et dépendances](requirements.txt)
- Compte Azure avec une WebApp configurée

### Étapes
1. Clonez le projet :
   ```bash
   git clone https://github.com/NicoSDV/Health-Calculator-Microservice-with-CI-CD-Pipeline-on-Azure.git
   cd Health-Calculator-Microservice-with-CI-CD-Pipeline-on-Azure
   ```

2. Installez les dépendances :
   ```bash
   pip install -r requirements.txt
   ```

3. Lancez le serveur localement :
   ```bash
   python app.py
   ```
   Accédez à l'API sur `http://127.0.0.1:5000`.

4. Exemples de requêtes :
   - **Calcul du BMI** :
     ```bash
     curl -X POST -H "Content-Type: application/json" -d '{"height": 1.75, "weight": 70}' http://127.0.0.1:5000/bmi
     ```
   - **Calcul du BMR** :
     ```bash
     curl -X POST -H "Content-Type: application/json" -d '{"height": 1.75, "weight": 70, "age": 25, "gender": "male"}' http://127.0.0.1:5000/bmr
     ```

## Déploiement sur Azure
1. Créez une WebApp Azure via le portail Azure.
2. Configurez un pipeline Azure DevOps utilisant le fichier `main_healthcalculator.yml` pour CI/CD.
3. Push vos modifications sur la branche `main` pour déclencher automatiquement le pipeline et déployer l'application.

## Tests
Exécutez les tests unitaires avec :
```bash
python -m unittest test.py
```

## Structure des Fichiers
```plaintext
├── app.py              # API principale
├── health_utils.py     # Fonctions de calcul
├── test.py             # Tests unitaires
├── Dockerfile          # Configuration Docker
├── Makefile            # Automatisation des tâches
├── requirements.txt    # Dépendances Python
└── main_healthcalculator.yml # Pipeline CI/CD
```

