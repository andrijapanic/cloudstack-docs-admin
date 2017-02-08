��    i      d              �    �     �  :  �  �   	  �   �	  �   �
  6   f  6  �  ,   �       �        �  3   �  �  	     �  �   �  �   W  �   J  �   �  �  �     a  -   �  E   �     �          �   &      	             +  +   8  _   d  �   �     Q  :   Z  �   �     1  g  D  "   �  �   �     �  #   �     �  �   �    s  6  �!  ?  �"  ]   
%  Q  h%  M   �&  %  '  U   .(  �   �(  8   d)  c   �)  (   *  �   **  �  �*  0   �,  �   �,  �   p-  $  8.  +  ]/  �  �3  :   5  H   H5    �5     �6  &  �6     �7  :   �7  ,   '8  �  T8    B;    T<  b   r=  P   �=  �   &>  p   �>  }   I?  �   �?  �   H@  t   �@  c   QA  2   �A  %   �A  }   B  �   �B  W   C  a   qC  �   �C  �   �D  �   E  H   �E  G   �E  9   -F  ?   gF  =   �F  J   �F  J   0G  o   {G  }   �G  �   iH  �  I  @  �J     
L  u  L     �M  3  �N  �   �O  9   �P  �  �P  5   kR     �R  �   �R     �S  A   �S  �  �S  	   �U  �   �U  B  �V  �   �W  �   sX    kY  *   w[  )   �[  V   �[  $   #\  %  H\  N  n]  �   �^  r  �_  
   ,a     7a     Fa  @   Ta  �   �a  �   $b  	   �b  [   �b  �   Hc     �c  7  d  0   Gg    xg     �h  )   �h     �h  �   �h  �  ~i  h  \l  �  �m  ]   �p  u  �p  [   `r  Q  �r  \   t    kt  9   ou  �   �u  2   0v  �   cv    #w  7   @y    xy  �   �z  p  �{  H  �|  �  <�  D   �  p   Z�  +  ˄     ��  v  �     {�  U   ��  A   ��  �  2�  .  ��  ^  �  v   G�  V   ��  �   �  �   ��  �   ��  �   �  �   ��  �   U�  w   �  ?   ]�  9   ��  �   ד  �   x�  �   %�  h   ��  �   #�  �   �  �   ��  T   `�  K   ��  I   �  I   K�  H   ��  I   ޙ  S   (�  �   |�  �   =�  �   қ   A role represents a set of allowed functions. All CloudStack accounts have a role attached to them that enforce access rules on them to be allowed or disallowed to make an API request. Typically there are four default roles: root admin, resource admin, domain admin and user. Accounts Accounts are grouped by domains. Domains usually contain multiple accounts that have some logical relationship to each other and a set of delegated administrators with some authority over the domain and its subdomains. For example, a service provider with several resellers could create a domain for each reseller. Administrators are accounts with special privileges in the system. There may be multiple administrators in the system. Administrators can create or delete other administrators, and change the password for any user in the system. After an upgrade, existing deployments can be migrated to use this feature by running a migration tool by the CloudStack admin. The migration tool is located at ``/usr/share/cloudstack-common/scripts/util/migrate-dynamicroles.py``. An account typically represents a customer of the service provider or a department in a large organization. Multiple users can exist in an account. Behavior of Dedicated Hosts, Clusters, Pods, and Zones Dedicated hosts can be used in conjunction with host tags. If both a host tag and dedication are requested, the VM will be placed only on a host that meets both requirements. If there is no dedicated resource available to that user that also has the host tag requested by the user, then the VM will not deploy. Dedicating Resources to Accounts and Domains Domain Administrators Domain administrators can perform administrative operations for users who belong to that domain. Domain administrators do not have visibility into physical servers or other domains. Domains Dry run and debug operations this tool will perform During migration, this tool enables an internal flag in the database, copies existing static role-based rules from provided commands.properties file (typically at ``/etc/cloudstack/management/commands.properties``) to the database and renames the commands.properties file (typically to /etc/cloudstack/management/commands.properties.deprecated). The migration process does not require restarting the management server(s). Example: Explicit dedication. A zone, pod, cluster, or host is dedicated to an account or domain by the root administrator during initial deployment and configuration. For backward compatiblity, all roles resolve to one of the four role types: admin, resource admin, domain admin and user. A new role can be created using the roles tab in the UI and specifying a name, a role type and optionally a description. For each account created, the Cloud installation creates three different types of user accounts: root administrator, domain administrator, and user. For explicit dedication: When deploying a new zone, pod, cluster, or host, the root administrator can click the Dedicated checkbox, then choose a domain or account to own the resource. For implicit dedication: The administrator creates a compute service offering and in the Deployment Planner field, chooses ImplicitDedicationPlanner. Then in Planner Mode, the administrator specifies either Strict or Preferred, depending on whether it is permissible to allow some use of shared resources when dedicated resources are not available. Whenever a user creates a VM based on this service offering, it is allocated on one of the dedicated hosts. Host or IP of the MySQL server Host or IP of the MySQL server, default: 3306 How to Dedicate a Zone, Cluster, Pod, or Host to an Account or Domain How to Use Dedicated Hosts If the LDAP server requires SSL, you need to enable the below configurations. Before enabling SSL for LDAP, you need to get the certificate which the LDAP server is using and add it to a trusted keystore. You will need to know the path to the keystore and the password. If you delete an account or domain, any hosts, clusters, pods, and zones that were dedicated to it are freed up. They will now be available to be shared by any account or domain, or the administrator may choose to re-dedicate them to a different account or domain. If you've multiple management servers, remove or rename the commands.properties file on all management servers typically in /etc/cloudstack/management path, after running the migration tool for the first management server In addition to the four default roles, the dynamic role-based API checker feature allows CloudStack root admins to create new roles with customized permissions. The allow/deny rules can be configured dynamically during runtime without restarting the management server(s). LDAP SSL: LDAP groups: Limitations: Managing Roles, Accounts, Users and Domains Once LDAP is enabled, the users will not be allowed to changed password directly in cloudstack. Once configured, on Add Account page, you will see an "Add LDAP Account" button which opens a dialog and the selected users can be imported. Options: Password of a MySQL user with privileges on cloud database Preferred implicit dedication. The VM will be deployed in dedicated infrastructure if possible. Otherwise, the VM can be deployed in shared infrastructure. Resource Ownership Resources belong to the account, not individual users in that account. For example, billing, resource limits, and so on are maintained by the account, not the users. A user can operate on any resource in the account provided the user has privileges for that operation. The privileges are determined by the role. A root administrator can change the ownership of any virtual machine from one account to any other account by using the assignVirtualMachine API. A domain or sub-domain administrator can do the same for VMs within the domain from one account to any other account in the domain or any of its sub-domains. Restricting LDAP users to a group: Role specific rules can be configured through the rules tab on role specific details page. A rule is either an API name or a wildcard string that are one of allow or deny permission and optionally a description. Roles Roles, Accounts, Users, and Domains Root Administrator Root administrators have complete access to the system, including managing templates, service offerings, customer care administrators, and domains Starting 4.5.2, the SAML plugin uses an authorization workflow where users should be authorized by an admin using ``authorizeSamlSso`` API before those users can use Single Sign On against a specific IDP. This can be done by ticking the enable SAML Single Sign On checkbox and selecting a IDP when adding or importing users. For existing users, admin can go to the user's page and click on configure SAML SSO option to enable/disable SSO for a user and select a Identity Provider. A user can be authorized to authenticate against only one IDP. Strict implicit dedication. A host will not be shared across multiple accounts. For example, strict implicit dedication is useful for deployment of certain types of applications, such as desktops, where no host can be shared between different accounts without violating the desktop software's terms of license. System VMs and virtual routers affect the behavior of host dedication. System VMs and virtual routers are owned by the CloudStack system account, and they can be deployed on any host. They do not adhere to explicit dedication. The presence of system vms and virtual routers on a host makes it unsuitable for strict implicit dedication. The host can not be used for strict implicit dedication, because the host already has VMs of a specific account (the default system account). However, a host with system VMs or virtual routers can be used for preferred implicit dedication. Tested with Shibboleth 2.4, SSOCircle, Microsoft ADFS, OneLogin, Feide OpenIDP, PingIdentity. The CloudStack service provider metadata is accessible using the ``getSPMetadata`` API command, or from the URL http://acs-server:8080/client/api?command=getSPMetadata where acs-server is the domain name or IP address of the management server. The IDP administrator can get the SP metadata from CloudStack and add it to their IDP server. The SAML authentication plugin supports HTTP-Redirect and HTTP-Post bindings. The administrator can live migrate VMs away from dedicated hosts if desired, whether the destination is a host reserved for a different account/domain or a host that is shared (not dedicated to any particular account or domain). CloudStack will generate an alert, but the operation is allowed. The commands.properties file, default: /etc/cloudstack/management/commands.properties The dynamic-roles feature is enabled by default only for all new CloudStack installations since version `4.9.x <https://cwiki.apache.org/confluence/display/CLOUDSTACK/Dynamic+Role+Based+API+Access+Checker+for+CloudStack>`_. The following global configuration should be configured: The following global configurations should also be configured (the default values are for openldap) The name of the database, default: cloud The plugin uses a user attribute returned by the IDP server in the SAML response to find and map the authorized user in CloudStack. The default attribute is `uid`. The root administrator can dedicate resources to a specific domain or account that needs private infrastructure for additional security or performance guarantees. A zone, pod, cluster, or host can be reserved by the root administrator for a specific domain or account. Only users in that domain or its subdomain may use the infrastructure. For example, only users in a given domain can create guests in a zone dedicated to that domain. There are several types of dedication available: To authenticate, username and password entered by the user are used. Cloudstack does a search for a user with the given username. If it exists, it does a bind request with DN and password. To explicitly dedicate an existing zone, pod, cluster, or host: log in as the root admin, find the resource in the UI, and click the Dedicate button. |button to dedicate a zone, pod,cluster, or host| To set up LDAP authentication in CloudStack, call the CloudStack API command ``addLdapConfiguration`` and provide Hostname or IP address and listening port of the LDAP server. You could configure multiple servers as well. These are expected to be replicas. If one fails, the next one is used. To start a SAML 2.0 Single Sign-On authentication, on the login page users need to select the Identity Provider or Institution/Department they can authenticate with and click on Login button. This action call the ``samlsso`` API command which will redirect the user to the Identity Provider's login page. Upon successful authentication, the IdP will redirect the user to CloudStack. In case a user has multiple user accounts with the same username (across domains) for the same authorized IDP, that user would need to specify domainpath after selecting their IDP server from the dropdown list. By default, users don't need to specify any domain path. After a user is successfully authenticated by an IDP server, the SAML authentication plugin finds user accounts whose username match the username attribute value returned by the SAML authentication response; it fails only when it finds that there are multiple user accounts with the same user name for the specific IDP otherwise the unique useraccount is allowed to proceed and the user is logged into their account. To use an explicitly dedicated host, use the explicit-dedicated type of affinity group (see `“Affinity Groups” <virtual_machines.html#affinity-groups>`_). For example, when creating a new VM, an end user can choose to place it on dedicated infrastructure. This operation will succeed only if some infrastructure has already been assigned as dedicated to the user's account or domain. Usage: ``migrate-dynamicroles.py`` [options] [-h for help] User name a MySQL user with privileges on cloud database, default: cloud Username is unique in a domain across accounts in that domain. The same username can exist in other domains, including sub-domains. Domain name can repeat only if the full pathname from root is unique. For example, you can create root/d1, as well as root/foo/d1, and root/sales/d1. Users Users are like aliases in the account. Users in the same account are not isolated from each other, but they are isolated from users in other accounts. Most installations need not surface the notion of users; they just have one user per account. The same user cannot belong to multiple accounts. Using Dynamic Roles Using a SAML 2.0 Identity Provider for User Authentication Using an LDAP Server for User Authentication When a user makes an API request, the backend checks the requested API against configured rules (in the order the rules were configured) for the caller user-account's role. It will iterate through the rules and would allow the API request if the API matches an allow rule, else if it matches a deny rule it would deny the request. Next, if the request API fails to match any of the configured rules it would allow if the requested API's default authorized annotaions allow that user role type and finally deny the user API request if it fails to be explicitly allowed/denied by the role permission rules or the default API authorize annotations. Note: to avoid root admin being locked out of the system, all root admin accounts are allowed all APIs. You can use a SAML 2.0 Identity Provider with CloudStack for user authentication. This will require enabling the SAML 2.0 service provider plugin in CloudStack. To do that first, enable the SAML plugin by setting ``saml2.enabled`` to ``true`` and restart management server. You can use an external LDAP server such as Microsoft Active Directory or ApacheDS to authenticate CloudStack end-users. CloudStack will search the external LDAP directory tree starting at a specified base directory and gets user info such as first name, last name, email and username. You could also use api commands: ``listLdapUsers``, ``ldapCreateAccount`` and ``importLdapUsers``. ``ldap.basedn``:     Sets the basedn for LDAP. Ex: **OU=APAC,DC=company,DC=com** ``ldap.bind.principal``, ``ldap.bind.password``: DN and password for a user who can list all the users in the above basedn. Ex: **CN=Administrator, OU=APAC, DC=company, DC=com** ``ldap.email.attribute``: email attribute within ldap for a user. Default value for AD and openldap is **mail**. ``ldap.firstname.attribute``: firstname attribute within ldap for a user. Default value for AD and openldap is **givenname**. ``ldap.group.object``: object type of groups within LDAP. Default value is group for AD and **groupOfUniqueNames** for openldap. ``ldap.group.user.uniquemember``: attribute for uniquemembers within a group. Default value is **member** for AD and **uniquemember** for openldap. ``ldap.lastname.attribute``: lastname attribute within ldap for a user. Default value for AD and openldap is **sn**. ``ldap.search.group.principle``: this is optional and if set only users from this group are listed. ``ldap.truststore.password`` : truststore password ``ldap.truststore`` : truststore path ``ldap.user.object``: object type of users within LDAP. Defaults value is **user** for AD and **inetorgperson** for openldap. ``ldap.username.attribute``: username attribute for a user within LDAP. Default value is **SAMAccountName** for AD and **uid** for openldap. ``saml2.default.idpid``: The default IdP entity ID to use only in case of multiple IdPs ``saml2.enabled``: Indicates whether SAML SSO plugin is enabled or not true. Default is **false** ``saml2.idp.metadata.url``: SAML2 Identity Provider Metadata XML Url or Filename. If a URL is not provided, it will look for a file in the config directory /etc/cloudstack/management ``saml2.redirect.url``: The CloudStack UI url the SSO should redirected to when successful. Default is **http://localhost:8080/client** ``saml2.sigalg``: The algorithm to use to when signing a SAML request. Default is SHA1, allowed algorithms: SHA1, SHA256, SHA384, SHA512. ``saml2.sp.contact.email``: SAML2 Service Provider Contact Email Address ``saml2.sp.contact.person``: SAML2 Service Provider Contact Person Name ``saml2.sp.id``: SAML2 Service Provider Identifier string ``saml2.sp.org.name``: SAML2 Service Provider Organization Name ``saml2.sp.org.url``: SAML2 Service Provider Organization URL ``saml2.sp.slo.url``: SAML2 CloudStack Service Provider Single Log Out URL ``saml2.sp.sso.url``: SAML2 CloudStack Service Provider Single Sign On URL ``saml2.timeout``: SAML2 IDP Metadata refresh interval in seconds, minimum value is set to 300. Default is 1800 ``saml2.user.attribute``: Attribute name to be looked for in SAML response that will contain the username. Default is **uid** sudo python /usr/share/cloudstack-common/scripts/util/migrate-dynamicroles.py -u cloud -p cloud -h localhost -p 3006 -f /etc/cloudstack/management/commands.properties Project-Id-Version: Apache CloudStack Administration RTD
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-22 13:55+0200
PO-Revision-Date: 2016-11-20 18:33+0100
Last-Translator: 
Language-Team: French (http://www.transifex.com/ke4qqq/apache-cloudstack-administration-rtd/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 Un rôle représente un ensemble de fonctions autorisées. Tous les comptes CloudStack ont un rôle qui leur est attaché et qui applique des règles qui lui autorisent ou qui lui refusent une requête d'API. Typiquement, il existe 4 rôles par défaut : admin root, admin de ressources, admin de domaine et utilisateur. Comptes Les comptes sont regroupés par domaines. Les domaines contiennent généralement plusieurs comptes qui ont une certaine relation logique entre eux et un ensemble d'administrateurs délégués avec une certaine autorité sur le domaine et ses sous-domaines. Par exemple, un fournisseur de services avec plusieurs revendeurs pourrait créer un domaine pour chaque revendeur. Les administrateurs sont des comptes disposants de droits spéciaux dans le système. Il peut y avoir plusieurs administrateurs dans le système. Les administrateurs peuvent créer ou supprimer d'autres administrateurs et changer le mot de passe de n'importe quel utilisateur du système. Après une montée de version, les déploiements déjà existant peuvent être migrés pour mettre en oeuvre cette fonctionnalité en lançant l'outil de migration en tant qu'administrateur CloudStack. L'outil de migration se situe sous ``/usr/share/cloudstack-common/scripts/util/migrate-dynamicroles.py``. Un compte représente généralement un client du fournisseur de service ou un département dans une grande organisation. Plusieurs utilisateurs peuvent exister dans un compte. Comportement des hôtes, clusters, pods et zones dédiés Les hôtes dédiés peuvent être utilisés en conjonction avec les tags d'hôtes. Si à la fois un tag d'hôtes et une réservation sont demandées, la machine virtuelle sera placée seulement sur un hôte qui réponds aux deux requêtes. S'il n'y a pas de ressources dédiées disponible pour cet utilisateur qui n'aurait également le tag d'hôte demandé par l'utilisateur, alors la machine ne sera pas déployée. Dédier des ressources à des comptes et des domaines Administrateurs de domaine Les administrateurs de domaine peuvent exécuter des opérations administratives pour les utilisateurs appartenant à leur domaine. Les administrateurs de domaine n'ont pas de visibilité sur les serveurs physiques ou sur les autres domaines. Domaines Cet outil va effectuer des tests et des opérations de debuggage. Durant la migration, cet outil active un drapeau interne dans la base de données, copie les règles statiques basées sur les rôles depuis le fichier commands.properties fournit (typiquement sous ``/etc/cloudstack/management/commands.properties``) vers la base de données et renomme le fichier commands.properties (typiquement sous /etc/cloudstack/management/commands.properties.deprecated). Le processus de migration ne nécessite pas un redémarrage du ou des serveurs de gestion. Exemple : Attribution explicite. Une zone, un pod, un cluster ou un hôte sont dédiés à un compte ou un domaine par l'administrateur racine durant le déploiement initial et la configuration. Pour une compatibilité ascendante, tous les rôles sont rattachés à un des quatre types de rôle : admin, admin de ressource, admin de domaine, et utilisateur. Un nouveau rôle peut être créé en utilisant les onglets rôles dans l'interface en spécifiant un nom, un type de rôle et optionnellement une description. Pour chaque compte créé, le Cloud crée trois types de comptes différents: administrateur root, administrateur de domaine et utilisateur. Pour l'attribution explicite : lors du déploiement d'une nouvelle zone, d'un pod, d'un cluster ou d'un hôte, l'administrateur root peut cliquer sur la case à cocher Dedié, et choisir alors un domaine ou un compte propriétaire de la ressource. Pour l'attribution implicite : L'administrateur créer une offre de service !compute! et dans le champ Planification de déploiement, choisit ImplicitDedicationPlanner. Alors, ans le mode Plannification, l'administraeur spécifie soit Strict, soit Préféré, en fonction de s'il est possible d'autoriser l'utilisation de ressources partagées lorsque les ressources dédiées ne sont pas disponibles. Même si un utilisateur créé une VM basée sur cette offre de service, elle est allouée sur un de ses hôtes dédiés. Nom d'hôte ou adresse IP du serveur Mysql Port du serveur Mysql, par défaut : 3306 Comment dédier une zone, un cluster, un pod ou un hôte à un compte ou à un domaine Comment utiliser les Hôtes Dédiés Si le serveur LDAP nécessite SSL, vous devez activer les configurations ci-dessous. Avant d'activer SSL pour LDAP, vous devez obtenir le certificat utilisé par le serveur LDAP et l'ajouter à votre magasin de confiance. Vous devez connaître le chemin d'accès au magasin et le mot de passe. Si vous supprimez un compte ou un domaine, tous les hôtes, les clusters, les pods, et les zones qui lui ont été dédiées sont libérées. Ils seront dorénavant disponibles pour être partagés par n'importe quel compte ou domaine, ou l'administrateur peut choisir de les dédier à nouveau à un autre compte ou un autre domaine. Si vous avez plusieurs serveurs de gestion, supprimer ou renommer le fichier commands.properties sur tous les serveurs de gestion, typiquement sous /etc/cloudstack/management, après avoir lancé l'outil de migration sur le premier serveur de gestion. En complément des quatre rôles par défaut, la fonctionnalité de vérification d'API basée sur les rôles dynamiques autorise les administrateurs à créer de nouveaux rôles avec des permissions personnalisées. Les règles d'autorisations/refus peuvent être configurées dynamiquement durant le fonctionnement sans devoir redémarrer le(s) serveur(s) de gestion.  LDAP SSL : Groupes LDAP : Limitations : Gérer les rôles, les comptes, les utilisateurs et les domaines Une fois que LDAP est activé, les utilisateurs ne seront plus autorisés à changer leurs mots de passe directement depuis depuis CloudStack. Une fois configuré, sur la page Ajout de compte, vous verrez un bouton "Ajouter un compte LDAP" qui ouvre une boîte de dialogue et les utilisateurs sélectionnés peuvent être importés. Options : Mot du passe de l'utilisateur MySQL disposant des privilèges sur la base de données cloud Attribution implicite préférée. La VM sera déployée si possible dans l'infrastructure dédiée. Sinon, la VM peut être déployée dans l'infrastructure partagée. Propriétaire d'une ressource Les ressources appartiennent à un compte, elles n'appartiennent pas à un utilisateur individuel de ce compte. Par exemple, la facturation, les limites de ressources, etc. sont calculées pour un compte, elles ne le sont pas par utilisateurs. Un utilisateur peut opérer sur n'importe quelle ressource de son compte pour peu que le compte fournissant l'utilisateur dispose des privilèges pour cette opération. Les privilèges sont déterminés par le rôle. Un administrateur peut changer le propriétaire de n'importe quelle machine virtuelle d'un compte vers un autre compte en utilisant l'API assignVirtualMachine. Un administrateur de domaine ou de sous-domaine peut faire de même pour les machines virtuelles de son domaine d'un compte à un autre compte de son domaine ou de n'importe lequel de ses sous-domaines. Restreindre les utilisateurs LDAP à un groupe : Les règles spécifiques d'un rôle peuvent être configurés par l'onglet règles dans la page de détails d'un rôle spécifique. Une règle est soit un nom d'API ou un chaîne de caractères jockers qui sont une autorisation ou un refus et optionnellement une description.  Rôles Rôles, Comptes, Utilisateurs et Domaines Administrateur root Les administrateurs racines ont un accès complet au système, incluant la gestion des modèles, les offres de service, les administrateurs de clientèles et les domaines. Depuis la version 4.5.2, le plugin SAML utilise un workflow d'autorisation dans lequel les utilisateurs devrait être autorisés par un administrateur à utiliser l'API ``authorizeSamlSso``. Auparavant, ces utilisateurs pouvaient utiliser le Single Sign On via un IdP spécifique. Ceci peut être fait en cochant la case d'activation SAML Single Sign On et en sélectionnant un IdP lors de l'ajout ou de l'importation d'utilisateurs. Pour un utilisateur existant, les administrateurs peuvent aller à la page de l'utilisateur et cliquer sur l'option activation/désactivation de l'option SAML SSO pour un utilisateur et sélectionner un fournisseur d'identité. Un utilisateur peut être autorisé pour s'autentifier via un seul IdP. Attribution stricte implicite. Un hôte ne sera pas partagé pour différents comptes. Par exemple, une attribution stricte implicite est utile pour le déploiement de certains types d'applications, comme les applications de bureaux, où aucun hôte ne peut être partagé entre des comptes différents sans violer les termes de licences du logiciel de bureau. Les machines virtuelles systèmes et les routeurs virtuels affecte le comportement de la réservation d'hôte. Les machines virtuelles et les routeurs virtuels appartiennent au compte système CloudStack et peuvent être déployé sur n'importe quel hôte. Ils ne respecte pas les réservations explicites. La présence de VM systèmes et de routeurs virtuels sur un hôte rendent la réservation explicite stricte inappropriée. L'hôte ne peut pas servir pour la réservation implicite puisque l'hôte a déjà des VMs d'un compte spécifique (le compte système par défaut). Toutefois, un hôte avec des VMs systèmes ou des routeurs virtuels peut être utilisé pour la réservation implicite préférée. Testé avec Shibboleth 2.4, SSOCircle, Microsoft ADFS, OneLogin, Feide OpenIDP, PingIdentity. La méta-donnée de CloudStack du fournisseur de service est accessible en utilisant la commande d'API ``getSPMetadata`` ou depuis l'URL http://acs-server:8080/client/api?command=getSPMetadata où acs est le nom de domaine ou l'adresse IP du serveur de gestion. L'administrateur de l'IdP peut obtenir la métadonnée du SP depuis CloudStack et l'ajouter à son serveur IdP. Le plugin d'authentification SAML support les authentifications HTTP-Redirect et HTTP-Post. L'administrateur peut migrer à chaud des machines virtuelles depuis ses hôtes dédiés, s'il le désire, même si la destination est un hôte réservé pour un compte/domaine différent ou si un hôte est partagé (non dédié à un compte ou un domaine particulier). CloudStack va générer une alerte, mais l'opération sera permise. Le fichier commands.properties, par défaut : /etc/cloudstack/management/commands.properties La fonctionnalité de rôles dynamiques est activée par défaut seulement pour les nouvelles installations de CloudStack depuis la version `4.9.x <https://cwiki.apache.org/confluence/display/CLOUDSTACK/Dynamic+Role+Based+API+Access+Checker+for+CloudStack>`_. La configuration globale suivante doit être effectuée : Les options de configuration globale suivantes devraient également être configurée (les valeurs par défaut s'applique à openldap) Le nom de la base de données, par défaut : cloud Le plugin utilise l'attribut utilisateur retourné par le serveur IDP dans la réponse SAML pour trouver et associer l'utilisateur autorisé dans CloudStack. L'attribut par défaut est `uid`. L'administrateur root peut dédier des ressources à un domaine spécifique ou à un compte qui nécessite une infrastructure privée pour plus de sécurité ou des garanties de performances. Une zone, un pod, un cluster ou un hôte peut être réservé par l'administrateur root pour un domaine ou un compte spécifique. Seuls les utilisateurs dans ce domaine ou ses sous-domaines peut utiliser cette infrastructure. Par exemple, seuls les utilisateurs dans un domaine donné peut créer des invités dans la zone dédiées à ce domaine.  Ils existes de nombreux types d'attribution possibles : Pour l'authentification, le nom d'utilisateur et le mot de passe saisis par l'utilisateur sont utilisés. CloudStack effectue une recherche pour un utilisateur avec le nom fourni. S'il existe, il effectue une requête d'authentification avec le DN et le mot de passe. Pour explicitement dédié une zone, un pod, un cluster ou un hôte déjà existant :  se connecter en tant qu'administrateur root, trouver la ressource dans l'interface et cliquer sur le bouton Dédier. |button to dedicate a zone, pod,cluster, or host| Pour paramétrer l'authentification LDAP dans CloudStack, appeler la commande d'API CloudStack ``addLdapConfiguration``et fournir un nom de machine ou une adresse IP et le port d'écoute du serveur LDAP. Vous pouvez bien entendu configurer plusieurs serveurs. Ces derniers sont considérés comme des réplicats. Si un serveur tombe en panne, le suivant sera utilisé. Pour commencer une authentification Single Sign-On SAML 2.0, les utilisateurs, depuis la page de connexion, doivent sélectionner le fournisseur d'identité ou l'institution/département avec lequel ils peuvent s'authentifier et cliquer sur le bouton Connexion. Cette action appelle la commande d'API ``samlsso`` qui va rediriger l'utiliser à la page de connexion du fournisseur d'identité. Après une authentification réussie, l'IdP va rediriger l'utilisateur vers CloudStack. Dans le cas ou un utilisateur dispose de plusieurs comptes avec le même nom d'utilisateur (sur plusieurs domaines) pour le même IdP autorisé, cet utilisateur devra spécifier le chemin du domaine après avoir sélectionner son serveur IdP depuis la liste de choix. Par défaut, les utilisateurs n'ont pas besoin de spécifier un chemin de domaine. Après qu'un utilisateur soit authentifié avec succès par un serveur IdP, le plugin d'authentification SAML trouve les comptes utilisateurs dont le nom d'utilisateur correspond à l'attribut nom d'utilisateur retourné par la réponse d'authentification SAML ; ceci échoue seulement lorsqu'il trouve qu'il existe plusieurs comptes utilisateurs avec le même nom d'utilisateur pour cet IdP spécifiquement et dans les autres cas le compte utilisateur unique est autorisé, et l'utilisateur est connecté à son compte. Pour utiliser un hôte dédié explicitement, utiliser le type de groupe d'affinité Explicitement-dédié (voir `“Groupes d'affinité” <virtual_machines.html#affinity-groups>`_). Par exemple, lorsque une nouvelle VM est créée, un utilisateur final peut choisir de la placer dans son infrastructure dédiée. Cette opération fonctionnera seulement si une partie de son infrastructure a déjà été assignée comme dédiée au compte de l'utilisateur ou au domaine. Utilisation : ``migrate-dynamicroles.py`` [options] [-h pour l'aide] Nom d'utilisateur : un utilisateur MySQL avec les privilèges sur la base de données cloud, par défaut : cloud Le nom d'utilisateur est unique dans un domaine. Le même nom d'utilisateur peut exister dans d'autres domaines ou sous-domaines. Un nom de domaine peut être réutilisé seulement si le chemin complet est unique. Par exemple, vous pouvez créer root/d1, ainsi que root/exemple/d1 et root/ventes/d1. Utilisateurs Les utilisateurs sont comme des alias dans le compte. Les utilisateurs qui sont dans le même compte ne sont pas isolés les uns des autres mais sont isolés des utilisateurs des autres comptes. La plupart des installations n'ont aucune notion des utilisateurs; elles ont seulement un utilisateur par compte. Un même utilisateur ne peut pas appartenir à plusieurs comptes. Utiliser les rôles dynamiques Utiliser un fournisseur d'identité SAML 2.0 pour l'authentification des utilisateurs Utiliser un serveur LDAP pour l'authentification des utilisateurs Quand un utilisateur effectue une requête d'API, le backend vérifie si l'API demandée apparaît dans les règles configurées (dans l'ordre dont les règles ont été configurées) pour le rôle du compte utilisateur appelant. Il va parcourir toutes les règles et autorisera la requête d'API si l'API correspond à une règle d'autorisation, ou la refusera si elle correspond à une règle de refus. Ensuite, si la requête d'API échoue dans la correspondance avec une règle configurée, il l'autorisera si l'API par défaut autorise ce type de rôle utilisateur et finalement refusera la requête d'API s'il échoue à l'autoriser/refuser explicitement par les règles de permissions des rôles ou par l'autorisation par défaut de l'API. Note : pour éviter à l'administrateur d'être verrouillé par le système, tous les comptes d'administrateur racine sont autorisés pour toutes les APIs. Vous pouvez utiliser un fournisseur d'identité SAML 2.0 avec CloudStack pour l'authentification utilisateur. Cela nécessitera d'activer le plugin du fournisseur de service SAML 2.0. Pour cela, activer le plugin SAML en configuration ``saml2.enabled`` à ``true`` et redémarrer le serveur de gestion. Vous pouvez utiliser un serveur LDAP externe comme Microsoft Active Directory ou ApacheDS pour authentifier les utilisateurs CloudStack. CloudStack cherchera dans l'arbre de l'annuaire LDAP externe  depuis un répertoire de base spécifié et obtiendra les informations de l'utilisateur comme son nom, son prénom, son email et son nom d'utilisateur. Vous pouvez également utiliser les commandes d'API : ``listLdapUsers``, ``ldapCreateAccount`` et ``importLdapUsers``. ``ldap.basedn``:     Positionne le basedn pour LDAP. Ex: **OU=APAC,DC=company,DC=com** ``ldap.bind.principal``, ``ldap.bind.password``: DN et mot de passe pour l'utilisateur qui dispose des droits pour lister tous les utilisateurs dans la basedn fournie ci-dessus. Ex: **CN=Administrator, OU=APAC, DC=company, DC=com** ``ldap.email.attribute``: attributs email au sein de LDAP pour un utilisateur. La valeur par défaut pour AD et pour openldap est **mail**. ``ldap.firstname.attribute``: attribut prénom au sein de LDAP pour un utilisateur. La valeur par défaut pour AD et openldap est **givenname**. ``ldap.group.object``: type d'objet pour un groupe au sein de LDAP. La valeur par défaut pour AD est **group** pour AD et **groupOfUniqueNames** pour openldap. ``ldap.group.user.uniquemember``: attributs pour les membres d'un groupe. La valeur par défaut est **member** pour AD et **uniquemember** pour openldap. ``ldap.lastname.attribute``: attribut nom de famille au sein de LDAP pour un utilisateur. La valeur par défaut pour AD et openldap est **sn**. ``ldap.search.group.principle``: ceci est optionnel et si positionné seuls les utilisateurs de ce groupe sont listés. ``ldap.truststore.password`` : mot de passe du magasin de clefs ``ldap.truststore`` : chemin d'accès au magasin de clefs ``ldap.user.object``: type d'objet définissant les utilisateurs au sein de LDAP. La valeur par défaut est **user** pour AD et **inetorgperson** pour openldap. ``ldap.username.attribute``: attribut nom d'utilisateur pour un utilisateur au sein de LDAP. La valeur par défaut est  **SAMAccountName** pour AD et **uid** pour openldap. ``saml2.default.idpid``: L'ID par défaut du fournisseur d'identité (IdP) à utiliser seulement dans le cas de multiples fournisseurs d'identités. ``saml2.enabled``: Indique si le plugin SAML SSO est activé ou non. La valeur par défaut est **false** ``saml2.idp.metadata.url``: URL du fichier de méta-données du fournisseur d'identité SAML2 ou nom de fichier . Si une URL est fournie, il cherchera un fichier dans le répertoire de configuration /etc/cloudstack/management ``saml2.redirect.url``: L'URL de l'interface CloudStack vers lequel le SSO doit rediriger après un succès. L'URL par défaut est **http://localhost:8080/client** ``saml2.sigalg``: L'algorithme à utiliser lors de la signature de requêtes SAML. Par défault l'algorithme est SHA1, les algorithmes autorisés sont : SHA1, SHA256, SHA384, SHA512. ``saml2.sp.contact.email``: Adresse email de contact du fournisseur de service SAML2 ``saml2.sp.contact.person``: Nom du contact du fournisseur de service SAML2 ``saml2.sp.id``: chaîne de l'identifiant du fournisseur de service SAML2 ``saml2.sp.org.name``: Nom de l'organisme du fournisseur de service SAML2 ``saml2.sp.org.url``: URL de l'organisme du fournisseur de service SAML2 ``saml2.sp.slo.url``: URL de déconnexion du fournisseur de service SAML2 ``saml2.sp.sso.url``: URL Single Sign On du fournisseur de service SAML2 CloudStack ``saml2.timeout``: Interval de temps de rafraîchissement en secondes des méta-données du fournisseur d'identité SAML2, la valeur minimale est fixée à 300. La valeur par défaut est 1800. ``saml2.user.attribute``: Nom de l'attribut à rechercher dans la réponse SAML qui contient le nom d'utilisateur. La valeur par défaut est **uid** sudo python /usr/share/cloudstack-common/scripts/util/migrate-dynamicroles.py -u cloud -p cloud -h localhost -p 3006 -f /etc/cloudstack/management/commands.properties 