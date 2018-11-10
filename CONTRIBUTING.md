# Comment GitHubber

## Ajouter un fichier
- Ouvrir la solution dans Visual Studio.
- S'assurer que Team Explorer afficher bien toutes les options, si ce n'est pas le cas, le Repo n'a pas bien été clôné.
- Créer un fichier normalement
- Aller dans `Team Explorer > changes`
- Sous changes, il devrait y avoir le fichier que tu a ajouté avec [add] à côté
- Clique droit sur le fichier > `stage`, ceci ajoute le fichier à la liste de changements qui seront mis sur le serveur.
- Pour sauvegarder l'ajout localement, entrer un message significatif qui décrit le changement fait, puis cliquer sur `Commit Staged`
- Maintenant l'ajout est prêt à être envoyer sur le serveur!
- Pour faire cela, retourner au menu principal du `Team Explorer` (maison), puis aller dans `Sync`
- Le changement (commit) devrait être dans la liste `Outgoing Commits`
- Pour envoyer le changement au serveur, cliquer sur `push`

Cette procédure d'applique pour tous les changements de fichier et suppression de fichier.

## Mettre sa version à jour

Lors de l'envoi des changements au serveur, il est possible qu'il y ait une erreur. 
Ceci est souvent causé par le fait que le serveur a des changements qui ne sont pas présents dans la version locale.
Il faut donc mettre la version locale à jour.

Pour mettre la version locale à jour, il faut simplement (dans le menu "Sync"), cliquer sur le bouton `Pull`

## Gérer les conflits

Parfois, s'il y a des changements faits sur un fichier en local et que le même fichier a été modifié sur le serveur, il faut gérer le conflit.

Pour ce faire, il suffit de cliquer sur le bouton `Merge` puis manuellement choisir quels changements il faut garder et lesquels il faut laisser tomber.

Parfois, Visual Studio va même gérer le conflit automatiquement, et cliquer sur merge va automatiquement s'occuper des conflits.

Dans les deux cas, il faut suivre la même procédure que pour ajouter un fichier pour envoyer la version "mergée" sur le serveur.

## En cas d'urgence
https://ohshitgit.com
