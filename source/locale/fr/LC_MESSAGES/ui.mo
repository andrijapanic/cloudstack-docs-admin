��    #      4              L  �  M    �  �     �   �     r     �     �  7   �     �       f     9   �	  �  �	     �  �   �  u   �  c   2  E   �     �  ]   �  $   K  �   p  k   +  h   �         w  !  C  �  �   �  )   �  $   �     �  G   �  �  /  �   �  �  �  D  P  �  �  �   >  �        �     
   "      D   B   ,   �   '   �   �  �   D   �"  G  �"  3   %    Q%  �   l&  |   �&  T   z'  '   �'  z   �'  &   r(  �   �(  t   �)  �   �)  6   |*    �*  �  �-  �   a/  1   *0  1   \0     �0  ^   �0  �  1    �2   **Continue with basic setup.** Choose this if you're just trying CloudStack, and you want a guided walkthrough of the simplest possible configuration so that you can get started right away. We'll help you set up a cloud with the following features: a single machine that runs CloudStack software and uses NFS to provide storage; a single machine running VMs under the XenServer or KVM hypervisor; and a shared public network. **I have used CloudStack before.** Choose this if you have already gone through a design phase and planned a more sophisticated deployment, or you are ready to start scaling up a trial cloud that you set up earlier with the basic setup screens. In the Administrator UI, you can start using the more powerful features of CloudStack, such as advanced VLAN networking, high availability, additional network elements such as load balancers and firewalls, and support for multiple hypervisors including Citrix XenServer, KVM, and VMware vSphere. After logging into a fresh Management Server installation, a guided tour splash screen appears. On later visits, you’ll be taken directly into the Dashboard. After the Management Server software is installed and running, you can run the CloudStack user interface. This UI is there to help you provision, view, and manage your cloud infrastructure. Changing the Root Password Click Accounts. Click View Users. Click the Change Password button. |change-password.png| Click the admin account name. Click the admin user name. CloudStack provides a web-based UI that can be used by both administrators and end users. The appropriate version of the UI is displayed depending on the credentials used to log in. The UI is available in popular browsers including IE7, IE8, IE9, Firefox 3.5+, Firefox 4, Safari 4, and Safari 5. The URL is: (substitute your own management server IP address) Domain -> If you are a root user, leave this field blank. During installation and ongoing cloud administration, you will need to log in to the UI as the root administrator. The root administrator account manages the CloudStack deployment, including physical infrastructure. The root administrator can modify configuration settings to change basic functionality, create or delete user accounts, and take many actions that should be performed only by an authorized person. When first installing CloudStack, be sure to change the default password to a new, unique value. End User's UI Overview For example, suppose multiple levels are created under the root domain, such as Comp1/hr. The users in the Comp1 domain should enter Comp1 in the Domain field, whereas the users in the Comp1/sales domain should enter Comp1/sales. For more guidance about the choices that appear when you log in to this UI, see Logging In as the Root Administrator. If you are a user in the sub-domains, enter the full path to the domain, excluding the root domain. If you see the first-time splash screen, choose one of the following. Log In to the UI Log in to the UI using the current root user ID and password. The default is admin, password. Logging In as the Root Administrator On a fresh Management Server installation, a guided tour splash screen appears. On later visits, you’ll see a login screen where you specify the following to proceed to your Dashboard: Open your favorite Web browser and go to this URL. Substitute the IP address of your own Management Server: Password -> The password associated with the user ID. The password for the default username is password. Root Administrator's UI Overview The CloudStack UI helps the CloudStack administrator provision, view, and manage the cloud infrastructure, domains, user accounts, projects, and configuration settings. The first time you start the UI after a fresh Management Server installation, you can choose to follow a guided tour to provision your cloud infrastructure. On subsequent logins, the dashboard of the logged-in user appears. The various links in this screen and the navigation bar on the left provide access to a variety of administrative functions. The root administrator can also use the UI to perform all the same tasks that are present in the end-user’s UI. The CloudStack UI helps users of cloud infrastructure to view and use their cloud resources, including virtual machines, templates and ISOs, data volumes and snapshots, guest networks, and IP addresses. If the user is a member or administrator of one or more CloudStack projects, the UI can provide a project-oriented view. The prompts in this guided tour should give you all the information you need, but if you want just a bit more detail, you can follow along in the Trial Installation Guide. The root administrator Dashboard appears. Type the new password, and click OK. User Interface Username -> The user ID of your account. The default username is admin. You are logging in as the root administrator. This account manages the CloudStack deployment, including physical infrastructure. The root administrator can modify configuration settings to change basic functionality, create or delete user accounts, and take many actions that should be performed only by an authorized person. Please change the default password to a new, unique password. You should set a new root administrator password. If you chose basic setup, you’ll be prompted to create a new password right away. If you chose experienced user, use the steps in :ref:`changing-root-password`. Project-Id-Version: Apache CloudStack Administration RTD
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-06-30 12:52+0200
PO-Revision-Date: 2016-08-31 00:02+0200
Last-Translator: 
Language: fr
Language-Team: French (http://www.transifex.com/ke4qqq/apache-cloudstack-administration-rtd/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 **Continuer avec la configuration basique.** Choisissez cette option si vous êtes juste en train d'essayer CloudStack et si vous voulez un guide pour vous aider dans la configuration la plus simple possible afin de vous permettre de démarrer rapidement. Nous vous aiderons à configurer un cloud avec les fonctionnalités suivantes : une machine unique qui fait fonctionner le logiciel CloudStack et qui utilise le service NFS comme stockage ; une machine unique faisant fonctionner des machines virtuelles sous les hyperviseurs XenServer ou KVM ; et un réseau public partagé. **J'ai déjà utilisé CloudStack.** Choisissez cette option si vous avez déjà effectué une phase de design et planifié un déploiement plus sophistiqué ou si vous êtes prêts à démarrer la configuration d'un cloud d'essais que vous auriez configuré plus tôt avec les écrans de configuration basiques. Dans l'interface d'administration, vous pouvez commencer à utiliser les plus puissantes fonctionnalités de CloudStack, comme les réseaux avancés à base de VLAN, la haute disponibilité, les éléments réseaux additionnels comme les répartiteurs de charge et les pare-feu et le support de multiples hyperviseurs incluant Citrix XenServer, KVM et VMware vSphere. Après s'être connecté sur une nouvelle installation d’un serveur de gestion, un assistant de configuration apparaît. Lors des futures visites, vous serez directement redirigé vers le tableau de bord : Après l'installation et le démarrage du logiciel de gestion, vous pouvez utiliser l'interface utilisateur de CloudStack. Cette interface est là pour vous aider à provisionner, voir et gérer votre infrastructure cloud. Changer le mot de passe Root Cliquer sur Comptes. Cliquer sur Voir les utilisateurs. Cliquer sur le bouton Changer le mot de passe. |change-password.png| Cliquer sur le nom du compte administrateur. Cliquer sur le nom de l'administrateur. CloudStack fournit une console web destinée à la fois aux administrateurs et aux utilisateurs finaux. La version appropriée de cette interface est affichée en fonction des identifiants utilisés à la connexion. L'interface est disponible depuis les navigateurs internet les plus populaires, incluant IE7, IE8, IE9, Firefox 3.5+, Firefox 4, Safari 4 et Safari 5. L'URL est : (remplacer par l'adresse IP de votre serveur de gestion) Domaine -> Si vous êtes un utilisateur root, laissez ce champ vide. Durant l'installation et tout au long de l'administration du cloud, vous devrez vous connecter à l'interface en tant qu'administrateur. Le compte administrateur gère le déploiement de CloudStack, incluant l'infrastructure physique. L'administrateur peut modifier les paramètres par défaut pour changer les fonctionnalités de base, créer ou supprimer des comptes utilisateurs et effectuer des actions qui ne peuvent l'être que par une personne autorisée. Lorsque vous installez CloudStack pour la première fois, pensez à changer le mot de passe par défaut pour un nouveau. Vue d'ensemble de l'interface pour les utilisateurs Par exemple, en supposant que plusieurs niveaux aient été créés sous le domaine racine, comme par exemple Comp1/rh. Les utilisateurs du domaine Comp1 doivent renseigner Comp1 dans le champ Domaine, tandis que les utilisateurs du domaine Comp1/ventes doivent saisir Comp1/ventes. Pour plus de conseils à propos des choix qui apparaissent lors de la connexion à cette interface, voir Se connecter en tant qu'Administrateur. Si vous êtes un utilisateur d'un des sous-domaines, renseigner le chemin complet du domaine, en excluant le domaine racine. Si vous voyez l'écran de premier démarrage, choisissez une des options suivantes : Se connecter à l'interface utilisateur Se connecter à l'interface en utilisant le compte root et son mot de passe. Les valeurs par défaut sont admin, password. Se connecter en tant qu'Administrateur Sur une nouvelle installation d'un serveur de gestion, un assistant de configuration apparaît. Lors des futures visites, vous verrez un écran de connexion dans lequel vous spécifierez ce qui suit pour accéder au tableau de bord : Ouvrir votre navigateur web favori et aller à cette URL. Remplacer par l’adresse IP de votre serveur de gestion : Mot de passe -> Le mot de passe associé à l'identifiant utilisateur. Le mot de passe pour l'utilisateur par défaut est password. Vue d'ensemble de l'interface pour les administrateurs L'interface de CloudStack aide l'administrateur CloudStack à provisionner, voir et gérer l'infrastructure cloud, les domaines, les comptes utilisateurs, les projets et les paramètres de configuration. La première fois que vous démarrez l'interface utilisateur d'une nouvelle installation du serveur de gestion, vous pouvez choisir de suivre l'assistant de démarrage pour provisionner votre infrastructure cloud. Lors des connexions ultérieures, le tableau de bord de l'utilisateur connecté apparaît. Les différents liens de cet écran et de la barre de navigation sur la gauche fournissent un accès à une variété de fonctions administratives. L'administrateur peut également utiliser l'interface pour effectuer l'ensemble des tâches qui sont proposées à un utilisateur final. L'interface de CloudStack aide les utilisateurs de l'infrastructure cloud à visualiser et utiliser leurs ressources cloud, incluant les machines virtuelles, les modèles et les ISOs, les volumes de données et les instantanés, les réseaux invités et les adresses IP. Si l'utilisateur est un membre ou administrateur d'un ou plusieurs projets CloudStack, l'interface fournit une vue orientée projet. Les indications de cette visite guidée devraient vous fournir toutes les informations dont vous avez besoin, mais si vous désirez un peu plus de détails, vous pouvez suivre le Guide d'Installation. Le tableau de bord de l'administrateur apparaît. Saisir le nouveau mot de passe et cliquer sur OK. Interface utilisateur Utilisateur -> L'identifiant utilisateur de votre compte. L'utilisateur par défaut est admin. Vous êtes connectés en tant qu'administrateur. Ce compte gère le déploiement de CloudStack, incluant l'infrastructure physique. L'administrateur peut modifier les paramètres de configuration pour changer les fonctionnalités de base, créer ou supprimer des comptes utilisateurs et effectuer des actions qui ne peuvent l'être que par une personne autorisée. Pensez à changer le mot de passe par défaut pour un nouveau. Vous devriez fournir un nouveau mot de passe pour l'administrateur. Si vous choisissez la configuration basique, un nouveau mot de passe vous sera demandé juste après. Si vous choisissez Utilisateur expérimenté, suivre la procédure :ref:`changing-root-password`. 