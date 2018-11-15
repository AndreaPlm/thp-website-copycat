# JOURNEE D'ECHECS, PAS LE JEU HEIN ! Mais il est 23h26m19s et on progresse...

Quand ça veut pas, ça veut pas !

# Présentation de LA TEAM DE CHOC :
nom              | Pseudo Slack
 ------------    | -------------
PALMA Andréa     | @plm
POTIé Quentin    | @TinQk
SMOTH Kenadi   | @Kenadi.S
GIFFARD Josselin | @Redcozmo

On a commencé à distance à plancher sur l'app sur ce super FRAMAPAD
https://hebdo.framapad.org/p/thp-lp


## Mais on a quand même :

* UN README (le truc que tu lis là ;-)) !!

* Un repos Github : c'est la base quand même, avec des commits dans tous les sens

* Un site avec 3 landing page pour 3 différentes cibles (étudiants, entreprises et villes) même si elles sont pareilles (ça c'était à 23h26m19s mais maintenant qu'il est 23h43m50s on en a une différente wouhou) !

* Une inscription à une newsletter avec un email d'accueil

* Un envoi de mails possible avec rails mailer et gmail (mais pas encore raccordé à cet instant - de quel instant on parle là ?)

* ...

## Ce qu'il manque :

* WrapBootstrap : chez nous c'est de l'artisanal !!

* Les newsletters régulières avec le Heroku Scheduler

* Au moins 2 opérations marketing... marketing c'est quoi ça ? c'est pas super éthique non ? On zap !

* les API, les................................. DODO


## Configuration avant de lancer le site en mode rails server vu que heroku ne fonctionne pas encore. Normalement il faudrait que tu fasses ça !!! ::

* classique bundle install

* rails db:migrate + rails db:seed

* Créer un fichier application.yml dans /config et y rentrer ses identifiants gmail comme suit :
    gmail_username: 'username'
    gmail_password: 'password'

* Activer l'IMAP

* Activer "Accès moins sécurisé des applications" https://myaccount.google.com/lesssecureapps

* Tu connais la suite : rails server et http://localhost:3000/ dans ton navigateur préféré
