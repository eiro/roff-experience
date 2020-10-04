    Cher futur rédacteur,

le présent dépot est un guide d'apprentissage de roff par la pratique
de groff (la version GNU).

roff permet de décrire sous la forme de textes plains tout document
nécessitant une mise en page précise (lettres, articles, livres,
memoranda). Il est possible d'écrire un premier texte sans rien savoir de
roff: vous êtes en train de lire notre premier exemple puisque le
présent fichier peut être exploité pour générer par exemple un document
pdf ou Postscript, une page web ...

tu peux tester les commandes suivantes (au passage: si tu es dans vi, la
vie est trop courte pour copier/coller: je t'invite à executer les
commandes depuis l'éditeur en te rendant sur la ligne à executer et tappe
!!sh puis sur la touche Enter.).

        # par default, groff génère du postscript
        groff readme.txt > readme.ps

        # mais pdf est probablement ce que vous souhaitez
        groff -Tpdf readme.txt > readme.ps

        # les caractères unicode ne sont pas affichés correctement
        # corrigons le problème grace au drapeau -k
        groff -k -Tpdf readme.txt > readme.pdf

        # il est possible de regrouper les drapeaux
        groff -kTpdf readme.txt > readme.pdf

        # la commande passe-partout que j'ai maintenant dans les doigts
        # est (avec en memotechnique tek et tkT)
        groff -tekTpdf readme.txt > readme.pdf

        # il est aussi possible de rendre de l'html ou du texte mis
        # en forme relativement à la taill de votre terminal
        groff -kTut8 readme.txt
        groff -kThtml readme.txt > readme.html

tu peux modifier ce texte en prenant en compte les règles suivantes ces quelques règles

.\" une ligne qui commence par .\" est un commentaire et ne sera pas affichée

 • les lignes vides sont considérées comme des limites de paragraphe.
   tu peux ajouter des lignes pour ajouter des espaces verticaux entre
   les paragraphes.

 • les espaces en début de ligne sont respectés, il est donc possible
   de créer des indentations entre les paragraphes. notes que dans ce cas,
   les retours à la ligne deviennent significatifs

la mise en forme n'est pas très aboutie mais nous allons très vite apprendre
à faire beaucoup, beaucoup mieux.

                                En espérant que ces premiers pas te seront utiles, je t'invite à lire hello.mm
                                Marc
