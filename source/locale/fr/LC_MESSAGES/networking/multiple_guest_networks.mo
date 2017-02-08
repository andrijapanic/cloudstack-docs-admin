��    7      �              �  L   �  :   �  H     =   ^  �   �  �   #  �     Y   �  �   2  j   �     B  "   S  |  v     �	  0   
  )   4
  ;   ^
     �
     �
  )   �
     �
       8     1   N  6  �  I  �  k        m     u  
   x  �   �  %   G  �   m  G     /   P  P   �  '   �  (   �  �   "  
     "   #  %   F  <   l     �     �     �     �     �     �  *     D   F     �     �  _   �  �    R   �  L     |   g  @   �  �   %     �    �  �   �  �   D  y   �     g  *   z  �  �     �  4   �  3   �  J     )   _     �  ?   �     �     �  P     7   m  u  �  �  !  �   �"  
   ]#     h#  
   k#  �   v#  .   m$  �   �$  X   Q%  ;   �%  Z   �%  1   A&  $   s&  /  �&     �'  -   �'  :   (  T   ?(     �(     �(  
   �(  &   �(     �(  %   )  A   ')  S   i)     �)  '   �)  �   �)   **Display Text**: The description of the network. This will be user-visible. **Guest Gateway**: The gateway that the guests should use. **Guest Netmask**: The netmask in use on the subnet the guests will use. **Name**: The name of the network. This will be user-visible. **Network offering**: If the administrator has configured multiple network offerings, select the one you want to use for this network. **Zone**. The name of the zone this network applies to. Each zone is a broadcast domain, and therefore each zone has a different IP range for the guest network. The administrator must configure the IP range for each zone. A VM's networks are defined at VM creation time. A VM cannot add or remove networks after it has been created, although the user can go into the guest and remove the IP address from the NIC on a particular network. A new NIC is added for this network. You can view the following details in the NICs page: A prompt is displayed asking whether you want to keep the existing CIDR. This is to let you know that if you change the network offering, the CIDR will be affected. A user or administrator can change the network offering that is associated with an existing guest network. Adding a Network Adding an Additional Guest Network Additional networks can either be available to all accounts or be assigned to a specific account. Networks that are available to all accounts are zone-wide. Any user with access to the zone can create a VM with access to that network. These zone-wide networks provide little or no isolation between guests.Networks that are assigned to a specific account provide strong isolation. CIDR (for IPv6) Changing the Network Offering on a Guest Network Choose the VM that you want to work with. Click Add guest network. Provide the following information: Click Add network to VM. Click Create. Click Remove NIC button. |remove-nic.png| Click Yes to confirm. Click the NICs tab. Click the Set default NIC button. |set-default-nic.png|. Click the name of the network you want to modify. CloudStack provides you the ability to move VMs between networks and reconfigure a VM's network. You can remove a VM from a network and add to a new network. You can also change the default network of a virtual machine. With this functionality, hybrid or traditional server loads can be accommodated with ease. Each VM has just one default network. The virtual router's DHCP reply will set the guest's default gateway as that for the default network. Multiple non-default networks may be added to a guest in addition to the single, required default network. The administrator can control which networks are available as the default network. Ensure that vm-tools are running on guest VMs for adding or removing networks to work on VMware hypervisor. Gateway ID IP Address If you are changing from a network offering that uses the CloudStack virtual router to one that uses external devices as network service providers, you must first stop all the VMs on the network. If you stopped any VMs, restart them. If you upgrade between virtual router as a provider and an external network device as provider, acknowledge the change of CIDR to continue, so choose Yes. In Network Offering, choose the new network offering, then click Apply. In the Details tab, click Edit. |edit-icon.png| In the drop-down list, select the network that you would like to add this VM to. In the left navigation, choose Network. In the left navigation, click Instances. In zones that use advanced networking, additional networks for guest traffic may be added at any time after the initial installation. You can also customize the domain name associated with the network by specifying a DNS suffix for each network. Is default Locate the NIC you want to remove. Locate the NIC you want to work with. Log in to the CloudStack UI as an administrator or end user. Netmask Network Name Prerequisites Reconfiguring Networks in VMs Removing a Network Selecting the Default Network The Add network to VM dialog is displayed. This feature is supported on XenServer, VMware, and KVM hypervisors. Type Using Multiple Guest Networks Wait for the update to complete. Don't try to restart VMs until the network change is complete. Project-Id-Version: Apache CloudStack Administration RTD
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-06-30 12:52+0200
PO-Revision-Date: 2016-12-19 18:00+0100
Last-Translator: 
Language-Team: French (http://www.transifex.com/ke4qqq/apache-cloudstack-administration-rtd/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 **Texte affiché**: La description du réseau. Cela sera visible de l'utilisateur. **Passerelle invitée** : La passerelle que les invités devraient utiliser. **Masque de sous réseau invité** : Le masque de sous réseau utilisé dans le sous réseau que les invités vont utiliser. **Nom** : Le nom du réseau. Cela sera visible de l'utilisateur. **Offre réseau** : Si l'administrateur a configuré plusieurs offres de réseau, sélectionner celui que vous voulez utiliser pour ce réseau. **Zone**. Le nom de la zone à laquelle le réseau s'applique. Chaque zone est un domaine de diffusion, et par conséquent, chaque zone a une plage d'IP différente pour le réseau d'invité. L'administrateur doit configurer la plage d'IP pour chaque zone. Les réseaux d'une VM sont définis à la création de la VM. Une VM ne peut pas ajouter ou supprimer des réseaux après qu'il ait été créé, bien que l'utilisateur puisse aller dans l'invité et supprimer l'adresse IP sur la carte réseau du réseau particulier. Une nouvelle interface réseau est ajoutée pour ce réseau. Vous pouvez voir les détails suivants dans la page de l'interface : Une invite est affichée demandant si vous voulez conserver le CIDR existant. Ceci vous permet de savoir que si vous changez d'offre  réseau, le CIDR en sera affecté. Un utilisateur ou un administrateur peut changer l'offre de réseau qui est associée avec un réseau d'invité existant. Ajouter un réseau Ajouter un réseau invité supplémentaire Des réseaux supplémentaires peuvent être disponibles pour tous les comptes ou être assigné à un compte spécifique. Les réseaux qui sont disponibles pour tous les comptes sont à l'échelle de la zone. Tout utilisateur avec un accès à la zone peut créer une VM avec un accès à ce réseau. Ces réseaux à l'échelle de la zone fournissent un peu ou pas du tout d'isolation entre les invités. Les réseaux qui sont assignés à un compte spécifique fournissent une isolation plus solide. CIDR (pour IPv6) Changer l'offre de réseau pour un réseau invités. Choisir la VM avec laquelle vous voulez travailler. Cliquez sur Ajouter un réseau invité. Donnez les informations suivantes: Cliquer sur Ajouter un réseau à une VM. Cliquez sur Créer Cliquer sur le bouton Supprimer une interface. |remove-nic.png| Cliquer sur Oui pour confirmer. Cliquer sur l'onglet Interface. Cliquer sur le bouton Définir une interface par défaut. |set-default-nic.png|. Cliquer sur le nom du réseau que vous voulez modifier. CloudStack vous offre la possibilité de déplacer des VMs d'un réseau à un autre et de reconfigurer son réseau. Vous pouvez retirer une VM d'un réseau et l'ajouter à un nouveau réseau. Vous pouvez aussi changer le réseau par défaut d'une machine virtuelle. Avec cette fonctionnalité, les charges d'un serveur traditionnel ou hybride peut être facilement adapté. Chaque VM a juste un réseau par défaut. La réponse du serveur DHCP du routeur virtuel définit ainsi la passerelle par défaut de l'invité à l'identique de la passerelle du réseau par défaut. Plusieurs réseaux qui ne sont pas par défaut peuvent être ajoutés à un invité en complément du réseau unique par défaut requis. L'administrateur peut contrôler quels réseaux sont disponible comme réseau par défaut. S'assurer que les vm-tools fonctionnent sur les VMs invités pour ajouter ou retirer les réseaux pour que cela fonctionne sur les hyperviseur VMware. Passerelle ID Adresse IP Si vous êtes en train de changer d'une offre de réseau qui utilise le routeur virtuel CloudStack vers une qui utilise des périphériques externes comme fournisseurs de services réseaux, vous devez d'abord stopper toutes les VMs de ce réseau. Si vous avez stoppé des VMs, redémarrer les. Si vous évoluez d'un routeur virtuel comme fournisseur vers un périphérique réseau externe comme fournisseur, accepter le changement du CIDR pour continuer en cliquant sur Oui. Dans Offre de Réseau, choisir la nouvelle offre de réseau, puis cliquer sur Appliquer. Dans l'onglet Détails, cliquer sur Editer. |edit-icon.png| Dans la liste déroulante, sélectionner le réseau que vous aimeriez ajouter à cette VM. Dans la navigation à gauche, choisissez Réseau. Sur la gauche, cliquez sur Instances Dans les zones qui utilisent le réseau avancé, des réseaux additionnels pour le trafic invité peuvent être ajoutés à n'importe quel moment après l'installation initiale. Vous pouvez aussi personnaliser le nom de domaine associé avec le réseau en spécifiant un suffixe DNS pour chaque réseau. Par défaut ? Repérer l'interface que vous voulez retirer. Repérer l'interface avec laquelle vous voulez travailler. Se connecter à l'interface de CloudStack comme administrateur ou utilisateur final. Masque de sous-réseau Nom du réseau Prérequis Reconfigurer les Réseaux dans les VMs Supprimer un réseau Sélectionner le réseau par défaut. La boîte de dialogue Ajouter un réseau à une VM est affichée. Cette fonctionnalité est supportée sur les hyperviseurs XenServer, VMware et KVM. Type Utiliser plusieurs Réseaux d'Invités  Attendre que la mise à jour soit finie. Ne pas essayer de redémarrer les VMs tant que le changement du réseau n'est pas achevé. 