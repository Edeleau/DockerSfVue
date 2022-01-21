## Container docker Symfony 6 + PHP8 + VueJS

# Présentation du projet : 
Le projet a pour but d'être un container plug and play. Juste à cloner, intialiser et vous pouvez bosser !

# Liste des étapes pour lancer le container : 

- Initialier les containers :
```
make init
```
- Reliez votre .env à votre base de donnée et le tour est joué ! 


# Les commandes existantes pour vous faciliter la tâche: 
- Créer un(e) controller/entité/migration  : 
``` 
make controller
make entity
make migration
```
- Lancer les containers : 
```
make up
```
- Lancer les migration : 
```
make migrate
```
