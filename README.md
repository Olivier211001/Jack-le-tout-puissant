# Introduction

Nom du projet : **Jack le tout-puissant**

Slogan : **À l'aventure, compagnon!**

## Contexte

Nous sommes 2 étudiants de 2ème année en Technique de l'Informatique au Cégep de Shawinigan. Nous aimons tous les deux aux jeux vidéo et jouons depuis que nous sommes tout jeunes. Cet intérêt envers les jeux vidéo nous a poussé à nous demander comment ceux-ci étaient fait. Nous voulons donc apprendre comment programmer un jeu à l'aide de Godot afin de se familiariser avec cet outil et, par la bande, prendre de l'avance sur notre prochaine session.

## Problématique

De nos jours, les jeux 2D sont moins dominants dans l'industrie du jeu vidéo, donc nous voulions produire un jeu 2D classique pour appeler à la nostalgie des joueurs de jeux à défilement horizontal des années 80-90 et faire découvrir cet univers aux nouveaux joueurs. Notre projet consiste à créer un jeu 2D à l'aide d'une plateforme à code source ouvert et d'éléments trouvés sur internet.

# Solution

La conception de ce jeu nous a permis d'approfondir nos connaissances dans le domaine de la programmation (surtout en jeux vidéo) ainsi que de déterminer notre niveau d'intérêt envers le développement de jeux vidéo. Nous avons choisi ce projet, car nous aimons beaucoup les jeux vidéo et d'en développer un fut quelque chose de vraiment amusant. Nous avons réussi à créer notre jeu de plateformes à défilement horizontal et à obtenir un certain produit fini avec celui-ci.

# Rétrospective

## Responsabilités

### Jaymie

De mon côté, Il était prévu que je m'occupe principalement de l'environnement de jeu. Cela incluait les plateformes, les contrôles du personnage principal, la caméra, la majorité des collisions, l'emplacement des ennemis, les décors, l'arrière-plan, les menus ainsi que le design de nos niveaux. En théorie, je n'allais pas vraiment toucher aux scripts, pratiquement uniquement que pour les menus.

En pratique, je me suis occupé de créer toutes les plateformes, les décors et l'arrière-plan ainsi que de les incorporer dans le jeu. J'ai également conçu le design de tous nos écrans de menu que ce soit le pause, l'écran principal, l'écran de mort ou bien l'écran de victoire. Je me suis aussi occupé de tout ce qui a un rapport avec la caméra et donc de créer une interface avec la jauge de vie du personnage principal à l'intérieur. Pour ce qui de la barre de vie, je ne me suis occupé que du design de celle-ci. J'ai aussi fait le design de notre niveau en plaçant tous les éléments à l'intérieur de celui-ci que ce soient les plateformes, les ennemis, les boss et les collisions afin que les personnages contrôlés par le jeu ne tombent pas dans le vide. J'ai également travaillé avec Olivier sur les contrôles et les collisions afin que celle-ci fonctionnent comme nous le voulions.

Je n'ai malheureusement pas réussi à faire plus d'un niveau pour notre jeu. Cela s'explique par un manque de temps combiné à des attentes trop élevés. Ayant déjà contribué à la création d'un jeu lors de l'Inter collégial de Valleyfield, je croyais que la création de notre jeu serait plus rapide que ce qu'elle a été en réalité. Le fait que nous avons plusieurs autres cours combinés aux difficultés que j'ai rencontré peuvent un peu expliquer le manque de temps.

### Olivier

Pour ma part, selon notre planification, j'allais m'occuper de tout ce qui est un personnage. Il était donc prévu que je programme le personnage principal, tous les ennemis ainsi que le boss final. J'allais donc m'occuper de leurs mouvements, leurs attaques, leurs jauges de vies et leurs morts. Cela impliquait donc que j'allais me servir de plusieurs images afin d'animer leurs actions et que je devais trouver une manière que les ennemis puissent détecter et entrer en contact avec le personnage principal.

Pour ce qui est du résultat final, j'ai construit les animations et les scripts de tous les personnages. Je me suis assuré que chacun d'entre eux puissent se déplacer, attaquer, recevoir des dégâts ainsi que mourir. J'ai également programmé les sauts du personnage principal. J'ai aussi fait toute la programmation à l'arrière de la jauge de vie afin que celle-ci soit fonctionnelle, et ce, tant pour le personnage principal que le boss et le sous-boss. Je me suis également occupé de programmer les menus. J'ai aussi travaillé avec Jaymie sur les contrôles et les collisions.

Je n'ai pas réussi à pousser les personnages autant que j'aurais voulu. En effet, j'avais l'intention de faire plusieurs attaques pour le personnage principal, créer une plus grande variété d'ennemis et augmenter la difficulté du boss et du sous-boss. Je n'ai pas réussi à faire cela dû à un manque de temps ainsi qu'à quelques petits accrochages au niveau de la programmation. L'horaire plutôt chargé que nous avions en combinaison avec ces difficultés m'ont forcé à mettre certaines idées de côté.

## Fiertés

### Jaymie

Je suis très fier de l'aspect visuel de notre jeu. Je crois vraiment qu'il est très attirant visuellement et je suis particulièrement fier de la barre de vie de notre personnage principal ainsi que des menus. Je suis très heureux que notre jeu soit fonctionnel et complet avec un début et une fin. Je suis également extrêmement enchanté que notre jeu ait obtenu la 3ème place en Informatique au Symposium des sciences.

### Olivier

Je suis fier de la fonctionnalité de notre jeu en général ainsi que de la fluidité des contrôles de notre personnage principal. Je suis content d'avoir appris à me servir de Godot et d'avoir réussi à faire un jeu de si bonne qualité, car j'ai toujours voulu créer un jeu vidéo. Je suis également fier de notre travail d'équipe et de l'ambition que nous avons démontré afin de réussir à obtenir la 3ème place au Symposium des sciences au niveau de l'Informatique.

## Difficultés et solutions

### Jaymie

J'ai rencontré certaines difficultés au niveau de l'incorporation de la barre de vie du personnage principal. Je n'arrivais pas à trouver une façon que celle-ci reste toujours en haut à gauche dans l'écran du joueur. Cela m'a pris un certain temps avant de me rendre compte que la meilleure solution à ce problème était de créer ma barre de vie dans une scène et d'incorporer celle-ci dans une scène interface qui sera mise dans un Canvas layer qui lui sera dans la caméra. L'autre aspect qui pourrait être considéré comme une difficulté a été la recherche et la création d'images pour notre jeu. Cela a pris un temps considérable. Fort heureusement, grâce, entre autres, à Pixilart, j'ai réussi à obtenir les images que je souhaitais.

### Olivier

J'ai eu de la difficulté avec la programmation des ennemis au niveau de l'IA. Pour résoudre cela, j'ai eu à recommencer le code à zéro puis, avec du travail et de la patience, j'ai finalement réussi à faire fonctionner celle-ci. J'ai aussi eu de la difficulté pour la partie détection du personnage principal dans le but que le boss et le sous-boss puissent nous suivre afin de nous attaquer. Afin de me faciliter la tâche, je me suis servi de l'algorithme des bandits comme base en y ajoutant ensuite des éléments propres à eux comme leur barre de vie. J'ai finalement résolu le problème en insérant une area qui détecte une autre area qui lui se trouve à l'intérieur de Jack. J'ai eu également quelques petites difficultés avec la zone pour bloquer le personnage principal afin qu'il ne puisse pas progresser sans avoir battu le sous-boss. J'ai réglé cela en insérant un staticbody2d qui se désactive lors de la mort du sous-boss.

## Apprentissages

### Jaymie

Grâce à ce projet, j'ai pu apprendre à me servir de Godot. Cela me sera utile pour tout projet futur utilisant cet outil puisque je sais maintenant comment m'en servir. J'ai également appris un peu le fonctionnement du GD script en inspectant le code qu'Olivier a fait et en l'aidant lorsque celui-ci avait un problème. J'ai aussi appris à utiliser Pixilart afin de créer et modifier des images. À travers ce projet, j'ai également appris à me servir de Git afin qu'Olivier et moi-même soyons en mesure de travailler sur le jeu en même temps grâce au système de branches.

### Olivier

Avec ce cours, j'ai pu apprendre le langage intégré de Godot, le GD script, qui est plutôt capricieux, mais qu'une fois que tu comprends la syntaxe de celui-ci, il devient facile à utiliser. Vers les 2 tiers du jeu, pratiquement tous les algorithmes que j'ai codés n'ont pas nécessité de tutoriel puisque j'ai compris la logique et l'environnement Godot. J'ai beaucoup appris sur le développement de jeux vidéo et aurait beaucoup plus de facilité à en faire un maintenant ce qui me prépare pour le cours de cet automne. J'ai aussi appris le fonctionnement du moteur Godot en me référant à ce que Jaymie faisait, car j'en avais parfois besoin pour les personnages.

# Conclusion

Nous avons l'intention de continuer le développement de notre jeu au courant des prochains mois. Nous avons déjà plusieurs idées de niveaux et d'ennemis que nous voulons ajouter à notre jeu afin d'augmenter la durée, la variété ainsi que la qualité de celui-ci. Nous voulons également intégrer une histoire dans notre jeu afin de vraiment donner un sens à celui-ci.