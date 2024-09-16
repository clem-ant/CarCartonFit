#import "@preview/ilm:1.1.2": *
#import "@preview/glossarium:0.4.1": make-glossary, print-glossary, gls, glspl
#import "@preview/tablex:0.0.8": tablex, cellx

#set text(lang: "fr")

#set par(first-line-indent:2em )
#show heading: it =>  {
    it
    par()[#text(size:0.5em)[#h(0.0em)]]
}
#show link: set text(fill: blue.darken(60%))
#show: make-glossary
#import "@preview/physica:0.9.3": *

#set page(header: locate(loc => {
  if counter(page).at(loc).first() > 8 [
   #block(inset: (top: -30pt),tablex(
  columns: (1fr, 1fr),
  align: (left + horizon, right + horizon),
  auto-lines: false,
  stack(dir: ttb,
    image("Images/Logo/stri.png", height: 12mm),
  ),
    image("Images/Logo/Orange.png", height: 90%),
))]}),
)

#show: ilm.with(
  title: [Rapport alternance\ 2023-2024],
  author: "\nClément PAYET \n \nUniversité Paul SABATIER\nSystèmes de Télécommunications & Réseaux Informatiques",
  date: datetime(year: 2024, month: 08, day:17),
  abstract: [
   Après trois années d'alternance chez Orange International, où j'ai eu l'opportunité de m'intégrer pleinement à l'entreprise, j'aborde dans ce rapport mon expérience de 2024. Arrivé chez Orange en 2021, j'ai progressivement renforcé mes compétences et approfondi ma connaissance du secteur. Cette année, j'ai travaillé sur des projets passionnants, notamment la création d'un simulateur pour la distribution quantique de clés (QKD) et le développement d'outils de gestion des fréquences. Ces initiatives ont non seulement renforcé mes compétences en programmation et en gestion de projet, mais elles ont également permis de livrer un simulateur QKD pleinement opérationnel et des outils de gestion des fréquences efficaces, contribuant ainsi à l'amélioration des capacités opérationnelles de l'entreprise. Cette aventure professionnelle a été une opportunité précieuse pour enrichir mes connaissances en technologies, en physique quantique et en télécommunications.
  ],
  preface: [
    #align(horizon)[
      == Remerciements
      Cette période d'alternance a été une expérience extrêmement enrichissante, rendue possible grâce aux personnes exceptionnelles qui m'ont accompagné tout au long de cette aventure. Je tiens à exprimer ma profonde gratitude envers mon équipe, avec qui j'ai partagé des moments précieux de collaboration et d'apprentissage et qui a su croire en moi.

      Je souhaite adresser mes remerciements les plus sincères à Patrice ROBERT. Son engagement, la qualité de notre communication, ainsi que ses encouragements constants ont été d'un grand soutien et ont véritablement été un moteur pour moi.

      Je remercie également Mathilde CAYLA, ma manageuse, pour la confiance qu'elle m'a accordée sur des projets complexes.

      Enfin, je tiens à exprimer ma gratitude envers Orange pour m'avoir offert cette opportunité d'alternance. Leur soutien et les ressources mises à disposition ont été essentiels pour la réussite de mes projets. Un grand merci à toute l'équipe pour leur accueil chaleureux et leur collaboration tout au long de cette expérience enrichissante.
    ]
  ],
  bibliography: bibliography("refs.bib", full:true, ),
  figure-index: (enabled: true, title:"Liste des figures"),
  table-index: (enabled: true),
  table-of-contents: none,
  listing-index: (enabled: true),
)

#pagebreak()
#heading("Résumé", numbering: none)
Ce rapport présente les travaux réalisés durant mon alternance chez Orange International pour l'année 2023-2024. Mon alternance s'est concentrée sur deux projets principaux : le développement d'un outil de gestion des fréquences pour les réseaux de multiplexage en longueur d'onde (WDM) et la création d'un simulateur pour la distribution quantique de clés (QKD).
#heading("Outil de Gestion des Fréquences", numbering: none, outlined : false,level: 10)
Le premier projet visait à améliorer la gestion du spectre des fréquences, crucial pour l'optimisation des réseaux WDM. Initialement, les données étaient gérées manuellement via un fichier Excel, ce qui entraînait des erreurs et une inefficacité. J'ai développé un outil en Python pour automatiser la lecture et l'analyse de ces données, puis j'ai amélioré l'interface utilisateur en utilisant React.js et Next.js. Le nouvel outil, accessible via une page statique sur GitLab, a simplifié l'accès et l'utilisation, améliorant ainsi l'efficacité opérationnelle de l'équipe.
#heading("Simulateur de Distribution Quantique de Clés (QKD)", numbering: none, level: 10, outlined: false)
Le second projet portait sur le développement d'un simulateur pour la distribution quantique de clés, une technologie de pointe en cryptographie. Ce simulateur, développé en collaboration avec Airbus, Thales et Orange Innovation, vise à démontrer comment les principes de la physique quantique peuvent sécuriser les communications. Le simulateur permet de modéliser les débits des liens pour des protocoles comme BB84 dans un réseau maillé, offrant une visualisation et une évaluation des performances des réseaux quantiques.
#heading("Contributions et Perspectives", numbering: none, level: 10, outlined : false)
Ces projets ont non seulement amélioré les outils et processus internes d'Orange, mais ont également renforcé mes compétences en programmation, gestion de projet et communication technique. Le rapport conclut par une discussion sur les perspectives d'amélioration des outils développés et leur potentiel impact sur les opérations futures d'Orange.

#heading("Summary", numbering: none, outlined: false)
This report presents the work carried out during my internship at Orange International for the year 2023-2024. My internship focused on two main projects: the development of a frequency management tool for Wavelength Division Multiplexing (WDM) networks and the creation of a simulator for Quantum Key Distribution (QKD).
#heading("Frequency Management Tool", numbering: none, level: 10, outlined : false)
The first project aimed to improve the management of the frequency spectrum, which is crucial for optimizing WDM networks. Initially, the data was managed manually via an Excel file, leading to errors and inefficiencies. I developed a tool in Python to automate the reading and analysis of this data, and then improved the user interface using React.js and Next.js. The new tool, accessible via a static page on GitLab, simplified access and usage, thereby enhancing the operational efficiency of the team.
#heading("Quantum Key Distribution (QKD) Simulator", numbering: none, level: 10, outlined : false)
The second project focused on developing a simulator for Quantum Key Distribution, a cutting-edge technology in cryptography. This simulator, developed in collaboration with Airbus, Thales, and Orange Innovation, aims to demonstrate how the principles of quantum physics can secure communications. The simulator allows for modeling link rates for protocols like BB84 in a mesh network, providing visualization and evaluation of quantum network performance.
#heading("Contributions and Perspectives", numbering: none, level: 10, outlined: false)
These projects not only improved Orange's internal tools and processes but also strengthened my skills in programming, project management, and technical communication. The report concludes with a discussion on the prospects for improving the developed tools and their potential impact on Orange's future operations.
#outline()

#heading("Glossaire", numbering: none)
#print-glossary(
    (
    (key: "qkd", short: "QKD", long: "Quantum Key Distribution", desc: "Distribution quantique de clés, une méthode de cryptographie utilisant les principes de la mécanique quantique pour sécuriser les communications."),
    
    (key: "wdm", short: "WDM", long: "Wavelength Division Multiplexing", desc: "Multiplexage en longueur d'onde, une technique permettant de transmettre plusieurs signaux simultanément sur une seule fibre optique en utilisant différentes longueurs d'onde de la lumière."),

    (key: "oms", short: "OMS", long: "Optical Multiplex Section", desc: "Section de multiplexage optique, une partie du réseau WDM où les signaux optiques sont multiplexés."),

    (key: "ihm", short: "IHM", long: "Interface Homme-Machine", desc: "Interface utilisateur, la partie d'un logiciel avec laquelle l'utilisateur interagit."),

    (key: "nextjs", short: "next.js", long:"Next.js", desc: "Un framework de développement web basé sur React.js, utilisé pour créer des applications web côté serveur et côté client."),

    (key: "laravel", short: "laravel", desc: "Un framework PHP pour le développement d'applications web, connu pour sa syntaxe élégante et ses fonctionnalités robustes."),

    (key: "orm", short: "ORM", long: "Object-Relational Mapping", desc: "Mappage objet-relationnel, une technique de programmation pour convertir des données entre des systèmes de type incompatible en utilisant des objets de programmation."),

    (key: "ci-cd", short: "CI/CD", long: "Continuous Integration/Continuous Deployment", desc: "Intégration continue et déploiement continu, des pratiques de développement logiciel où les modifications de code sont automatiquement testées et déployées."),

    (key: "nms", short: "NMS", long: "Network Management System", desc: "Système de gestion de réseau, un logiciel ou un ensemble d'outils utilisés pour gérer et surveiller un réseau informatique."),

    (key: "poc", short: "PoC", long: "Proof of Concept", desc: "Preuve de concept, une réalisation d'un certain concept ou théorie pour démontrer sa faisabilité."),
    
    (key: "react", short: "react", long: "React.js", desc: "Un framework JavaScript populaire pour la construction d'interfaces utilisateur, maintenu par Facebook."),
    
    (key: "backend", short: "backend", desc: "La partie d'une application web qui gère la logique, les bases de données et les intégrations côté serveur."),
    
    (key: "frontend", short: "frontend", desc: "La partie d'une application web qui gère l'interaction avec l'utilisateur, généralement développée avec des technologies comme HTML, CSS et JavaScript."),

    (key: "api", short: "API", long: "Application Programming Interface", desc: "Interface de programmation d'application, un ensemble de règles qui permet à des applications de communiquer entre elles."),
    
    (key: "gnpy", short:"GNPy", long:"Optical Route Planning Library", desc:"GNPy is an open-source, community-developed library for building route planning and optimization tools in real-world mesh optical networks. It is based on the Gaussian Noise Model."),
    
    (key: "si", short: "SI", long: "Système d'information", desc: "Un ensemble organisé de ressources (matérielles, logicielles, humaines, données) qui permettent de collecter, stocker, traiter et communiquer des informations au sein d'une organisation."),
    
    (key: "seed", short: "seed", long: "Seeding de base de données", desc: "Le processus de peuplement initial d'une base de données avec des données de test ou des données initiales nécessaires au fonctionnement de l'application."),
    
    (key: "alice", short: "Alice", desc: "Dans les protocoles de cryptographie quantique, @alice est le nom donné au participant qui envoie les informations, notamment dans le cadre de la distribution quantique de clés (QKD)."),
    
    (key: "bob", short: "Bob", desc: "Dans les protocoles de cryptographie quantique, @bob est le nom donné au participant qui reçoit les informations, notamment dans le cadre de la distribution quantique de clés (QKD)."),
    
    (key: "bb84", short: "BB84", desc: "Le premier protocole de distribution quantique de clés (QKD), proposé par Charles Bennett et Gilles Brassard en 1984. Il utilise des qubits polarisés pour échanger des clés cryptographiques de manière sécurisée."),
    
    (key: "e91", short: "E91", desc: "Un protocole de distribution quantique de clés (QKD) basé sur l'intrication quantique, proposé par Artur Ekert en 1991. Il exploite les corrélations quantiques pour assurer la sécurité des communications."),

    (key : "nco", short: "NCO", long:"Network Capacity & Optimization"),
    
    (key : "tf", short: "TF", long:"Transmission Factory"),
    (key : "oinis", short: "OINIS", long:"Orange International Networks Infrastructures & Services"),
    (key : "bnm", short: "BNM", long:"Business and Network Management"),
    (key : "wp", short: "WP", long:"Work Package", desc:"Groupe de travail dans le projet EuroQCI ou FranceQCI"),
    (key : "netsquid", short: "Netsquid", long:"Network Simulator for Quantum Information using Discret Events", desc:"Librairie python développée par l'entreprise QuTech afin de modeler et réaliser des simulations sur des réseaux quantique."),
    (key: "ne", short: "NE", long: "Network Element", desc: "Un élément de réseau, qui est un composant individuel dans un réseau de communication, tel qu'un routeur, un commutateur ou un point d'accès, ayant une fonction spécifique dans la gestion du trafic réseau."),
    (key: "prepared-measure", short: "Prepared Measure", desc: "Dans le contexte de la distribution quantique de clés (QKD), un protocole de type « prepared and measure » implique que l'émetteur (Alice) prépare et envoie des qubits dans un état quantique spécifique, que le récepteur (Bob) mesure ensuite pour établir une clé sécurisée."),
    (key: "entangled", short: "Entangled", long: "Intriqué", desc: "En physique quantique, se réfère à l'état de particules qui sont corrélées de manière telle que l'état de l'une détermine instantanément l'état de l'autre, même à distance. Ce phénomène est utilisé dans certains protocoles QKD, comme le protocole E91."),
    (key: "simulation", short: "simulation", desc: "Dans le cadre de ce rapport, la simulation fait référence à la modélisation numérique d'un réseau quantique pour étudier et prévoir le comportement des systèmes quantiques, tester des protocoles comme le QKD et évaluer les performances avant leur déploiement réel."),
    (key: "qber", short: "QBER", long: "Quantum Bit Error Rate", desc: "Le taux d'erreur par bit quantique, un indicateur de la qualité d'une transmission dans un protocole de distribution quantique de clés (QKD). Le QBER mesure le pourcentage de bits qui sont incorrectement reçus par rapport au total des bits transmis et est crucial pour évaluer la sécurité et l'efficacité du processus de QKD."),
    (key: "keyrate", short: "débit", long: "Débit de clé", desc: "Le débit de clé, exprimé en bits par seconde (bps), mesure la vitesse à laquelle des bits de clé sécurisée sont générés dans un protocole de distribution quantique de clés (QKD)."),
    (key: "efficacite", short: "Efficacité", desc: "Dans le contexte d'un échange QKD, l'efficacité fait référence à la proportion de bits générés qui sont utilisables comme clé secrète, après avoir pris en compte les erreurs et les pertes. Elle est exprimée en pourcentage et indique la performance globale du protocole QKD."),
    (key: "simulation-discrete", short: "Simulation discrète", desc: "Une forme de simulation où le modèle représente un système évoluant à travers une série d'événements discrets dans le temps. Chaque événement se produit à un instant précis et provoque un changement d'état du système, couramment utilisé pour modéliser des réseaux quantiques et d'autres systèmes complexes."),
    (key: "ila", short: "ILA", long: "Optical Inline Amplifier", desc: "Amplificateur optique en ligne, un dispositif utilisé dans les réseaux de communication optique pour renforcer le signal lumineux sur de longues distances. Les ILAs sont essentiels pour maintenir la qualité du signal dans les réseaux WDM et autres systèmes de transmission optique."),
    (key: "trusted-node", short: "Trusted Node", desc: "Dans un réseau quantique, une 'trusted node' (ou 'nœud de confiance') est un point intermédiaire qui reçoit, déchiffre, puis ré-encrypte les données avant de les retransmettre. Ces nœuds sont utilisés pour étendre la portée des communications quantiques au-delà de leurs limites physiques, en s'appuyant sur la confiance accordée à ces nœuds pour préserver la sécurité des clés échangées."),
    (key: "dark-count", short: "Dark Count", desc: "En QKD, un 'dark count' désigne un faux signal détecté par un détecteur de photons en l'absence de tout véritable photon. Ces détections erronées, dues à des bruits thermiques ou électroniques, peuvent affecter la précision du processus de distribution quantique de clés."),
    (key: "python", short: "Python", desc: "Un langage de programmation polyvalent souvent utilisé pour analyser des données ou faire des scripts"),
    (key: "dephasage", short: "Déphasage", desc: "En QKD, le déphasage fait référence à un changement non désiré dans la phase des qubits pendant la transmission, souvent dû à des perturbations environnementales. Ce phénomène peut entraîner des erreurs dans la clé quantique générée et affecter l'éfficacité du protocole."),
    (key: "kme", short: "KME", long: "Key Management Entity", desc: "Entité de gestion des clés, une composante dans un système de communication qui gère la génération, la distribution, le stockage et la rotation des clés cryptographiques, y compris celles générées par des systèmes de QKD."),
    (key: "qkd-module", short: "QKD Module", desc: "Un composant matériel ou logiciel intégré dans un système de communication pour réaliser la distribution quantique de clés (QKD). Le QKD module génère, transmet et reçoit des qubits pour établir des clés cryptographiques sécurisées entre deux parties."),
    (key: "qubit", short: "qubit", plural:"qubits", desc: "L'unité fondamentale d'information quantique, analogue au bit classique mais pouvant exister dans une superposition d'états."),
    (key: "framework", short: "Framework", desc: "Un cadre de travail logiciel qui fournit une structure préétablie pour le développement d'applications. Les frameworks incluent généralement des bibliothèques de code, des outils et des meilleures pratiques pour faciliter le développement rapide et cohérent de logiciels."),
    (key: "defragmentation", short: "défragmentation", desc: "Le processus de réorganisation des ressources dans un spectre, comme dans les réseaux optiques, pour optimiser l'utilisation de la bande passante. La défragmentation réduit les espaces inutilisés entre les blocs de fréquence alloués, améliorant ainsi l'efficacité et la capacité du réseau.")


  )
)


= Orange
== Présentation de l'entreprise
Orange S.A. est une multinationale française de télécommunications. C'est l'un des principaux opérateurs de télécommunications en Europe et en Afrique, offrant une large gamme de services de télécommunications aux particuliers, aux entreprises et aux collectivités locales. Orange propose des services de téléphonie mobile, d'internet haut débit, de télévision par internet et des solutions de télécommunication pour les entreprises.
=== Histoire
Orange a une riche histoire qui commence bien avant qu'elle ne porte ce nom. L'entreprise trouve ses origines dans la société d'État française des télécommunications, la Direction Générale des Télécommunications (DGT), créée en 1941. Voici quelques étapes clés de son histoire :

- 1988 : La DGT devient France Télécom, une société publique.
- 1996 : France Télécom est partiellement privatisée et entre en bourse.
- 2000 : France Télécom acquiert Orange plc, un opérateur de téléphonie mobile britannique. Le nom "Orange" commence à être utilisé pour les services mobiles.
- 2006 : France Télécom unifie toutes ses marques sous le nom Orange.
- 2013 : France Télécom devient officiellement Orange S.A.
=== Implantation
Orange est présente dans de nombreux pays à travers le monde, avec une forte concentration en Europe et en Afrique. Voici une vue d'ensemble de son implantation :

#figure(
image("Images/Implantation_orange.png", height: 35%),
caption: "Cartographie de l'implantation de Orange dans le monde")

- Europe : Orange est présente en France, Espagne, Pologne, Belgique, Luxembourg et Roumanie. En France, c'est l'opérateur historique et le leader du marché. En Espagne et en Pologne, Orange est également un acteur majeur.
- Afrique et Moyen-Orient : Orange est un opérateur clé dans de nombreux pays, dont l'Égypte, le Sénégal, la Côte d'Ivoire et le Maroc. L'entreprise y connaît une croissance rapide grâce à la forte demande pour les services mobiles et Internet.
- Reste du monde : Orange dispose de quelques implantations stratégiques, principalement axées sur des services B2B (business-to-business) à travers le monde.


=== Activités
Orange offre une gamme diversifiée de services de télécommunication :

- Téléphonie Mobile : Orange propose des services de téléphonie mobile, y compris des appels, des messages texte et des services de données. Elle est un acteur majeur dans la fourniture de la 4G et de la 5G.
- Internet Haut Débit : Orange fournit des services d'accès à Internet haut débit et à très haut débit (fibre optique). En France, Orange est le principal fournisseur de services internet.
- Télévision : Orange offre des services de télévision par Internet (IPTV) avec une large gamme de chaînes et de contenus à la demande.
- Services aux Entreprises : Orange Business Services propose des solutions de télécommunications et d'informatique pour les entreprises, incluant les services cloud, la cybersécurité et les solutions IoT (Internet of Things).
- Innovation et Recherche : Orange investit significativement dans la recherche et le développement, notamment dans les domaines de la 5G, de l'intelligence artificielle et des nouvelles technologies de l'information et de la communication.
Orange se distingue par sa capacité à innover et à s'adapter aux évolutions technologiques et aux besoins de ses clients, tout en restant un acteur clé du paysage des télécommunications en France et à l'international.

=== Orange en quelques chiffres
- 26 pays : Orange est opérateur dans 26 pays à travers le monde.
- 137 000 salariés : L'entreprise emploie environ 137 000 personnes.
- 300 millions de clients : Orange compte 300 millions de clients à l'échelle mondiale.
- 44,1 milliards d'euros de chiffre d'affaires en 2023
Ces chiffres illustrent l'ampleur et la portée de l'influence de Orange dans le secteur des télécommunications globales.


=== Organigramme
#figure(image("Images/organigramme.png", format: "png"), caption: "Organigramme de Orange jusqu'à NCO (mon équipe), BNM et MEET")
L'équipe @nco, sous la responsabilité de Mathilde CAYLA, qui est également ma tutrice, collabore étroitement avec l'équipe @bnm sur divers projets. Nous sommes rattachés au département @tf, elle-même sous la supervision de @oinis.

== Présentation de mon équipe et des ses activités
Mon équipe est chargée de la phase "Think" du modèle "Think, Build, Run". Nous nous occupons de la gestion du réseau de multiplexage de longueur d'onde (@wdm) longue distance, à très haut débit (100/200/400 Gb/s). Ce réseau s'étend non seulement en France, mais aussi en Allemagne, aux États-Unis, en Espagne et au Royaume-Uni. Nous avons également des points de présence à Singapour et dans les Caraïbes. Notre mission est de maîtriser ces réseaux étendus et maillés pour maximiser la capacité offerte à nos clients internes et externes, tels que META, TikTok, Google et d'autres.

Le multiplexage de longueur d'onde (@wdm) est une technologie clé qui nous permet de transmettre plusieurs signaux simultanément sur la même fibre optique en utilisant différentes longueurs d'onde de lumière. Cela augmente considérablement la capacité de transmission du réseau en optimisant l'utilisation de l'infrastructure fibre optique existante.

#figure(image("Images/WDM.png"), caption: "Schéma simplifié du fonctionnement du Wavelength Division Multiplexing"
)

Nous collaborons principalement avec Nokia, qui nous fournit l'équipement nécessaire pour réaliser ces réseaux @wdm à haut débit. Depuis 2023, nous avons intégré le fournisseur Infinera à nos partenaires afin de challenger les prix de Nokia, d'améliorer notre flexibilité et notre compétitivité.

= Missions
== Spectre des fréquences
Le spectre des fréquences est un point important dans mon alternance car c'est par là que j'ai commencé et c'est par ce bout que j'ai découvert le @wdm. En l’occurrence, c'est également un point important pour notre équipe puisque ce spectre des fréquences est la base de toutes les études, que ce soit pour prévoir un dédoublement d'artère car le spectre est saturé que pour installer des clients sur les longueurs d'onde afin de proposer des services.

Notre spectre est géré par Nokia, car notre équipe ne dispose ni des outils nécessaires ni des ressources pour le faire en interne. Cela entraîne certaines limitations, notamment le fait que Nokia maintient le prévisionnel du spectre sur un fichier Excel, le plan de déploiement. Ce fichier, auquel je me référerai dans cette section, est mis à jour manuellement par Nokia, ce qui le rend susceptible d'erreurs.

Afin de se projeter pour les chapitres qui suivent, voici une présentation de l'actuel plan de déploiement : 

#figure(image("Images/PdD/PdD.png"),caption: "Zoom sur le plan de déploiement")

L'axe horizontal fait office de "spectre", il permet de décrire les longueurs d'onde et de les associer aux fréquences. L'axe vertical permet de décrire les tronçons du réseau, les @oms sont alors explicités dans la `colonne E`.

#figure(
image("Images/PdD/DezoomPdD.png"),
 caption: "Plan de déploiement dézoomé"
) <pddZoom>


On constate rapidement les limites de ce plan de déploiement : sa taille est énorme (la @pddZoom ne montre que 20 % de l'ensemble du document) et il est très peu lisible.


=== Rappel année alternance 2021, 2022, 2023
L'une de mes principales activités durant ma première année d'alternance a été de développer un outil en Python capable de lire ce fichier Excel et de restituer ses informations sous forme de carte. Cet outil permet également de trouver des chemins partageant des fréquences communes, facilitant ainsi l'identification de la bande passante restante, comme par exemple le nombre de 100 GHz encore disponible sur le spectre.

L'outil que j'ai créé est devenu indispensable pour les analyses, mais son utilisation n'était pas très pratique. Son @ihm se présentait sous la forme d'une fenêtre Tkinter, ressemblant à ceci :

#figure(caption: "Interface TKinter réalisé sur la V1 de l'outil", image("Images/InterfaceTKinter1.png", height: 35%))

=== Évolutions apportées
Face à la nécessité persistante d'utiliser cet outil et aux demandes croissantes d'adaptation pour gérer des cas particuliers, j'ai entrepris de l'améliorer en tirant parti de mes compétences autodidactes en développement @frontend, principalement avec @react. J'ai conservé la logique initiale du @backend pour récupérer les informations du fichier Excel et l'ai intégré dans un @frontend plus convivial et fonctionnel.

Le nouveau @frontend simplifie considérablement l'accès à l'application. Auparavant, l'outil nécessitait la création d'un dossier pour exporter un fichier .exe, ce qui compliquait l'accès. Désormais, grâce à l'hébergement du code sur GitLab d'Orange, l'outil est accessible directement via une page statique sur GitLab, accessible par une simple URL. Cette évolution permet un gain de temps significatif et réduit les frictions liées à l'utilisation de l'outil, favorisant ainsi une adoption plus large.

Voici à quoi ressemble ce nouveau @frontend :

#figure(image("Images/FrontendFrequence.png", height: 40%), caption: "Nouvelle interface de l'outil des fréquences")

En parallèle, j'ai également profité de cette occasion pour approfondir le sujet, résoudre divers problèmes persistants, fiabiliser ainsi que formater les données pour en optimiser l'exploitation.

=== Déploiement
Bien que le déploiement soit relativement simple et portable, il n'est pas optimal dans ce cas précis. En effet, nous ne disposons pas facilement de serveurs ou de machines virtuelles permettant un déploiement automatique avec un @backend intelligent capable de gérer les mises à jour de manière continue : @ci-cd.

En réponse à ces contraintes, j'ai élaboré une procédure détaillée pour guider les non-initiés dans le déploiement et la mise à jour de cet outil après mon départ. Cette procédure inclut non seulement les étapes techniques, mais aussi un mode opératoire destiné à des collègues sans expertise informatique. Ce mode opératoire couvre notamment la gestion de Git et l'utilisation de Python et a été testé et validé en collaboration avec ces collègues, assurant ainsi leur autonomie dans la gestion future de l'outil.

=== Conclusion
Bien que ce programme fonctionne très bien et apporte des améliorations significatives, il est important de noter que la fiabilité des données n'est pas garantie à 100%. Les erreurs peuvent survenir en raison de la saisie des données dans Excel, notamment en utilisant des couleurs dans les cellules, ce qui peut compliquer la gestion et l'extraction des informations.

Avec l'arrivée récente d'Infinera, la gestion du spectre est devenue un sujet de débat important, particulièrement concernant la nécessité de gérer ce spectre en interne. Les discussions ont révélé que, malgré les souhaits exprimés, aucun outil adéquat n'était disponible pour administrer efficacement ce spectre.

Cette situation a mis en lumière la nécessité d'une solution plus adaptée et durable. C'est pourquoi j'ai entrepris de développer un outil agnostique permettant de gérer les fréquences de manière similaire à Excel, mais avec une interface qui standardise la saisie des données. Cette approche vise à offrir une source de données propre et exploitable, tout en introduisant le besoin d'un outil de spectre sur mesure pour mieux répondre aux exigences spécifiques des études.

Ainsi, le chapitre suivant détaillera le développement de cet outil spectre sur mesure, qui représente une solution plus pérenne et adaptée aux besoins évolutifs de gestion du spectre.

== Outil spectre sur mesure

Dans la partie précédente, j'ai décrit le développement d'un outil simplifiant la lecture du fichier Excel "plan de déploiement", sans pour autant modifier la source de données. Cependant, pour répondre aux besoins d'automatisation et de fiabilité dans la gestion du spectre de fréquences, il devient nécessaire de réfléchir à une solution plus robuste. L'objectif ici est de remplacer complètement le fichier Excel par un outil capable d'automatiser la gestion du spectre, afin d'améliorer l'efficacité et de garantir une fiabilité accrue des données. 

Comme les processus sont souvent très lents dans de grandes entreprises comme Orange et après plusieurs réunions pour discuter de la gestion du spectre, j'ai décidé de proposer un @poc. En utilisant les compétences que j'ai acquises pendant mon temps personnel, j'ai démontré que le développement d'une solution était possible et ce, en seulement deux semaines, afin de la présenter lors de la prochaine réunion d'équipe. Mon objectif était de répondre à ce besoin urgent et de proposer un argumentaire pour le make plutôt que le buy (développement ou achat de logiciel).

=== Besoin
Le besoin pour cet outil était déjà très clair pour moi, ayant travaillé sur le plan de déploiement et l'outil d'interprétation, ainsi que participé à de nombreux échanges sur la gestion du spectre. Cependant, avant de me lancer dans le développement, j'ai également pris soin de recueillir les besoins auprès de mes collègues, notamment Jean-François, pour m'assurer que l'outil répondrait aux attentes. De plus, j'ai pris contact avec Nokia afin de creuser davantage le sujet de la gestion du spectre et d'explorer les algorithmes qu'ils utilisent.

Cette gestion du spectre diffère de la simple récupération des informations du réseau via le @nms car elle inclut également les prévisions des modifications à venir sur le réseau. Il était donc nécessaire de créer un outil capable de remplacer le plan de déploiement, ou au minimum, d'offrir une interface pour interagir avec notre spectre afin de fiabiliser les données et d'appliquer des règles d'utilisation métier.

L'objectif est d'obtenir des données fiables permettant de calculer précisément le taux d'occupation des artères et leur fragmentation. Cet outil a également une importance stratégique et économique, car il permettrait de maîtriser et de réinternaliser la gestion du spectre. Cela est particulièrement pertinent dans des situations où nous ajoutons un nouveau fournisseur, nous permettant ainsi d'éviter les coûts liés à la gestion externalisée du spectre et de garantir notre autonomie dans cette gestion.


=== Développement et mise en oeuvre
==== Choix technique
Techniquement, pour répondre aux besoins et pour proposer plusieurs solution d'implémentation, j'ai développé cet outil à deux reprises. La première version a été réalisée en une semaine en utilisant @nextjs et c'est cette version que j'ai présentée à l'équipe lors de la réunion. La seconde version a été développée en utilisant #gls("laravel") pour bénéficier d'un @backend plus puissant, capable de gérer des fonctions avancées, des tâches en arrière-plan et des files d'attente.

==== Next.js
Étant donné le temps imparti et les contraintes, il était pertinent d'utiliser un @framework comme @nextjs. Rapide et pratique à prendre en main pour des applications de ce type, @nextjs présente toutefois des limitations pour les actions serveur côté @backend, comme l'envoi de mails ou l'utilisation d'autres services, qui doivent être gérés par des @api tiers. #linebreak()
Voici la stack technique utilisée :
  - Nextjs : @framework React.js
  - React.js : @framework JavaScript
  - Prisma : @orm pour Node.js et TypeScript
  - Tailwind CSS : @framework CSS utilitaire
  - TypeScript : Superset de JavaScript pour le typage statique

==== Laravel
Après avoir réalisé la première version avec @nextjs, qui a été bien accueillie, j'ai décidé de développer une version améliorée pour répondre aux besoins potentiels de mise en production, même si je ne serai pas présent pour sa mise en œuvre finale en raison de la fin de mon alternance. Cette nouvelle version utilise un @backend plus complet, offrant des fonctionnalités étendues telles que l'envoi de mails, la gestion des tâches en arrière-plan et des cron jobs (tâche périodique).
#linebreak()
Voici la stack technique utilisée : 
  - backend :
    - #gls("laravel") : @framework PHP
    - Laravel Sanctum : Authentification @api
    - SQLite : Base de données légère
    - MySQL : Base de données
    - Composer : Gestionnaire de dépendances PHP
  - frontend :
    - React.js : @framework JavaScript
    - Tailwind CSS : @framework CSS utilitaire
    - npm : Gestionnaire de dépendances JavaScript

=== Présentation
Pour les chapitres suivants, je vais présenter uniquement la partie développée en utilisant le @framework Next.js. La plupart du temps, je vais également montrer des données dites "@seed". Il s'agit de données fictives utilisées pour remplir la base de données sans avoir à passer par l'interface. Ce "@seed" permet de tester l'application dans tous les cas de figure possibles mais également de ne pas exposer les données confidentielles.

==== Architecture logicielle
L'application est divisée en plusieurs vues. Je ne vais pas m'attarder sur les détails du code, car ils sont moins importants comparés à l'architecture globale. Le schéma ci-dessous présente l'architecture de la base de données et illustre la logique utilisée pour matérialiser les fréquences dans l'application. 
#figure(image("Images/nextapp/Conception/diagram.png"), caption: "Schéma de la base de donnée de l'application next.js") <schemabdd>

La figure ci-dessus (@schemabdd) illustre les relations entre les différentes tables de la base de données, offrant ainsi une vue d'ensemble de son architecture. Le modèle repose sur une entité centrale, le `Network`. Chaque réseau est constitué de ses propres sections #gls("oms") et de ses propres `Node`. Cette organisation permet, par exemple, de configurer un réseau spécifique pour un fournisseur comme NOKIA, avec ses nœuds et @oms dédiés, tout en permettant également de déployer un autre réseau au même endroit pour un fournisseur différent, tel qu’Infinera.

Chaque `OMS` a des « caractéristiques » telles que la bande de fréquence (`band`) à laquelle il est assigné. Par exemple, un @oms peut être attribué à la bande C (1530 nm à 1565 nm ou 191,560 à 195,942 THz) du spectre ou à une combinaison C+L (1530 à 1625 nm). Il possède également un nom spécifique qui doit suivre une nomenclature définie. Les autres tables de la base de données servent à associer les fréquences utilisées sur cet @oms.

==== Les vues

#figure(image("Images/nextapp/reseaux.png"), caption: "Capture d'écran de la page des différents réseaux") <fig9>

La @fig9 montre la liste de réseau. celle-ci est modifiable, on peut ajouter, modifier ou supprimer un réseau à notre guise en fonction du besoin. Cela permet de bien séparer les usages mais également d'avoir des informations capitales directement accessibles au même endroit comme le fournisseur 

#figure(image("Images/nextapp/inNetwork.png"), caption: "Capture d'écran de la page d'un réseau : 'YlNHCBBiYc'") <fig10>
Pour rappel, les copies d'écran ont été réalisées avec des données fictives et générées aléatoirement pour des raisons de confidentialité.

La @fig10 présente toutes les informations principales du réseau : son nom, les nœuds ainsi que les sections @oms et les fréquences qui leur sont associées (partie inférieure). La partie inférieure est "scrollable" horizontalement afin de visualiser le spectre en entier. Chaque @oms est clickable et amène à la vu suivante :
#figure(image("Images/nextapp/OMS.png"), caption: "Capture d'écran de la vue d'un OMS : 'YRbhpB/fyhMZR-chsDHi/raQmHY 150OMS1'")
Cette vue permet d'avoir, en un coup d'œil, un résumé complet de cet @oms. En plus des fréquences affichées comme sur la vue précédente, le tableau à droite offre une vision simple et globale de tout le spectre. Il est interactif et permet de voir quelle longueur d'onde se trouve dans chaque case en fonction de l'endroit sélectionné par l'utilisateur. Chaque case est la représentation d'une partie du spectre total et fait 6.25 GHz. Dans ce cas la, une longueur d'onde de 50 GHz prendra 8 cases, une de 100 GHz, 16 cases. Cette représentation permet d'avoir une vision précise des différentes utilisations spectrales déployées par Orange. 

Les longueurs d'onde sur l'@oms sont codées par des couleurs : bleu pour 50 GHz, jaune pour 62,5 GHz, violet pour 75 GHz et marron pour 100 GHz. En outre, le calcul de l'occupation est fiable et, surtout, visible.

Depuis les @oms, il est possible d'accéder aux @ne qui sont ses extrémités : 
#figure(image("Images/nextapp/NE.png"), caption: "Capture d'écran de la vue d'un NE : Divsdx/ihRpTY") <fig12>

La vue présentée en @fig12 est assez simpliste et pourrait être améliorée pour ajouter des fonctionnalités concernant ces @ne. Lorsque la géolocalisation du @ne est disponible, le carte est disponible.

Les captures d'écran suivantes montrent simplement les vues des NE et des @oms sous forme de liste. Ces vues offrent également un aperçu non exhaustif du réseau ainsi que des spécificités des informations. Chaque liste est triable et filtrable par colonne, permettant ainsi de croiser différentes conditions.
#figure(image("Images/nextapp/listeNE.png"), caption: "Capture d'écran de la vue liste des NE")
#figure(image("Images/nextapp/listeOMS.png"), caption: "Capture d'écran de la vue liste des OMS")

==== Ajouter des fréquences à un OMS

Avoir une vue d'ensemble complète du réseau via les @oms et les @ne est crucial. Cela permet d'optimiser son utilisation et ainsi que son développement. Cependant, l'assignation des fréquences, actuellement réalisée par NOKIA, l'est tout autant car c'est la porte d'entrée pour nos études. Le défi principal est de sélectionner plusieurs @oms pour visualiser les fréquences qu'ils partagent et identifier les espaces disponibles sur le spectre. Cette fonctionnalité est intégrée dans cet outil, permettant une visualisation rapide et efficace de ces informations.

#figure(image("Images/nextapp/multiOMS.png"), caption: "Capture d'écran de la vue lors de l'attribution d'une fréquence sur plusieurs OMS")

La capture d'écran ci-dessus illustre la simplicité et la praticité de l'attribution d'une fréquence sur le spectre à l'aide d'@oms prédéfinis. Deux méthodes sont disponibles pour choisir la fréquence :
- Liste déroulante : Pour une sélection précise des fréquences disponibles.
- Sélection d'un emplacement disponible (case verte) à droite : Pour une approche directe et intuitive. @100GHz, @75GHz, @62GHz, @50GHz
L'espacement spectral est sélectionné uniquement dans l'interface de gauche via une liste déroulante. Cette sélection met à jour en temps réel l'occupation du spectre affichée à droite.

#figure(image("Images/nextapp/100GHz.png"), caption:"Zoom sur l'occupation du spectre avec un espacement spectral de 100GHz")  <100GHz>
#figure(image("Images/nextapp/75GHz.png"), caption:"Zoom sur l'occupation du spectre avec un espacement spectral de 75GHz")  <75GHz>

#figure(image("Images/nextapp/62.5GHz.png"), caption:"Zoom sur l'occupation du spectre avec un espacement spectral de 62.5GHz")  <62GHz>
#figure(image("Images/nextapp/50GHz.png"), caption:"Zoom sur l'occupation du spectre avec un espacement spectral de 50GHz") <50GHz>

Le spectre complet et le plan de déploiement sont visibles juste en dessous, permettant une vue détaillée des longueurs d'onde. Une ligne fictive résume toutes les longueurs d'onde représentées, tandis que les emplacements en rouge signalent les zones non disponibles sur tout le parcours sélectionné pour ces @oms.

#figure(image("Images/nextapp/zoomSurSpectre.png"), caption: "Capture d'écran zoomé sur le spectre avec le lien 'résumé'"
)

Cet ajout facilite la gestion du spectre de manière similaire à la méthode actuelle de NOKIA, mais à travers une interface plus intuitive. Les données sont accessibles directement via une @api ou par export CSV, ce qui améliore la qualité des données comparée à une gestion manuelle qui implique des cases de couleur.

En l'état, l'outil n'intègre pas de logique avancée pour l'attribution des fréquences. Actuellement, l'attribution n'est pas automatisée et ne prend pas en compte des critères tels que la fragmentation ou d'autres optimisations. Ce problème pourrait être adressé par le développement d'un algorithme supplémentaire, accessible via une @api externe, une fois que les données sont propres et exploitables.

==== Cartographie
En complément d'un affichage sous forme de liste, j'ai intégré une visualisation cartographique. J'avais déjà réalisé la carte à partir du fichier Excel du plan de déploiement et j'en ai profité dans le cadre de cet outil pour l'intégrer directement avec des données fiables. 
#figure(image("Images/nextapp/carte.png"), caption: "Capture d'écran de l'onglet carte de l'application sur le réseau : mPUkuYkAyC")

=== Comparaison avec d'autres outils
L'outil répond aux besoins spécifiés précédemment, mais il reste encore des marges de progression. Son objectif n'est pas de posséder les fonctionnalités nécessaires pour la @defragmentation ou la gestion logique du spectre, comme le ferait @gnpy.

Cela soulève la question suivante : cet outil répond-il à tous les besoins ? Quels sont ses avantages et ses limites ?

==== Avantages et inconvénients
L'un des principaux avantages de cet outil réside dans sa facilité de prise en main ainsi que dans le formatage des données. Toutefois, l'utilisateur est limité à une seule tâche : la gestion des fréquences. Cette limitation peut être perçue à la fois comme un avantage et comme un inconvénient. D'un côté, elle simplifie l'utilisation, mais de l'autre, mes collaborateurs recherchent un outil polyvalent et tout-en-un.

L'architecture du @si au sein d'Orange et plus particulièrement @oinis ne permet pas un déploiement rapide des applications en raison de contraintes très strictes notamment en sécurité. Bien que notre objectif soit de connecter ces outils via des @api pour atteindre une intégration fluide, ce processus est à la fois complexe et chronophage. De plus, notre équipe ne dispose pas des compétences nécessaires pour mener à bien cette tâche.

Comme actuellement développé, ce gestionnaire de fréquence ne permet pas l'import de quelconques données depuis un @nms via une @api, chose qui peut être réalisé fastidieusement avec @nextjs mais plutôt facilement avec la version de l'application #gls("laravel")

==== Réception des utilisateurs
Les retours et les critiques sur cet outil ont été très positifs. L'interface est simple, pratique et des idées comme le spectre sous forme de cases ont été bien reçues. Habituellement, la production de ce type d'outil est très lente et coûteuse lorsqu'elle est externalisée. L'outil est utilisable, même s'il n'est pas encore déployé et permet d'inclure cette perspective dans les discussions sur l'internalisation ou l'outillage pour la gestion des fréquences.

J'ai également pu présenter cet outil à un public plus large, notamment à NOKIA et à d'autres entités du groupe mais également à RandStad, une SSII, qui développe notre solution pour la gestion de nos services sur nos réseaux, afin de démontrer la faisabilité de ce projet.

==== Perspectives d'évolution

Les perspectives d'évolution de cet outil sont considérables, même s'il s'agit encore d'un @poc. Avec une version développée sous #gls("laravel"), il serait possible d'intégrer directement les informations des réseaux via une interface avec les @nms. Cette intégration permettrait une synchronisation en temps réel des données du réseau, offrant ainsi une vue toujours à jour de l'utilisation du spectre. Une fonctionnalité de suppression pourrait être ajoutée pour éviter de laisser des longueurs d'onde inutilisées sur le spectre, un problème qui s'est déjà présenté par le passé. Cette amélioration optimiserait l'utilisation des ressources du réseau et préviendrait le gaspillage de bande passante.

Si l'outil était déployé avec quelques développements supplémentaires, il pourrait devenir un point central pour les équipes @bnm et @nco ou même @oinis travaillant sur le @wdm. En centralisant toutes les informations relatives à la gestion du spectre, il faciliterait la collaboration entre les différentes équipes et améliorerait la prise de décision.

L'outil pourrait également servir de base de données pour d'autres outils intégrant des fonctionnalités de routage ou de @defragmentation. Cette intégration ouvrirait la voie à une gestion plus intelligente et automatisée du réseau, permettant par exemple d'optimiser de manière dynamique l'allocation des fréquences en fonction de la demande.

Au-delà de l'aspect technique, cet outil ouvre également des perspectives dans la réflexion autour de la gestion des infrastructures réseau. Il pourrait servir de catalyseur pour repenser les processus de gestion du spectre au sein de @oinis, encourageant une approche plus proactive et data-driven de l'optimisation des ressources réseau.

Enfin, le succès de ce @poc pourrait inspirer le développement d'outils similaires pour d'autres aspects de la gestion du réseau, contribuant à une transformation digitale plus large des opérations d'Orange. Cette évolution vers des outils internes sur mesure pourrait renforcer l'autonomie technologique de @oinis et sa capacité à s'adapter rapidement aux évolutions du marché des télécommunications sans devoir débourser des sommes importantes pour des outils externes.

=== Apport à l'entreprise

Le développement de cet outil de gestion des fréquences a apporté plusieurs bénéfices significatifs à Orange :

1. Amélioration de l'efficacité opérationnelle :
   L'outil permet une visualisation rapide et intuitive du spectre des fréquences, facilitant la prise de décision pour l'attribution des longueurs d'onde. Cela se traduit par une réduction du temps nécessaire pour planifier et optimiser l'utilisation du spectre, augmentant ainsi l'efficacité opérationnelle de l'équipe.

2. Réduction des erreurs :
   En remplaçant le processus manuel basé sur Excel par une interface utilisateur structurée, l'outil minimise les risques d'erreurs humaines dans la gestion des fréquences. Cela améliore la fiabilité des données et réduit les coûts potentiels liés aux erreurs de planification.

3. Autonomie et internalisation des compétences :
   L'outil démontre la capacité d'Orange à développer en interne des solutions adaptées à ses besoins spécifiques. Cela réduit la dépendance vis-à-vis des fournisseurs externes pour la gestion du spectre, renforçant ainsi l'autonomie de l'entreprise et potentiellement réduisant les coûts à long terme.

4. Base pour l'innovation future :
   Bien que l'outil soit encore un @poc, il pose les fondations pour des développements futurs plus avancés. Il ouvre la voie à l'intégration de fonctionnalités plus complexes comme la @defragmentation automatique ou l'optimisation du spectre, positionnant Orange à l'avant-garde de la gestion des réseaux @wdm.

5. Amélioration de la collaboration inter-équipes :
   L'interface conviviale de l'outil facilite le partage d'informations entre les différentes équipes impliquées dans la gestion du réseau. Cela favorise une meilleure collaboration et une compréhension partagée des enjeux liés à l'utilisation du spectre.

6. Démonstration de l'agilité et de la capacité d'innovation :
   Le développement rapide de cet outil (en deux semaines) démontre la capacité d'Orange à réagir rapidement aux besoins opérationnels et à innover en interne.

7. Potentiel d'économies :
   À terme, une meilleure gestion du spectre pourrait permettre une utilisation plus efficace des ressources réseau, potentiellement retardant ou réduisant le besoin d'investissements dans de nouvelles infrastructures.

En résumé, cet outil, bien que développé comme un @poc, a démontré un potentiel significatif pour améliorer les opérations et réduire les coûts. Il représente un pas important vers une gestion plus efficace et autonome des ressources réseau de l'entreprise ainsi que l'ouverture d'une réflexion sur les outils de gestion de l'infrastructure.

==== Apport personnel

Le développement de cet outil de gestion des fréquences a représenté une expérience enrichissante sur le plan personnel et professionnel :

1. Consolidation des compétences techniques :
   Ce projet m'a permis de consolider mes compétences en @nextjs, un @framework que je n'avais jamais utilisé pour une application métier. J'ai également approfondi mes connaissances en #gls("laravel") lors du développement de la seconde version. Cette expérience a renforcé ma polyvalence technique et ma capacité à apprendre rapidement de nouvelles technologies.

2. Développement de compétences en gestion de projet :
   Le délai serré de deux semaines pour développer la première version de l'outil m'a poussé à améliorer mes compétences en gestion du temps et en priorisation des tâches. J'ai appris à travailler efficacement sous pression tout en maintenant la qualité du code.

3. Amélioration de la communication technique :
   La présentation de l'outil à différentes parties prenantes, y compris des collègues non techniques, m'a permis d'affiner mes compétences en communication technique. J'ai appris à expliquer des concepts complexes de manière claire et accessible.

4. Renforcement de la confiance professionnelle :
   Le succès de ce projet et les retours positifs reçus ont considérablement renforcé ma confiance en mes capacités professionnelles. Cela m'a montré que je suis capable de relever des défis complexes et de livrer des solutions de qualité dans des délais contraints.

5. Compréhension approfondie du domaine métier :
   Ce projet m'a permis d'approfondir ma compréhension des réseaux @wdm et de la gestion du spectre des fréquences. Cette connaissance métier sera précieuse pour mes futurs projets dans le domaine des télécommunications.

6. Développement de l'esprit d'initiative :
   En proposant et en développant ce @poc de ma propre initiative, j'ai renforcé ma capacité à identifier les besoins de l'entreprise et à prendre des initiatives pour y répondre. Cette compétence sera cruciale pour ma future carrière en tant que freelance.

7. Amélioration des compétences en conception d'interface utilisateur :
   La création d'une interface utilisateur intuitive pour cet outil m'a permis d'améliorer mes compétences en conception UX/UI, un aspect important du développement @frontend.

8. Expérience en développement agile :
   Le processus de développement rapide et itératif m'a donné une expérience pratique des méthodes de développement agile, une compétence très recherchée dans l'industrie du développement logiciel.

Cette expérience a été un tremplin important dans mon développement professionnel, me permettant de combiner mes compétences techniques avec une compréhension approfondie des besoins métier. Elle a renforcé ma confiance en ma capacité à apporter une valeur ajoutée significative dans mes futurs projets en freelance.
#pagebreak()

== Projet Quantique : Quantum Key Distribution

=== Introduction
Durant mon alternance chez Orange, j'ai également eu la chance de travailler sur un sujet particulièrement innovant: l'application de la physique quantique dans les réseaux et les télécommunications. Mon projet principal consistait à développer un simulateur d'échange de clé quantique grâce à la programmation. Ce simulateur vise à démontrer comment les principes de la physique quantique peuvent être utilisés pour améliorer la sécurité des communications en garantissant des échanges de clés cryptographiques inviolables mais également quantifier et dimensionner les liens nécessaires pour de tels échanges. J'ai collaboré étroitement avec Patrice ROBERT, un collaborateur dans mon équipe @nco mais également avec Airbus, Thalès et Orange Innovation pour concevoir et tester ce simulateur et étudier les défis techniques associés à l'implémentation des protocoles de communication quantique. Cette expérience m'a permis de renforcer mes compétences en programmation et en recherche, tout en contribuant à un domaine de pointe prometteur pour l'avenir des télécommunications. Je travaille spécifiquement dans le @wp 5 du projet, la @simulation terrestre.


==== Présentation
===== EuroQCI
Le projet EuroQCI (European Quantum Communication Infrastructure) est une initiative ambitieuse menée par la Commission européenne en collaboration avec les 27 États membres de l’UE et l’Agence spatiale européenne (ESA). L'objectif est de concevoir, développer et déployer une infrastructure de communication quantique sécurisée à l'échelle européenne. Cette infrastructure comprendra un segment terrestre basé sur des réseaux de fibres optiques reliant des sites stratégiques tant au niveau national que transfrontalier, ainsi qu'un segment spatial utilisant des satellites. L’EuroQCI sera intégré à IRIS², le nouveau système de communication spatiale sécurisé de l’UE.

Le projet vise à protéger les données sensibles et les infrastructures critiques en incorporant des systèmes quantiques dans les infrastructures de communication existantes, offrant ainsi une sécurité supplémentaire basée sur les principes de la physique quantique. Cela renforcera la protection des institutions gouvernementales européennes, des centres de données, des hôpitaux, des réseaux énergétiques etc. et deviendra un pilier essentiel de la stratégie de cybersécurité de l'UE pour les décennies à venir.

===== FranceQCI
Le projet FranceQCI (France Quantum Communication Infrastructure), piloté par Orange et cofinancé par la Commission européenne pour une durée de 30 mois, vise à déployer des réseaux d'infrastructure de communication quantique en France. Lancé officiellement le 18 avril, ce projet est essentiel pour établir les bases d'un futur système de communication quantique national.

Le consortium de partenaires impliqué dans FranceQCI comprend des acteurs majeurs comme le CNRS, Airbus, Thales, Thales Alenia Space, ainsi que des start-up deeptech telles que Cryptonext Security, VeriQloud et Welinq. Les écoles Sorbonne Université, Télécom Paris, Université Côte d’Azur, ainsi que la Direction générale de l’aviation civile (DGAC) participent également à cette initiative.

Selon Michaël Trabbia, CEO d’Orange Wholesale et CTO & IO du Groupe par intérim, "L’objectif du consortium FranceQCI est de donner une impulsion significative vers une infrastructure européenne de communication quantique pour protéger les données sensibles et les communications critiques des entités gouvernementales, des centres de données, des hôpitaux, des réseaux d’énergie et plus encore."

FranceQCI, en tant que composante de l'EuroQCI et de la stratégie de cybersécurité de l'UE, ambitionne de déployer et d’expérimenter des réseaux d’infrastructure de communication quantique en France. Le projet s'appuiera sur les infrastructures existantes à Paris (ParisRegionQCI) et à Nice (QuantumUCA/Nice), avec pour objectif d’évoluer vers des services opérationnels de distribution quantique de clé (@qkd)

Un réseau quantique sera également activé à Toulouse, dans le laboratoire de la DGAC/DSNA/DTI, pour sécuriser les échanges de données opérationnelles de contrôle du trafic aérien par QKD. Ce projet marque un pas important vers l’autonomie technologique de l’Europe, avec la France parmi les 26 États membres disposant de leur propre programme de déploiement QCI.

En intégrant FranceQCI dans l’initiative plus large de l’EuroQCI, l'objectif est de créer des réseaux de communication quantique sécurisés dans l’Union européenne et ses territoires d’outre-mer, contribuant ainsi à la souveraineté numérique européenne et à la compétitivité industrielle.

===== Organisation
Depuis le début du projet du simulateur d'échange @qkd, je maintiens un diagramme de Gantt et une feuille de route à jour pour partager mes progrès hebdomadaires avec mes collègues chez Orange. Ces outils permettent de montrer les avancées semaine par semaine ainsi que les obstacles rencontrés lors du développement. 


#figure(image("Images/QKD/QKDGantt.png"), caption: "Diagramme de Gantt pour le simulateur d'échange QKD")

Nous avons des réunions hebdomadaires chaque lundi après-midi à 15h avec Patrice ROBERT, mon principal collaborateur sur ce projet. Ces réunions nous permettent de faire le point sur ce qu'il reste à accomplir, de déterminer les priorités pour la semaine et de discuter des aspects techniques. Il n'est pas rare que nous ayons besoin de l'avis de l'autre pour orienter le développement du simulateur ou du @wp.

En complément, j'ai également créé une carte mentale pour aider les personnes qui ne suivent pas le projet de près à comprendre où nous en sommes.
#figure(image("Images/QKD/mindmap.png"), caption: "Carte mentale du projets afin de visualiser rapidement les différentes avancées ")

==== Introduction à la physique quantique
La physique quantique est une branche fondamentale de la physique qui décrit les phénomènes à l'échelle microscopique, où les lois de la mécanique classique ne s'appliquent plus. Elle a été développée au début du 20ème siècle pour expliquer des phénomènes que la physique classique ne pouvait pas résoudre. Voici une introduction aux concepts clés de la physique quantique :

===== La Quantification <quantification>

Le concept de quantification est central en physique quantique. Il stipule que certaines propriétés physiques, comme l'énergie, ne peuvent prendre que des valeurs discrètes, appelées quanta. Par exemple, l'énergie des électrons dans un atome est quantifiée et ne peut prendre que des valeurs spécifiques. Ce concept a été introduit par Max Planck pour expliquer le spectre du rayonnement du corps noir et a été étendu par Niels Bohr pour décrire les niveaux d'énergie des électrons dans l'atome d'hydrogène. Plus d'informations ici : @frwiki:209339978

===== La Dualité Onde-Corpuscule <dualite>
La dualité onde-corpuscule est l'idée que les particules élémentaires, comme les électrons et les photons, exhibent à la fois des propriétés de particules et des propriétés d'ondes. Cette dualité a été démontrée par des expériences telles que la diffraction et l'interférence des électrons, qui montrent des motifs typiques d'ondes et par l'effet photoélectrique, où les photons se comportent comme des particules en éjectant des électrons d'une surface métallique. Louis de Broglie a formalisé cette dualité en proposant que toute particule a une longueur d'onde associée, inversement proportionnelle à sa quantité de mouvement. Plus d'informations ici : @frwiki:213636509

#figure(link("https://upload.wikimedia.org/wikipedia/commons/transcoded/4/43/Dualit%C3%A9_onde-corpuscule.ogv/Dualit%C3%A9_onde-corpuscule.ogv.720p.vp9.webm",image("Images/experienceDualiteOndeCorpuscule.png")), caption: "Vidéo présentant la dualité Onde-Corpuscule par l'utilisation de fentes de Young")

===== La Superposition des États <superposition>
En physique quantique, un système peut exister dans une superposition de plusieurs états à la fois. Par exemple, un électron peut être simultanément dans plusieurs états d'énergie jusqu'à ce qu'une mesure soit effectuée. Le principe de superposition est crucial pour le fonctionnement des #glspl("qubit") en informatique quantique, où un @qubit peut représenter un 0, un 1, ou une superposition des deux. Cette propriété est décrite par la fonction d'onde, qui donne les amplitudes de probabilité des différents états possibles. Elle est notée $Psi(r,t)$.

===== L'Influence de l'Observation <observation>
L'observation joue un rôle unique en physique quantique. Selon le principe de la décohérence, l'acte de mesurer un système quantique provoque l'effondrement de sa fonction d'onde, le faisant passer d'une superposition d'états à un état défini. Cette idée est illustrée par le célèbre paradoxe du chat de Schrödinger, où un chat est à la fois vivant et mort jusqu'à ce qu'une observation soit faite. Le principe de la décohérence rend compte de la transition entre les comportements quantiques et classiques.

===== L'Indétermination <indetermination>
Le principe d'indétermination, formulé par Werner Heisenberg, énonce qu'il est impossible de connaître simultanément avec une précision infinie certaines paires de variables conjuguées, comme la position et la quantité de mouvement d'une particule. Plus précisément, le produit des incertitudes de ces mesures est toujours supérieur ou égal à une certaine valeur minimale, liée à la constante de Planck. Ce principe reflète la nature intrinsèquement probabiliste des phénomènes quantiques et limite notre capacité à prédire exactement l'évolution d'un système quantique. Plus d'informations ici : @frwiki:215820555

===== L'Intrication <intrication>
L'intrication quantique est un phénomène où des particules deviennent liées de telle manière que l'état de l'une dépend instantanément de l'état de l'autre, indépendamment de la distance qui les sépare. Ce phénomène a été mis en évidence par les expériences d'Alain Aspect sur les inégalités de Bell @frwiki:210704932, qui montrent que des corrélations quantiques violeraient les prédictions de la physique classique. L'intrication est à la base de nombreuses applications avancées de la physique quantique, comme la cryptographie quantique et le téléportation quantique.

==== La distribution quantique de clé (QKD)
La distribution de clé quantique, #gls("qkd", long: true) est une technologie révolutionnaire qui repose sur les principes fondamentaux de la physique quantique pour garantir une sécurité cryptographique inégalée. Contrairement aux méthodes de chiffrement classiques, la QKD exploite les propriétés quantiques des particules pour créer et échanger des clés cryptographiques de manière absolument sécurisée. Pour comprendre comment la QKD fonctionne, il est essentiel de se familiariser avec certains concepts clés de la physique quantique : la superposition des états, l'indétermination, l'intrication et l'influence de l'observation.

===== Le Qubit
Un @qubit, ou bit quantique, est l'unité fondamentale de l'information en informatique quantique. Contrairement à un bit classique, qui peut être soit `0` soit `1`, un @qubit peut exister dans une superposition de ces deux états simultanément. Un @qubit s'exprime par l'expression mathématique : $alpha ket(0) + beta ket(1)$.
Cette propriété unique permet aux #glspl("qubit") de représenter et de manipuler une quantité d'information exponentiellement plus grande que les bits classiques. Les #glspl("qubit") sont généralement représentés par des états de particules quantiques, comme les spins d'électrons ou les polarités de photons.

#figure(image("Images/QKD/Blochsphere.png", height: 20%), caption: "Représentation d'un qubit par une sphère de Bloch. Chaque point de la sphère est un état possible du qubit.")

===== La Superposition des États et l'Indétermination dans la QKD
En @qkd, les informations sont souvent encodées dans des états quantiques de photons, tels que leur polarisation. La superposition des états permet à ces photons d'exister simultanément dans plusieurs états de polarisation avant d'être mesurés. Cette propriété est utilisée pour transmettre des bits de données sous la forme d'états quantiques, où un photon peut être dans une superposition de polarisation verticale et horizontale. Le principe d'indétermination entre certaines variables (comme la polarisation en différents axes) garantit que toute tentative de mesure sur ces états dans une base non appropriée introduit une incertitude, modifiant inévitablement l'état du photon et perturbant le message.

===== Observation et Sécurité : Détection des Intrus
L'un des fondements de la sécurité en @qkd réside dans le fait que toute observation ou mesure d'un état quantique affecte irréversiblement cet état. Si un espion tente d'intercepter la clé quantique en mesurant les photons transmis entre deux parties (appelées @alice et @bob), sa présence sera automatiquement détectée. En effet, toute tentative d'observation non autorisée provoque une perturbation observable dans les états quantiques transmis, ce qui alerte immédiatement @alice et @bob de la présence d'un intrus, permettant ainsi de rejeter la clé compromise et d'empêcher tout échange sécurisé basé sur celle-ci.

===== L'Intrication : Un Canal de Communication Inviolable
L'intrication est utilisée dans certaines versions avancées de la @qkd, comme le protocole @e91, où deux particules intriquées sont envoyées à @alice et @bob. Ces particules, même séparées par de grandes distances, restent corrélées d'une manière telle que l'état de l'une dépend instantanément de l'état de l'autre. Si l'une des particules est mesurée, l'état de l'autre est immédiatement déterminé. Cette corrélation instantanée est exploitée pour générer une clé cryptographique commune entre @alice et @bob. Puisque toute mesure par un tiers non autorisé perturberait ces corrélations parfaites, l'intrication assure non seulement la sécurité mais aussi l'inviolabilité de la clé distribuée.

==== Formation et montée en compétence
Une phase intensive de montée en compétence a été nécessaire pour maîtriser les principes fondamentaux de la physique quantique et de la @qkd. Le sujet étant très vaste, j'ai utilisé diverses ressources pour approfondir mes connaissances.
Les principales sources de formation incluent :
- *Collaborations internes* : J'ai bénéficié de l'expertise de mes collègues et des échanges réguliers avec les équipes d'Airbus et de Thalès.
- *Publications scientifiques* : J'ai étudié plusieurs articles de recherche, notamment @Wang2021, @app11093767, @Quantum_Techno_Overview et @qcgiitr_qkd_protocols.
- *Ressources en ligne* : J'ai consulté des vidéos explicatives sur les protocoles @bb84 et @e91, ainsi que les contenus pédagogiques de @davidLouapre ou d'autre sources pour l'introduction à la physique quantique.
- *Articles Wikipédia* : J'ai également utilisé des articles Wikipédia pour comprendre des concepts clés, voir : @frwiki:209339978, @frwiki:216666690, @frwiki:215270545, @frwiki:213636509, @frwiki:211314622, @frwiki:215820555 et @frwiki:210704932.


Cette formation m'a permis de développer une compréhension approfondie des concepts clés et des défis techniques associés à la distribution quantique de clés, me préparant ainsi à contribuer efficacement au développement du simulateur d'échange @qkd.

=== Simulateur QKD
==== Définition du simulateur QKD
Dans le cadre d'Orange, le simulateur requis pour le @wp 5 du projet FranceQCI est destiné à simuler les débits des liens pour un protocole tel que le @bb84 dans un réseau maillé, comme celui que nous pourrions déployer à l'avenir. Notre équipe est responsable de la @simulation de ces liens pour la partie terrestre, tandis qu'Airbus se charge de la @simulation en @prepared-measure et Thalès de la @simulation par particules @entangled pour les satellites.
#figure(image("Images/QKD/PetMvsEntangled.png"), caption: "Schéma du système prepare and measure (Airbus) vs entanglement based (Thalès)")
Chaque modèle d'échange a ses avantages et ses inconvénients, mais nous n'entrerons pas dans les détails de ces derniers pour les échanges spatiaux, car nous nous concentrerons sur les échanges terrestres.

L'objectif principal du simulateur est de fournir une évaluation précise des performances des réseaux quantiques terrestres, en tenant compte des spécificités des protocoles @qkd. Le simulateur permettra de modéliser les débits des liens, d'identifier les goulots d'étranglement potentiels et de proposer des optimisations pour améliorer la sécurité et l'efficacité des communications.

Pour le développement du simulateur, nous utilisons des technologies telles que Python pour la modélisation et la @simulation, ainsi que des bibliothèques spécialisées en physique quantique comme #gls("netsquid").

Les bénéfices attendus de ce simulateur sont multiples : il permettra de mieux comprendre les performances des réseaux quantiques et d'optimiser les configurations réseau. En outre, il servira de base pour des développements futurs et des collaborations avec d'autres acteurs du projet EuroQCI et FranceQCI, comme l'émulation. De plus, il offrira la possibilité d'émuler la distribution de clés sur des plateformes de tests réelles, renforçant ainsi l'intégration et la validation des technologies en conditions réelles.

===== Besoins
Le besoin est assez large. L'objectif principal est de développer un simulateur d'échange @qkd sur un réseau maillé pour obtenir des informations telles que le @keyrate, le taux de détection de @bob, le @qber et l'@efficacite. En plus de cela, il était nécessaire de créer un simulateur de buffer pour identifier les points faibles du réseau et exécuter des scénarios de matrices de trafic. Cela impliquait des contraintes supplémentaires comme le routage et la @simulation-discrete de ces buffers.

Malgré la complexité du besoin, j'ai décidé d'ajouter un @frontend pour visualiser les actions sur le réseau, que ce soit les simulations d'échanges @qkd ou l'évolution des buffers. Ce @frontend s'est avéré très utile pour les échanges avec mon équipe et les collaborateurs du @wp. Il permet de visualiser les concepts plutôt que de simplement les conceptualiser à travers des graphiques scientifiques, bien que ces derniers soient également intégrés pour une étude approfondie en fonction des besoins.
===== Présentation du réseau et ses contraintes

Le réseau à modéliser @mapQKD est étroitement lié aux points de présence d'Orange en France pour @oinis. Cela permet de simuler un réseau réel en utilisant l'infrastructure existante. Le schéma simplifie les connexions en ne présentant que les liaisons entre les principales villes. Cependant, en réalité, le réseau est plus complexe en raison de contraintes physiques.

Dans un réseau @wdm, des @ila sont utilisés pour amplifier le signal optique sur de longues distances. Cependant, pour les échanges @qkd, il est impossible d'utiliser des @ila car l'amplification d'une particule quantique nécessite de la lire, ce qui détruit son état. À la place, nous utilisons des @trusted-node. Cette contrainte de @trusted-node ne permet donc pas des échanges simples entre deux points distants du réseau. En effet, pour établir une communication sécurisée entre deux nœuds non adjacents, il est nécessaire de stocker des clés sur chaque nœud intermédiaire. Ce processus, appelé "key relay", implique que chaque @trusted-node le long du chemin génère et stocke des clés partagées avec ses voisins immédiats. Ce stockage est un point de faiblesse dans l'architecture globale du réseau @qkd


#figure(image("Images/QKD/reseauQKD.png"), caption: "Schéma du réseau QKD avec les points de présence Orange") <mapQKD>

Pour établir une clé finale entre deux points éloignés, on utilise ensuite la technique du XOR (ou exclusif $xor$) sur ces clés intermédiaires. Par exemple, si $A$ veut communiquer avec $C$ via $B$, on aura :
1. Une clé $K_"AB"$ entre $A$ et $B$
2. Une clé $K_"BC"$ entre $B$ et $C$
3. La clé finale $ K_"AC" = K_"AB" xor K_"BC"$

#figure(image("Images/QKD/XORQKD.png"), caption: "Schéma illustrant un échange complet de clé entre Alice et Bob grâce au XOR")

Cette approche garantit la sécurité de bout en bout, mais nécessite une gestion complexe des clés d'autant plus que le réseau est grand et maillé.

Les échanges de plus de 100 km en @qkd sont très complexes en raison des limitations physiques et technologiques actuelles. La distance maximale pour un échange direct sans utiliser de @trusted-node est généralement d'environ 100 km.
#figure(image("Images/QKD/keyratevsdistance.png"), caption: "Graphique illustrant la limitation des échanges QKD de 0 à 100 km")


==== Conception du simulateur QKD

===== Spécifications techniques
Le simulateur d'échange QKD que j'ai développé repose principalement sur une librairie @python appelée #gls("netsquid"). Cette librairie est essentielle pour la création et la simulation de composants physiques tels que les #glspl("qubit"), les canaux quantiques et les nœuds de réseau. #gls("netsquid") permet de modéliser des systèmes quantiques complexes et de simuler leur comportement dans des conditions variées.

La gestion des graphes de réseau est assurée par la bibliothèque @python NetworkX. Cette bibliothèque permet de modéliser les réseaux sous forme de graphes, facilitant ainsi la représentation des nœuds et des liens entre eux. Elle permet entre autre d'appliquer des algorithmes de théorie des graphes comme dijkstra @frwiki:214883541.

La visualisation des résultats de simulation est réalisée par le @frontend développé sur mesure pour nos besoins. Ce dernier est fait en utilisant @react. Il permet un accès simple sur internet et une visualisation des données mais également d’interagir avec le réseau, voir les informations sur les liens, voir les buffers pour les nœuds. Pour le stylisme de l'interface, j'ai utilisé Tailwind CSS, un @framework CSS utilitaire qui permet de créer des designs réactifs et modernes. La visualisation interactive des données dans le @frontend est assurée par des bibliothèques comme Deck.gl ou Chart.js, qui permettent de créer des cartes et des graphiques dynamiques et interactifs.

L'architecture du simulateur est divisée en deux parties principales : le @backend et le @frontend. Le @backend est responsable de la simulation des composants quantiques, des calculs mathématiques, de la gestion des graphes de réseau et de la manipulation des données. Le @frontend, quant à lui, gère l'interface utilisateur, le stylisme et la visualisation des données.

Le flux de données dans le simulateur commence par l'entrée des paramètres de simulation, tels que la topologie du réseau, les conditions initiales ainsi que des paramètres physiques comme : Le taux de @dark-count, les pertes sur la fibre, les modèles d'erreur sur ces dernières, le taux de @dephasage ($"Hz"$) dans la fibre ou encore les probabilités de mesure de @bob. Je ne peux pas faire un liste exhaustive de tous ces paramètres tellement ils sont nombreux. Ces paramètres sont ensuite traités par le @backend, qui simule les échanges @qkd et traite les résultats. Les résultats de simulation, tels que le taux de clé, le @qber et l'efficacité, sont ensuite envoyé par socket puis visualisés dans le @frontend sous forme de graphiques avec visualisations interactives et stockés dans une base de donnée prévue à cet effet.
L'environnement de développement du simulateur comprend VSCode pour l'édition de code, Git pour la gestion de version et `pip` pour la gestion des dépendances.

Pour l'hébergement, le simulateur est sur une machine virtuelle sous Ubuntu, gracieusement prêtée par une équipe de l'entité @oinis. Elle permet un partage plus rapide de l'environnement de travail avec Patrice par exemple.

En résumé, le simulateur d'échange @qkd est un outil complexe et puissant, reposant sur une architecture bien définie et utilisant des technologies et des bibliothèques avancées pour simuler et analyser les échanges quantiques de clés.

===== Architecture logicielle <archiLogiciel>
Sachant que le simulateur se base sur la bibliothèque #gls("netsquid"), il est important de préciser que j'ai largement utilisé cette bibliothèque pour créer une couche d'abstraction répondant à nos besoins spécifiques. Cette couche permet d'interagir avec les éléments de #gls("netsquid") et de gérer toute la logique de la simulation, y compris la création des @kme et de leurs @qkd-module correspondants, adaptés à un réseau maillé. Nous avons pu nous appuyer sur le travail du LIP6 - Laboratoire d'Informatique - CNRS - Sorbonne Université, qui avait déjà développé une couche pour réaliser des échanges @qkd entre @alice et @bob en utilisant le protocole @bb84.

====== Description d'un QKD Module
Dans #gls("netsquid"), la couche physique est disponible mais elle n'est pas implémentée en l'état. Il est nécessaire de configurer les connexions, la mémoire quantique, les modèles d'erreur sur les fibres, les délais etc. Cette configuration est cruciale pour permettre la simulation des échanges quantiques entre @alice et @bob. Voici un schéma représentant cette architecture :

#figure(image("Images/QKD/qkdmodule.png"), caption: "Schéma de l'architecture logicielle pour un échange QKD dans Netsquid") <qkdModule>

La @qkdModule illustre les interactions entre @alice et @bob, les deux participants du protocole. @alice utilise une source de @qubit et une mémoire quantique pour envoyer des #glspl("qubit") via un canal quantique. @bob reçoit et stocke ces #glspl("qubit") dans sa propre mémoire quantique. Les communications classiques nécessaires à l'échange d'informations, comme le partage des bases de mesure pour les protocoles @qkd tels que @bb84 ou @e91, sont effectuées via un canal classique.

====== Description d'un KME
Maintenant que nous avons vu comment les @qkd-module sont physiquement connectés entre eux, je vais introduire la partie qui va superviser et gérer cette interconnexion : le #gls("kme", long: true).

#figure(image("Images/QKD/alicebobbb84withKME.drawio.png"), caption: "Schéma présentant un KME Alice qui communique avec un KME Bob par le biais de leurs QKD Modules respectifs")

Le @kme est le centre névralgique du simulateur. La couche d'abstraction que j'ai réalisée permet de ne pas se soucier de toute la logique d’interconnexion qui se situe sur le @qkd-module. Il est important de comprendre que pour un @kme, il peut y avoir plusieurs @qkd-module. Il y en a exactement deux par direction : un pour l'aller (par exemple, de @alice vers @bob) et un pour le retour (de @bob vers @alice). Le buffer de clé, quant à lui, est unique pour chaque direction. Cela signifie que, peu importe qui initie la simulation (l'échange avec le protocole @qkd), la clé partagée sera identique entre le buffer de @alice et celui de @bob.

Voici à quoi ressemble un nœud Alice avec plusieurs directions :

#figure(image("Images/QKD/alicebobbb84withmultipleQKDModules.drawio.png"), caption: "Schéma présentant une KME Alice qui communique avec un KME Bob et d'autres KMEs.")

====== Description générale du simulateur
Maintenant que l'on a bien compris les différentes parties qui vont permettre de simuler les échanges @qkd, voici un petit schéma qui résume les différentes interactions

#figure(image("Images/QKD/overallQKDSImulationArchi.png", height: 40%), caption: "Schéma récapitulatif montrant les intéractions des composants sur le simulateur d'échange QKD")

Un réseau quelconque en entrée va être traduit automatiquement par des liens et des nœuds qui vont s’interconnecter tout seul. Il sera ensuite possible de lancer des simulations sur ce réseau afin de définir le @keyrate d'un lien du réseau ou encore, une fois que l'on possède les informations d'un lien, simuler l'utilisation de clé via une matrice de trafic.

====== Diagrammes
======= Diagramme de séquence
#figure(image("Images/QKD/sequenceDiagrammeQKD.png"), caption:"Diagramme de séquences illustrant le processus de simulation de distribution de clés quantiques (QKD)")
La logique pour lancer une simulation est simple, bien que l'architecture soit complexe. Le simulateur fonctionne avec plusieurs boucles indépendantes, chacune ayant un rôle spécifique :

1. *Initialisation du réseau* : Cette boucle crée les @kme avec leurs @qkd-module pour chaque lien. Elle est indispensable car elle établit la base du réseau. C'est à partir de cette étape que le @frontend reçoit les différents nœuds et liens pour les afficher.

2. *Simulation des échanges* : Cette boucle peut être activée ou désactivée selon les besoins. Elle réalise les simulations sur les éléments du réseau. Une simulation est lancée si la condition entre deux @kme n'est pas respectée. Une fois la simulation réalisée, il est crucial de répliquer les informations sur le réseau réel et d'envoyer les mises à jour au @frontend.


Voici plus précisément comment les simulations sont réalisées : 
#figure(image("SimulationRealisation.png", height: 21%), caption : "Diagramme de séquences pour l'initialisation d'une demande d'échange de clé et donc de simulation")

Cette initialisation de demande de clé engendre alors une longue phase de simulation qui se compose de la préparation des qubits, incluant des opérations telles que le flip, l'application de la base (H ou I) et l'envoi des @qubit, suivie par la réception, la mesure et l'enregistrement des clés générées
#figure(image("Diagrammesequencesimulation.png", height: 60%), caption:"Diagramme de sequences pour l'échange de Qbits pour le protocol BB84")


Bien que les simulations soient parallélisées, elles restent très longues, prenant environ 3 heures pour un lien de 40 km. De plus, la machine virtuelle hébergeant le code est limitée à 10 simulations simultanées en raison du nombre de cœurs du processeur disponible.

======= Diagramme d'activité
#figure(image("Images/QKD/activitydiagramm.png"), caption:"Diagramme d'activités illustrant le processus de simulation de distribution de clés quantiques (QKD)" ) <diagactivite>

Le diagramme d'activité @diagactivite illustre le fonctionnement d'une simulation @qkd. Il est structuré en trois parties principales : l'interface utilisateur (@frontend), la gestion de la simulation (@qkd Simulation) et la gestion du réseau quantique (QNetwork).

1. *Initialisation du Réseau Quantique :*
  - Le processus commence par l'initialisation du réseau quantique. Cette étape prépare les fondations pour la simulation en créant les nœuds et les connexions nécessaires et en initialisant les entités clés comme les @kme et les QNodes (nœuds quantiques).
2. *Gestion de la Simulation (QKD Simulation) :*
  - La simulation @qkd démarre avec l'analyse d'une variable critique, length_direction_buffer. Si cette variable est inférieure à un certain seuil (50 dans ce cas), le système procède à l'exécution du protocole @qkd entre les nœuds du réseau. Les résultats de cette simulation sont ensuite envoyés au gestionnaire de réseau quantique (QNetwork) et stocké en base de données.
3. *Gestion du Réseau Quantique (QNetwork) :*
  - Du côté de la gestion du réseau, le système vérifie si les résultats de la simulation @qkd sont disponibles. Si c'est le cas, la simulation est répliquée sur le réseau quantique et les résultats sont envoyés à l'interface utilisateur. Si les résultats ne sont pas disponibles, le système continue sans intervention spécifique.
4. *Affichage des Résultats :*
  - L'interface utilisateur est responsable de l'affichage du réseau quantique et des résultats de la simulation, permettant ainsi à l'utilisateur final de visualiser et d'interagir avec les données générées par la simulation.

====== Résumé de l'architecture
#figure(image("Images/QKD/resumeArchiQKD.png", height:35%), caption: "Schéma résumant l'architecture avec les choses développés comme surcouche pour Netsquid") 

L'@api Etsi014 @etsi_014_qkd est une norme d'interface développé pour répondre aux besoins de demande de clé entre @kme. La communication se fait par API REST.

==== Présentation du simulateur
Je vais principalement me concentrer sur le @frontend.
Bien que le @frontend n'ait pas été initialement prévu dans les besoins, il s'est révélé très utile pour visualiser les processus en arrière-plan lors de mes échanges avec les collaborateurs.

Ce @frontend offre de nombreuses fonctionnalités. Je vais les détailler une par une, en les illustrant avec des images pour une meilleure compréhension.

===== La carte
La carte est un élément important car elle permet de se rendre compte du réseau qui a été détaillé. Cette carte est mise à jour dès lors que le réseau change dans le @backend et est mise à jour toutes les 30 secondes en cas de modifications. Elle possède également des informations sur les liens mais aussi sur les @kme. 
#figure(image("map.png"), caption: "Capture d'écran de la page d'accueil de l'application") <ScreenmapQKD>

Cette carte est interactive et en 3D. Contrairement à la @mapQKD, La @ScreenmapQKD comprend les liens avec la description des @trusted-node. C'est à dire que les liens entre les grosses villes de France sont découpés pour passer par des points de présence @oinis afin de résoudre le problème d'une distance trop longue qui pourrait poser des problèmes physiques. 
Il est possible d'afficher ces liens en cochant `Show Summary Connections` en haut à droite de la carte
#figure(image("summarymap.png"), caption:"Capture d'écran de la carte avec l'option 'Show Summary Connections'")

Il est également possible de récupérer les informations des @kme ou des liens simplement en cliquant sur ces derniers. 

Pour les @kme, les informations données sont : 
  - Son ID : il permet d'identifier le lien sur lequel on a cliqué de façon unique.
  - Son nom
  - Ses @kme voisins : Ses @kme voisins sont en fait les @qkd-module adjacent qui permettent les échanges de clé.
  - Pour chaque voisin, les clés qui ont été partagées lors des simulations
#figure(image("KMEselected.png", height: 50%), caption: "Capture d'écran lors de la sélection d'un KME sur la carte")

Pour les liens, les informations données sont : 
  - L’efficacité : L'efficacité d'un lien dans le contexte de la distribution quantique de clés (@qkd) fait référence à la proportion de bits générés qui sont utilisables comme clé secrète après avoir pris en compte les erreurs et les pertes. Elle est exprimée en pourcentage et indique la performance globale du protocole @qkd sur ce lien.
  - Le #gls("qber", long:true) : Le taux d'erreur par bit quantique est un indicateur de la qualité d'une transmission dans un protocole de distribution quantique de clés (QKD). Le @qber mesure le pourcentage de bits qui sont incorrectement reçus par rapport au total des bits transmis. Un QBER élevé peut indiquer des problèmes de transmission ou des interférences et il est crucial pour évaluer la sécurité et l'efficacité du processus de @qkd.
  - Le @keyrate : Le débit de clé, exprimé en bits par seconde (bps), mesure la vitesse à laquelle des bits de clé sécurisée sont générés dans un protocole de distribution quantique de clés (@qkd). Un @keyrate de clé élevé signifie que le lien est capable de générer des clés cryptographiques rapidement, ce qui est essentiel pour des communications sécurisées en temps réel.
  - Le taux de détection : Le taux de détection fait référence à la proportion de photons envoyés par l'émetteur (@alice) qui sont effectivement détectés par le récepteur (@bob). Ce taux est influencé par des facteurs tels que les pertes dans la fibre optique, l'efficacité des détecteurs de photons et les conditions environnementales. Un taux de détection élevé est souhaitable car il indique que la majorité des photons transmis sont correctement reçus, ce qui améliore la fiabilité de la transmission quantique.

#figure(image("Link.png", height: 70%), caption: "Capture d'écran lors de la sélection d'un lien sur la carte" )

===== Les graphiques
Sous la carte se trouve des informations complémentaires sur les liens. Ces informations mettent en lumière le lien le moins performant (efficacité, QBER, débit, taux de détection) pour une liaison entre les villes de France. Par exemple, le lien le moins performant entre Toulouse et Bordeaux sera le lien le plus long, c'est ce lien qui aura le moins bon @keyrate.
#figure(image("summaryGraph.png"), caption: "Capture d'écran des graphiques présentant les statistiques des pires liens entre les villes")

==== Conclusion sur le simulateur QKD
Ce simulateur est complet et répond pleinement aux besoins spécifiés. Il permet de récupérer les informations des liens simulés et sa gestion simplifiée par la couche d'abstraction le rend modulaire, tout en permettant l'intégration des liens satellites. Grâce à cet outil, nous avons pu identifier des zones nécessitant des optimisations, notamment des points de présence contraignants pour le réseau où l'installation d'équipements @qkd sur une distance de 1 km serait indispensable. Cependant, ces points de présence affichent des débits trop élevés et, s'ils étaient déployés en conditions réelles, entraîneraient des sur coûts. Cette identification permet d'optimiser le réseau en cherchant à homogénéiser les liens pour atteindre un débit aussi constant que possible.

==== Simulateur de buffers
===== Introduction
Le principe consiste ici à exploiter les données issues des simulations précédentes afin de modéliser le remplissage des liens en utilisant le @keyrate et leur vidage à l'aide d'une matrice de trafic. Ce simulateur est donc directement lié aux résultats obtenus avec le simulateur précédent. Cependant, cette partie ne se concentre que sur l'utilisation des données générées par le simulateur initial pour mener des études basées sur des matrices de trafic. L'objectif est de déterminer les points potentiellement bloquants des liens en fonction des futures demandes pour la @qkd. Dans le cadre du @wp 5 il était prévu, au delà des simulations terrestre réalisées, d'intégrer dans le simulateur les clés issues du domaine satellite traité par Thalès et Airbus. La version du simulateur précédent a été modifiée afin de prendre en compte ces nouveaux liens satellites.

D'un point de vue technique, le fonctionnement de ce simulateur est très similaire à celui du simulateur d'échange @qkd précédemment utilisé, car tous deux reposent sur la @simulation-discrete (avec #gls("netsquid") pour l'échange @qkd et SymPy @simpy pour les buffers). Le @frontend utilisé est également intégré à la page `/buffers` de l'interface existante. Pour cette raison, je ne m'attarderai pas sur les aspects techniques, mais me concentrerai plutôt sur le fonctionnement et les résultats obtenus.

====== Fonctionnement 
Le fonctionnement général de ce simulateur de buffers est relativement simple. Comme mentionné précédemment, grâce aux @simulation-discrete, nous effectuons la simulation des buffers minute par minute sur une année, sur le réseau fourni par le @backend ou exporté depuis celui-ci. Cette approche permet de modifier le réseau en fonction des besoins, comme par exemple en y ajoutant des satellites. Cependant, un aspect essentiel à considérer lors de la conception de cette simulation est l'échantillonnage temporel. J'ai longuement réfléchi aux problématiques que pourraient poser différentes granularités temporelles. Par exemple, un échantillonnage trop large pourrait manquer des fluctuations importantes, tandis qu'un échantillonnage trop fin pourrait alourdir inutilement le processus de simulation sans apporter de bénéfices supplémentaires. Ces réflexions m'ont conduit à prendre des décisions cruciales quant aux développements à réaliser, en choisissant un compromis entre précision et efficacité qui permette de répondre aux besoins spécifiques de la simulation tout en maintenant une performance optimale.

Lors de la simulation, nous utilisons deux modèles distincts : l'un pour les buffers terrestres, où la moyenne des résultats des simulations est calculée pour obtenir un @keyrate moyen et un autre pour les satellites, qui présentent des contraintes différentes, avec des @keyrate plus faibles et surtout instables en fonction du passage du satellite, de la météo, des saisons etc.

Les demandes sont formulées entre deux grandes villes. Pour les router sur les liens, nous utilisons la théorie des graphes @frwiki:214883541, en priorisant l'utilisation des satellites jusqu'à épuisement de leur capacité.

Pour mieux comprendre le déroulement de la simulation, voici un diagramme de séquence illustrant les interactions principales :
#figure(image("sequenceBuffer.png", height: 28%), caption:"Diagramme de séquence représentant le déroulement de la simulation des buffers")

===== Présentation du simulateur des buffers
====== Plotly
Lors des simulations, nous avons utilisé Plotly @plotly pour visualiser l'évolution des buffers au fil du temps.

#figure(image("buffersovertime.png"), caption: "Capture d'écran d'un graphique Plotly de simulation de buffer.") <bufferovertime>

Sur ce graphique, deux courbes distinctes apparaissent clairement. La première, qui montre une progression ascendante, représente les buffers terrestres. Pour mieux comprendre cette tendance, voici un zoom sur cette section :

#figure(image("ZoomBufferTerrestre.png"), caption: "Zoom sur les buffers terrestres d'une simulation de buffer.")

Cette capture d'écran met en évidence le remplissage progressif des buffers, suivi de l'impact de la matrice de trafic sur ceux-ci. Il est important de noter que la matrice de trafic utilisée est, pour l'instant, définie de manière journalière, c'est-à-dire qu'elle couvre la période de minuit à 23h59. C'est la raison pour laquelle l'utilisation des buffers présente un aspect cyclique, reflétant les variations du trafic au cours de la journée.

La seconde courbe (jaune), qui semble plate sur le graphique @bufferovertime, représente les buffers satellites.

#figure(image("zoomsatellites.png"), caption: "Zoom sur les buffers satellites d'une simulation de buffer.")

Bien que les débits ne soient pas complètement plats lorsqu'on effectue un zoom, ils restent cependant nettement inférieurs à ceux obtenus pour les buffers terrestres. Cette différence notable dans les performances s'explique par les caractéristiques inhérentes des liaisons satellites, qui offrent généralement une disponibilité et des débits plus faibles. Contrairement aux simulations terrestres, ces données sont directement importées à partir des résultats des simulateurs développés par Airbus et Thalès.

====== Frontend
Cette vue Plotly n'étant pas claire, nous avons également développé un @frontend pour visualiser l'évolution de la matrice de trafic sur le réseau au fil du temps, en fonction des données envoyées par le @backend. Ce @frontend se compose de deux sections : la première permet l'importation d'un fichier CSV qui détaille pour chaque lien son niveau calculé lors de la simulation et la seconde affiche ces résultats sur une carte avec un slider pour sélectionner le moment.

#figure(image("bufferx40.png"), caption: "Capture d'écran de l'interface utilisateur avec la carte et l'import d'une matrice de trafic multiplé par 40.") <buffer40>
_Pour des raisons de démonstration, la matrice de trafic utilisée sur la @buffer40 est multipliée par 40 afin de voir des liens rouge sur la carte, dans le cadre normal avec une matrice x1, seul les liens satellites sont saturés_

===== Conclusion 

Le développement du simulateur de buffers a permis de modéliser et d'analyser l'utilisation des clés quantiques sur un réseau maillé en intégrant les résultats des simulations QKD. Grâce à ce simulateur, nous avons pu identifier les points de congestion potentiels et optimiser la gestion des ressources en fonction des demandes de trafic. L'utilisation de la simulation discrète avec SymPy a permis de visualiser l'évolution des buffers minute par minute sur une année, offrant une vue détaillée des performances du réseau.

Le frontend développé a été particulièrement utile pour visualiser les résultats de manière interactive, facilitant la compréhension des dynamiques du réseau et des impacts des matrices de trafic. Les retours des utilisateurs ont été très positifs, soulignant l'utilité de l'outil pour anticiper les besoins futurs et améliorer l'efficacité de la gestion des clés quantiques.

En conclusion, le simulateur de buffers a démontré son efficacité en tant qu'outil d'analyse et d'optimisation, contribuant de manière significative à la compréhension et à la gestion des réseaux quantiques. Cette expérience a également renforcé mes compétences en simulation discrète et en développement d'interfaces utilisateur.

==== Problèmes rencontrés
Lors des développements sur ces deux simulateurs, l'un des principaux problèmes rencontrés a été la parallélisation des simulations. Les simulations avec #gls("netsquid") prennent beaucoup de temps, il était donc crucial de les paralléliser pour gagner du temps, malgré la limitation du nombre de processeurs dédiés à la machine virtuelle mise à disposition.

De plus, l'architecture globale de tout le programme est très complexe. La simplifier au maximum pour la rendre compréhensible a été un véritable défi. Cela a impliqué de nombreuses itérations et ajustements pour s'assurer que chaque composant du système était bien intégré et fonctionnait de manière cohérente. J'ai dû documenter soigneusement chaque partie du code et créer des diagrammes explicatifs pour faciliter la compréhension et la maintenance future par d'autres développeurs. Cette approche a permis de rendre le programme plus accessible et de garantir que les utilisateurs puissent naviguer et utiliser les simulateurs sans rencontrer de difficultés majeures.


==== Évaluation et Comparaison
===== Retour des utilisateurs
Les retours sur les simulateurs ont été recueillis progressivement, d'abord auprès de mon équipe, puis des membres du @wp 5 : Airbus et Thales. Les avis ont été très positifs, soulignant la fonctionnalité et la clarté visuelle de l'outil, facilitant ainsi la compréhension du réseau.

L'architecture logicielle modulaire a été particulièrement appréciée, car elle permet d'intégrer facilement les segments satellites d'Airbus et de Thales et d'adapter le simulateur à divers scénarios et besoins spécifiques.

Le @frontend développé a également été salué pour sa capacité à visualiser les actions sur le réseau, qu'il s'agisse des simulations d'échanges @qkd ou de l'évolution des buffers. Cette interface permet de comprendre les concepts de manière intuitive, en complément des graphiques scientifiques.

Les graphiques sous la carte, mettant en lumière les liens les moins performant entre les villes de France, ont aidé à identifier les goulots d'étranglement et à proposer des optimisations pour améliorer la sécurité et l'efficacité des communications.

En résumé, les utilisateurs ont trouvé le simulateur fonctionnel, modulaire et visuellement intuitif, répondant efficacement aux besoins des projets EuroQCI et FranceQCI, tout en facilitant la collaboration et l'intégration des segments satellites.

==== Conclusion sur le simulateur QKD
===== Résumé des contributions
Le développement du simulateur @qkd a été une contribution majeure à l'entreprise et aux projets EuroQCI et FranceQCI. Ce simulateur permet de modéliser les débits des liens pour des protocoles comme BB84 dans un réseau maillé, offrant une visualisation et une évaluation des performances des réseaux quantiques. Grâce à cet outil, nous avons pu identifier des zones nécessitant des optimisations, notamment des points de présence contraints par le réseau où l'installation d'équipements @qkd sur une distance de 1 km serait indispensable. La modularité de l'architecture logicielle, basée sur la librairie #gls("netsquid"), a facilité l'intégration des segments satellites d'Airbus et de Thales, permettant une adaptation facile à différents scénarios et besoins spécifiques. Le @frontend développé a également été très apprécié pour sa capacité à visualiser les actions sur le réseau et à comprendre facilement les concepts complexes de la @qkd.

===== Perspectives d'amélioration
Pour améliorer encore le simulateur, il serait bénéfique d'adopter la norme ETSI 014 @etsi014 pour les interfaces. Cela permettrait de standardiser les interactions pour l'émulation et de faciliter l'intégration avec d'autres systèmes et outils utilisés dans l'industrie ou avec nos pairs.

===== Apport personnel
Cette expérience a été extrêmement enrichissante pour mon développement professionnel. J'ai acquis une compréhension approfondie des concepts clés de la physique quantique et de la distribution quantique de clés (@qkd). En plus de ces compétences techniques, j'ai également renforcé mes capacités en programmation, en gestion de projet, en anglais, en communication et en collaboration avec des équipes multidisciplinaires. 

Durant le développement du simulateur @qkd, j'ai dû expliquer ces concepts complexes de manière claire et synthétique, non seulement aux membres de mon équipe mais aussi aux partenaires externes, ce qui m'a permis de consolider ma capacité à vulgariser des sujets techniques. Cette étape a été cruciale, car elle a souvent suscité des questionnements et des défis de la part de mes interlocuteurs, me poussant à approfondir mes connaissances et à affiner mes argumentations.

De plus, j'ai contribué à renforcer l'image d'Orange en tant qu'acteur de confiance dans l'écosystème des nouvelles technologies, notamment dans des domaines aussi innovants que la cryptographie quantique. 

===== Et après ?
L'étape suivante pour ce projet est de développer une émulation @qkd. Cela permettrait de tester et de valider les performances du simulateur dans des conditions proches de la réalité, en intégrant des scénarios d'utilisation réels et en évaluant l'impact des différentes variables environnementales et techniques sur les performances des réseaux quantiques. Cette tâche sera réalisée dans un futur proche et permettra de renforcer la collaboration avec Thalès, Airbus et les différents organismes afin d'interconnecter toutes les @api. De plus, ce simulateur sera mis à disposition pour tester les développements du gestionnaire de réseau et de clé réalisés dans le cadre de FranceQCI @wp 4, offrant ainsi un outil précieux pour valider les avancées technologiques dans le domaine des communications quantiques.

= Conclusion
Grâce à la confiance de ma tutrice Mathilde CAYLA et au soutien inestimable de mes collègues, mes 3 ans d'alternance chez Orange International ont été une expérience extrêmement enrichissante, tant sur le plan professionnel que personnel. Mathilde m'a fait confiance dès le début, et mes collègues ont été d'un soutien crucial, me boostant et m'encourageant à chaque étape.

J'ai eu l'opportunité de travailler sur des projets très challengeants, notamment le projet de distribution quantique de clés (QKD) et l'outil de gestion des fréquences pour les réseaux @wdm. Ce dernier a considérablement amélioré les processus internes de l'équipe. Ces projets ont non seulement renforcé mes compétences techniques et de gestion de projet, mais m'ont également permis de grandir en tant que professionnel et de me préparer à relever de nouveaux défis avec confiance et détermination.

=== Projets Réalisés

==== Outil de Gestion des Fréquences

Le développement de l'outil de gestion des fréquences pour les réseaux @wdm a été l'un des projets les plus marquants de mon alternance. En automatisant la lecture et l'analyse des données de spectre, j'ai pu remplacer un processus manuel inefficace par une solution plus fiable et rapide. L'utilisation de technologies comme @python et @react a permis de créer une interface utilisateur intuitive, accessible via une page statique sur GitLab. Ce projet a démontré ma capacité à identifier des besoins opérationnels critiques et à développer des solutions efficaces rapidement.

==== Outil Spectre sur Mesure

En réponse à un besoin urgent de gestion du spectre, j'ai développé un @poc en seulement deux semaines. Cet outil, bien que simple, a démontré la faisabilité d'une solution interne pour la gestion des fréquences, réduisant ainsi la dépendance vis-à-vis des fournisseurs externes. Les retours positifs ont montré l'importance de cette initiative et ont ouvert la voie à des développements futurs plus avancés.

===== Simulateur de Distribution Quantique de Clés (QKD)

Le second projet majeur a été la création d'un simulateur pour la distribution quantique de clés, en collaboration avec Airbus, Thales et Orange Innovation. Ce simulateur, développé principalement avec la librairie #gls("netsquid"), permet de modéliser les débits des liens pour des protocoles comme BB84 dans un réseau maillé. Ce projet m'a permis de plonger dans le domaine de la physique quantique et de la cryptographie, tout en renforçant mes compétences en programmation et en gestion de projet. Le simulateur a été bien accueilli par les utilisateurs pour sa modularité et son interface visuelle, facilitant ainsi la compréhension et l'optimisation des réseaux quantiques.


=== Apports Professionnels

 Ces projets ont été l'occasion de démontrer ma capacité à travailler de manière autonome sur des développements complexes. La confiance que l'on m'a accordée pour mener à bien ces projets a été un moteur de motivation et a renforcé ma confiance en mes compétences professionnelles. J'ai appris à gérer des projets de bout en bout, de l'identification des besoins à la livraison de solutions fonctionnelles, tout en respectant des délais serrés.
 
 1. *Consolidation des compétences techniques* :
    Ce projet m'a permis de consolider mes compétences en @nextjs, un @framework que je n'avais jamais utilisé pour une application métier. J'ai également approfondi mes connaissances en #gls("laravel") lors du développement de la seconde version. Cette expérience a renforcé ma polyvalence technique et ma capacité à apprendre rapidement de nouvelles technologies.
 
 2. *Développement de compétences en gestion de projet* :
    Le délai serré de deux semaines pour développer la première version de l'outil m'a poussé à améliorer mes compétences en gestion du temps et en priorisation des tâches. J'ai appris à travailler efficacement sous pression tout en maintenant la qualité du code. De plus, pour le projet du simulateur @qkd, j'ai mis en place et suivi une roadmap, ce qui m'a permis de structurer le projet et de suivre son avancement de manière rigoureuse.
 
 3. *Amélioration de la communication technique* :
    La présentation de l'outil à différentes parties prenantes, y compris des collègues non techniques, m'a permis d'affiner mes compétences en communication technique. J'ai appris à expliquer des concepts complexes de manière claire et accessible.
 
 4. *Renforcement de la confiance professionnelle* :
    Le succès de ce projet et les retours positifs reçus ont considérablement renforcé ma confiance en mes capacités professionnelles. Cela m'a montré que je suis capable de relever des défis complexes et de livrer des solutions de qualité dans des délais serrés.
 
 5. *Compréhension approfondie du domaine métier* :
    L'outil de gestion des fréquences m'a permis d'approfondir ma compréhension des réseaux @wdm et de la gestion du spectre des fréquences. Cette connaissance métier sera précieuse pour mes futurs projets dans le domaine des télécommunications. Le développement du simulateur @qkd m'a également permis d'acquérir une compréhension approfondie des concepts clés de la physique quantique et de la distribution quantique de clés.
 
 6. *Développement de l'esprit d'initiative* :
    En proposant et en développant ce @poc de ma propre initiative, j'ai renforcé ma capacité à identifier les besoins de l'entreprise et à prendre des initiatives pour y répondre. Cette compétence sera cruciale pour ma future carrière en tant que freelance.
 
 7. *Amélioration des compétences en conception d'interface utilisateur* :
    La création d'une interface utilisateur intuitive pour cet outil m'a permis d'améliorer mes compétences en conception UX/UI, un aspect important du développement @frontend.
 
 8. *Expérience en développement agile* :
    Le processus de développement rapide et itératif m'a donné une expérience pratique des méthodes de développement agile, une compétence très recherchée dans l'industrie du développement logiciel.
 

=== Apports Personnels

Sur le plan personnel, cette alternance m'a permis de développer des compétences en communication technique, en gestion du temps et en travail sous pression. J'ai également acquis une compréhension approfondie des réseaux @wdm et des technologies quantiques (@qkd, @qubit), des connaissances précieuses pour mes futurs projets dans le domaine des télécommunications. Cette expérience a été un tremplin important pour ma carrière, me préparant à relever de nouveaux défis en tant que freelance.

=== Perspectives d'avenir

Les outils développés durant cette alternance, ainsi que leurs documentations techniques, posent les bases d'améliorations futures et d'innovations dans la gestion des réseaux et des fréquences. La modularité et l'efficacité de ces solutions ouvrent la voie à une adoption plus large et à des intégrations plus poussées. Bien que je quitte Orange, ces outils, ainsi que le paradigme qu'ils instaurent, apportent une nouvelle perspective pour l'avenir de l'entreprise.

Cette expérience m'a permis d'acquérir de la rigueur et une organisation structurée, tant au niveau personnel que dans la gestion de projets. L'utilisation d'outils tels que les diagrammes de Gantt, les roadmaps, et la définition de livrables m'a appris à planifier et à suivre les avancées des projets avec précision. Ces compétences, essentielles dans tous les métiers, seront particulièrement utiles dans ma prochaine étape professionnelle, celle de devenir freelance.

En tant que freelance, la capacité à gérer plusieurs projets simultanément, à respecter des délais serrés et à produire des livrables de qualité sera cruciale. Grâce à cette expérience chez Orange, j'ai pu développer les bases solides de cette organisation, ainsi que la confiance nécessaire pour affronter les défis d'un travail en autonomie.

En conclusion, cette alternance chez #gls("oinis", long:true) a été une expérience à la fois formatrice et gratifiante. Elle m'a permis de contribuer de manière significative à des projets innovants tout en développant des compétences essentielles pour ma carrière future. Je suis profondément reconnaissant pour cette opportunité et pour le soutien de mes collègues et mentors, qui ont rendu cette aventure inoubliable. Fort de tout ce que j'ai appris et accompli durant cette période, je suis désormais prêt à affronter de nouveaux défis avec confiance et détermination.

#pagebreak()

#heading("Annexe", numbering: none)

#figure(image("workpackagestructure.png"), caption:"Organisation des différents work package pour le projet FranceQCI")
#figure(image("DiagrammeclassQNetwork.png"), caption : "Diagramme de classes complet de l'architecture du QNetwork avec ses composants QKD")
#figure(image("diagrammesequenceInitNetwork.png"), caption: "Diagramme de séquence de l'initialisation du réseau à partir d'un JSON")
#figure(image("Images/QKD/diagramclass.png"), caption:"Diagramme de classes simplifié de l'architecture du simulateur QKD")
#figure(image("Images/QKD/diagramFlowChart.png"), caption:"Représentation simplifiée des différents composants du simulateur QKD")
#figure(image("ThalesXor2.png"), caption:"Schéma représentant les XOR succésifs qui permettent la reconstitution de clé.")
