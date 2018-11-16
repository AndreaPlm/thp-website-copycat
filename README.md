# JOURNEE D'ECHECS, PAS LE JEU HEIN ! Mais il est 23h26m19s et on progresse... 01h27m37s et la communanté nocturne nous aide sur heroku ! 02h30m26s on a un site en ligne mais gmail fait des siennes... 03h51m00s LE MAILING MARCHE EN PROD ! C'EST BEAU

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

* Un site avec 3 landing page pour 3 différentes cibles (étudiants, entreprises et villes) même si elles sont pareilles (ça c'était à 23h26m19s mais maintenant qu'il est 23h43m50s on en a une différente wouhou) ! --> à 2h du mat on a 3 landings page de OUF

* Une inscription à une newsletter avec un email qui valide l'inscription

* Un service qui envoi des newsletter tous les X (en l'occurence toutes les 24h) aux users en DB, via heroku scheduler
(YES YES YES IL EST 3h51)

* Test model Client

* ...

## Ce qu'il manque :

* WrapBootstrap : chez nous c'est de l'artisanal !! (genre comme ça : https://www.youtube.com/watch?v=i_vLGL5L6pc&t=910s)

* Les metrics

* Au moins 2 opérations marketing... marketing c'est quoi ça ? c'est pas super éthique non ? On zap !

* les API, les................................. DODO


### Configuration avant de lancer le site en mode rails server vu que heroku ne fonctionne pas encore. Normalement il faudrait que tu fasses ça !!! ::  EDIT : ET BEN SI LE HEROKU MARCHE WESH cf la fin du README

* classique bundle install

* rails db:migrate + rails db:seed

* Créer un fichier application.yml dans /config et y rentrer ses identifiants gmail comme suit :
    gmail_username: 'username'
    gmail_password: 'password'

* Activer l'IMAP dans gmail

* Activer "Accès moins sécurisé des applications" dans gmail https://myaccount.google.com/lesssecureapps

* Tu connais la suite : rails server et http://localhost:3000/ dans ton navigateur préféré

## HEROKU ES-TU LA ?

....non.... 01h57m58s SI !!! sauf que la sécurité gmail à l'air de bloqué l'envoi de mail.... la PROD quand même :
https://thp-lyon-copycat.herokuapp.com/

**CA MARCHE CA MARCHE 2h55 LA PROD MARCHE AVEC ENVOI DE MAILS**

## https://thp-lyon-copycat.herokuapp.com/

Spéciale dédicace à Lucien PASSERA, Nicolas Cousin et Soraya Fructuoso qui nous ont bien aidé sur le slack !
