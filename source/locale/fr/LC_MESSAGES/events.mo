��    H      \              �  �   �  �   '  b  �          1     I  �   \  e   �  �  T	  �  .  �     �   �  	   E  �   O     D  �   \  '  �  I     i   a  8   �  l     (   q  T   �     �  
          �     P     �   `     �  b     %   e  :   �     �  -   �       1         R      _     �  	   �  ;  �     �  1   �     #  $   3     X  o   w  J   �  6   2  (   i  F   �  �  �  I   m  H   �  �      	   �     �  F     E   K  =   �  D   �  &      a   ;   �  �   Z   �"  #   �"  b   #  4   t#  @   �#  R   �#  �  =$  �   �%  �   �&    ''  *   =*      h*     �*  �   �*  q   I+    �+  �   �-  �   w.  �   8/     0  6  0     S1  �   m1  r  82  I   �4  �   �4  >   �5  {   �5  =   S6  a   �6  &   �6     7     17    L7  [   e8  �   �8     ~9  o   �9  >   �9  9   >:     x:  F   �:  .   �:  I   ;     L;     Y;     n;  
   z;  �   �;  %   <  @   �<     �<  1   �<  '   0=  t   X=  h   �=  J   6>  -   �>  \   �>  z  ?  u   �B  v   �B  .  tC     �D  0   �D  X   �D  V   :E  E   �E  [   �E  4   3F  v   hF  [  �F  X   ;I  &   �I  j   �I  9   &J  9   `J  [   �J   **alert.purge.delay**: The alerts older than specified number of days are purged. Set the value to 0 to never purge alerts automatically. **alert.purge.interval**: The interval in seconds to wait before running the alert purge thread. The default is 86400 seconds (one day). A new event for state change, resource state change, is introduced as part of Event notification framework. Every resource, such as user VM, volume, NIC, network, public IP, snapshot, and template, is associated with a state machine and generates events as part of the state change. That implies that a change in the state of a resource results in a state change event, and the event is published in the corresponding state machine on the event bus. All the CloudStack events (alerts, action events, usage events) and the additional category of resource state change events, are published on to the events bus. A sample bean is given below: A sample is given below AMQP Configuration AMQP plug-in can place all the events on the a message queue, then a AMQP message broker can provide topic-based notification to the subscribers. Additionally, both an in-memory implementation and an Apache Kafka implementation are also available. An event bus is introduced in the Management Server that allows the CloudStack components and extension plug-ins to subscribe to the events by using the Advanced Message Queuing Protocol (AMQP) client. In CloudStack, a default implementation of event bus is provided as a plug-in that uses the RabbitMQ AMQP client. The AMQP client pushes the published events to a compatible AMQP server. Therefore all the CloudStack events are published to an exchange in the AMQP server. An event is essentially a significant or meaningful change in the state of both virtual and physical resources associated with a cloud environment. Events are used by monitoring systems, usage and billing systems, or any other event-driven workflow systems to discern a pattern and make the right business decision. In CloudStack an event could be a state change of virtual or physical resources, an action performed by an user (action events), or policy based events (alerts). Archived alerts or events cannot be viewed in the UI or by using the API. They are maintained in the database for auditing or compliance purposes. As a CloudStack administrator, perform the following one-time configuration to enable event notification framework. At run time no changes can control the behaviour. Click OK. CloudStack provides you the ability to delete or archive the existing alerts and events that you no longer want to implement. You can regularly delete or archive any alerts or events that you cannot, or do not want to resolve from the database. Consider the following: Create a new file in the same folder called ``cred.properties`` and the specify the values for username and password as jascrypt encrypted strings Create an appropriate configuration file in ``/etc/cloudstack/management/kafka.producer.properties`` which contains valid kafka configuration properties as documented in http://kafka.apache.org/documentation.html#newproducerconfigs The properties may contain an additional ``topic`` property which if not provided will default to ``cloudstack``. While ``key.serializer`` and ``value.serializer`` are usually required for a producer to correctly start, they may be omitted and will default to ``org.apache.kafka.common.serialization.StringSerializer``. Create the folder ``/etc/cloudstack/management/META-INF/cloudstack/core`` Database logs can be queried from the user interface. The list of events captured by the system includes: Define a bean named ``eventNotificationBus`` as follows: Define a bean named ``eventNotificationBus`` with a single ``name`` attribute, A sample bean is given below: Deleting and Archiving Events and Alerts ERROR. This event is generated when an operation has not been successfully performed Event Log Queries Event Logs Event Notification Event notification framework provides a means for the Management Server components to publish and subscribe to CloudStack events. Event notification is achieved by implementing the concept of event bus abstraction in the Management Server. INFO. This event is generated when an operation has been successfully performed. If you want to use encrypted values for the username and password, you have to include a bean to pass those as variables from a credentials file. Implementations In order to support the delete or archive alerts, the following global parameters have been added: In the left navigation, click Events. Inside that folder, open ``spring-event-bus-context.xml``. Kafka Configuration Log in as administrator to the CloudStack UI. Long Running Job Events Network/load balancer rules creation and deletion Notification Perform either of the following: Permissions Procedure Publish and Subscribe notification service can be implemented as a pluggable service in CloudStack that can provide rich set of APIs for event notification, such as topics-based subscription and notification. Additionally, the pluggable service can deal with multi-tenancy, authentication, and authorization issues. Restart the Management Server. Sample, with ``guest`` as values for both fields: Standard Events Storage volume creation and deletion Template creation and deletion The ``eventNotificationBus`` bean represents the ``org.apache.cloudstack.mom.rabbitmq.RabbitMQEventBus`` class. The domain admin or end user can delete or archive one or multiple events. The events log records three types of standard events. The following are some of the use cases: The root admin can delete or archive one or multiple alerts or events. There are two types of events logged in the CloudStack Event Log. Standard events log the success or failure of an event and can be used to identify jobs or processes that have failed. There are also long running job events. Events for asynchronous jobs log when a job is scheduled, when it starts, and when it completes. Other long running synchronous jobs log when a job starts, and when it completes. Long running synchronous and asynchronous event logs can be used to gain more information on the status of a pending job or can be used to identify a job that is hanging or has not started. The following sections provide more information on these events.. To archive events, click Archive Events, and specify event type and date. To archive events, click Delete Events, and specify event type and date. Usage or Billing Engines: A third-party cloud usage solution can implement a plug-in that can connects to CloudStack to subscribe to CloudStack events and generate usage data. The usage data is consumed by their usage software. Use Cases User login and logout Virtual machine creation, deletion, and on-going management operations Virtual router creation, deletion, and on-going management operations WARN. This event is generated in the following circumstances. When a network is disconnected while monitoring a template download. When a template download is abandoned. When an issue on the storage server causes the volumes to fail over to the mirror storage server. You can delete or archive individual alerts or events either directly by using the Quickview or by using the Details page. If you want to delete multiple alerts or events at the same time, you can use the respective context menu. You can delete alerts or events by category for a time period. For example, you can select categories such as **USER.LOGOUT**, **VM.DESTROY**, **VM.AG.UPDATE**, **CONFIGURATION.VALUE.EDI**, and so on. You can also view the number of events or alerts archived or deleted. exchange : The exchange name on the RabbitMQ server where CloudStack events are published. name : Specify a name for the bean. password : The password associated with the username of the account to access the RabbitMQ server. port : The port on which RabbitMQ server is running. server : The name or the IP address of the RabbitMQ AMQP server. username : The username associated with the account to access the RabbitMQ server. Project-Id-Version: Apache CloudStack Administration RTD
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-22 13:55+0200
PO-Revision-Date: 2016-10-09 17:45+0200
Last-Translator: 
Language-Team: French (http://www.transifex.com/ke4qqq/apache-cloudstack-administration-rtd/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 **alert.purge.delay** : Les alertes plus vieilles que le nombre de jours spécifié sont purgées. Mettre à 0 pour ne jamais purger les alertes. **alert.purge.interval** : L'intervalle en secondes à attendre avant de lancer le processus de purge des alertes. Le défaut est de 86400 secondes (un jour). Un nouvel évènement par changement d'état de ressource est inséré au sein du framework de notification d'évènements. Chaque ressource, comme une VM utilisateur, un volume, une interface réseau, une IP publique, un instantané ou un modèle, est associé avec un état de machine et génère des évènements en tant que partie du changement d'état. Cela implique qu'un changement dans l'état d'une ressource résulte à un évènement de changement d'état  et que l'évènement est publié dans l'état de la machine correspondant sur le bus d'évènement. Tous les évènements CloudStack (alertes, évènements d'action, évènements d'utilisation) et la catégorie additionnelle des évènements de changement des états de ressources sont publiés sur le bus d'évènements. Un exemple de bean est donné ci-dessous : Un exemple est donné ci-dessous Configuration AMQP Le plugin AMQP place tous les évènements dans une file de messages, un courtier de messages AMQP peut ensuite fournir une notification basée sur les sujets aux abonnés. En complément, une implémentation en mémoire et une implémentation Apache Kafka sont toutes deux disponibles. Un bus d'évènement est introduit dans le Serveur de Gestion ce qui autorise les composants CloudStack et ses plug-ins d'extension à souscrire aux évènements en utilisant le client Advanced Message Queuing Protocol (AMQP). Dans CloudStack, une implémentation par défaut du bus d'évènement est fourni comme un plug-in qui utilise le client AMQP RabbitMQ. Le client AMQP pousse les évènements publiés à un serveur AMQP compatible. Par conséquent, tous les évènements CloudStack sont publiés sur un échange du serveur AMQP. Un évènement est essentiellement un changement important ou significatif de l'état des ressources virtuelles ou physiques associées à l'environnement cloud. Les alertes les évènements archivés ne peuvent pas être visualisés dans l'interface ou en utilisant l'API. Ils sont conservés en base de données à des fins d'audits ou de conformités. En tant qu'administrateur CloudStack, effectuer la configuration suivante une fois pour activer le framework de notification d'évènement. En fonctionnement, aucun changement ne peut contrôler le comportement. Cliquer sur OK. CloudStack vous offre la possibilité de supprimé ou d'archiver les alertes et les évènements existant que vous ne voulez plus implémenter. Vous pouvez régulièrement supprimer ou archiver n'importe quelles alertes ou évènements que vous ne pouvez ou ne voulez plus résoudre depuis la base de données. Considérer ce qui suit : Créer un nouveau fichier dans le même dossier appelé ``cred.properties`` et spécifier les valeurs pour le nom d'utilisateur et le mot de passe avec des chaînes de caractères javascripts cryptées. Créer un fichier de configuration approprié dans ``/etc/cloudstack/management/kafka.producer.properties`` qui contient les propriétés de configuration valides comme documenté dans http://kafka.apache.org/documentation.html#newproducerconfigs. Les propriétés peuvent contenir une propriété additionnelle ``topic`` qui, si elle n'est pas fournie, sera par défaut ``cloudstack``. Comme ``key.serializer`` et ``value.serializer`` sont en général requis pour un producteur pour démarrer correctement, ils peuvent être omis et prendront par défaut la valeur ``org.apache.kafka.common.serialization.StringSerializer``. Créer le dossier ``/etc/cloudstack/management/META-INF/cloudstack/core`` Les enregistrements de la base de données peuvent être requêtés depuis l'interface utilisateur. La liste des évènements capturés par le système incluent : Définir un bean appelé ``eventNotificationBus`` comme ceci : Définir un bean appelé ``eventNotificationBus``avec un seul attribut ``name``. Un exemple de bean est donné ci-dessous : La suppression et l'archivage des évènements et des alertes ERROR. Cet évènement est généré lorsqu'une opération n'a pas été effectuée avec succès. Requête sur le journal d'évènements Journal d'évènements Notification d'évènement Le framework de notification d'évènement fournit un moyen pour les composants du Serveur de Gestion de publier des évènements ou d'y souscrire. La notification d'évènement est obtenue en implémentant le concept d'abstraction de bus d'évènement dans le Serveur de Gestion. INFO. Cet évènement est généré lorsque une opération a été effectuée avec succès. Si vous voulez utiliser une valeur chiffré pour le nom d'utilisateur et le mot de passe, vous devez inclure un bean pour fournir ceux-ci comme variable depuis un fichier d'identification. Implémentations Pour supporter la suppression ou l'archivage des alertes, les paramètres globaux suivants ont été ajoutés : Dans le menu de navigation de gauche, cliquer sur Evènements. Dans ce dossier, ouvrir ``spring-event-bus-context.xml``. Configuration Kafka Se connecter en tant qu'administrateur dans l'interface de CloudStack. Évènements de l'exécution des longs travaux La création et suppression des règles de réseau/répartition de charge Notification Effectuer au choix : Permissions Procédure Publier et souscrire au service de notifications peut être implémenté comme un service enfichable dans CloudStack qui peut fournir un ensemble riche d'API pour la notification d'évènements, comme une souscription ou une notification par sujets. Redémarrez votre serveur de gestion. Par exemple, avec ``guest`` comme valeurs pour les deux champs : Evènements standards : La création et suppression de volume de stockage La création et suppression de modèles Le bean ``eventNotificationBus`` bean représente la classe ``org.apache.cloudstack.mom.rabbitmq.RabbitMQEventBus``. L'administrateur de domaine ou l'utilisateur peuvent supprimer ou archiver un ou plusieurs évènements. Le journal d'évènements enregistre trois types d'évènements standards. Les exemples suivants sont des cas d'usages : L'administrateur racine peut supprimer ou archiver une ou plusieurs alertes et évènements. Il y a deux types d'évènements consignés dans le journal des évènements de CloudStack. Les évènements standard enregistrent le succès ou l'échec d'un évènement et peuvent être utilisés pour identifier les travaux ou les processus qui ont échoué. Il peut aussi y avoir des évènements de travaux longs. Les évènements pour les travaux asynchrones enregistrent lorsque le travail est programmé, lorsqu'il démarre et lorsqu'il est terminé. Les autres travaux long synchrones enregistrent quand le travail démarre et quand il est terminé. Les enregistrements d'évènements long synchrones et asynchrones peuvent être utilisés pour obtenir plus d'informations sur le statut d'un travail en cours ou peuvent être utilisés pour identifier un travail qui est suspendu ou qui n'a pas démarré. Les sections suivantes fournissent plus d'informations sur ces évènements. Pour archiver les évènements, cliquer sur Archiver les évènements et spécifier le type d'évènement et la date. Pour archiver les évènements, cliquer sur Détruire les évènements et spécifier le type d'évènement et la date. Moteurs de facturation ou d'utilisation. Une solution tiers d'utilisation du cloud peut implémenter un plugin qui peut se connecter à CloudStack pour s'abonner aux évènements CloudStack et généré des données d'utilisation. La donnée d'utilisation est utilisée par leur logiciel d'utilisation. Cas d'usages La connexion et la déconnexion de l'utilisateur La création, suppression et les opérations de gestion en cours des machines virtuelles La création, suppression et les opérations de gestion en cours des routeurs virtuels WARN. Cet évènement est généré dans les circonstances suivantes. Quand un réseau est déconnecté lors de la surveillance du téléchargement d'un modèle. Quand un téléchargement de modèle est abandonné. Quand un problème sur le serveur de stockage provoque le basculement des volumes sur le serveur de stockage mirroir.  Vous pouvez supprimer ou archiver des alertes ou des évènements individuels soit en utilisant la vue rapide ou en utilisant la page Détails. Si vous voulez supprimer plusieurs alertes ou évènements en même temps, vous pouvez utiliser le menu contextuel respectif. Vous pouvez supprimer des alertes ou des évènements par catégories pour une période de temps. Par exemple, vous pouvez sélectionner les catégories comme **USER.LOGOUT**, **VM.DESTROY**, **VM.AG.UPDATE**, **CONFIGURATION.VALUE.EDI** etc. Vous pouvez également voir le nombre d'évènements ou d'alertes archivés ou supprimés. exchange : Le nom d'échange sur le serveur RabbitMQ où les évènements sont publiés. name : Spécifier un nom pour le bean. password : Le mot de passe associé avec le nom d'utilisateur du compte pour accéder au serveur RabbitMQ. port : Le port sur lequel le serveur RabbitMQ fonctionne. server : Le nom ou l'adresse IP du serveur RabbitMQ AMQP. username :  Le nom d'utilisateur associé avec le compte pour accéder au serveur RabbitMQ. 