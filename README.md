# Workshop Laravel

[Formulaire d'inscription](https://docs.google.com/forms/d/e/1FAIpQLScyRl3jn3h9JW59stVonYZqYlI_gSJXzqBkgukDDv6mW-xBcg/viewform)

Le but de ce workshop va être de présenter le framework Laravel, et en profiter pour parler de concepts valables pour tous autres frameworks et language:
* La structure MVC
* Le routing
* Les ORMs (Object Relational Mapping)
* Les middlewares
* La sécurité d'un site web (protection contre le CSRF, stockage des mots de passes, request throttling,...)

## Requirements

Voici ce que vous devriez avoir sur votre ordinateur pour pouvoir profiter du workshop sans perte de temps:

* Un serveur PHP fonctionnel sur votre ordinateur (PHP version 7.0 ou supérieure).
* (optionnel) Composer installé globalement.
* (optionnel) Une installation de Laravel 5.5 fonctionnelle.

## Installer Laravel

Dans le cadre du workshop, nous utiliserons la version 5.5 de Laravel, qui est la version LTS (Long Term Support) la plus récente de Laravel.

1. Installer Composer globalement ou localement.
2. Créer un nouveau projet Laravel avec la commande suivante:    
``composer create-project laravel/laravel projet "5.5.*"```   
Ou si Composer est installé localement:    
``php composer.phar create-project laravel/laravel projet "5.5.*"``    

**/!\ N'installez pas Laravel en sudo. Si vous avez un problème de permission, vérifiez que vous avez bien le droit d'écriture dans votre dossier de travail. Installer Laravel en root vous causera plein de bugs.**

## Troubleshooting Laravel

### "Woops, something went wrong"

Erreur pas très descriptive hm ? Généralement il s'agit d'un problème de permissions: votre serveur web a besoin de pouvoir écrire dans les dossiers storage/ et vendor/ de Laravel pour fonctionner correctement.


### Missing application key

Ouvrez un terminal dans le dossier du projet Laravel et tapez la commande suivante:    
``php artisan key:generate``
