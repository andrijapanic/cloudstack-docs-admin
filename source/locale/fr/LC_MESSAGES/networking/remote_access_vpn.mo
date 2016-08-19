��    1      �              ,  �   -  �    N     I   i     �  
   �  C   �          $  ,   =  &   j  +   �     �  4   �  �       �  $   �  3   �  /        8  .   X  &   �     �  7   �  <   �  �   /     �  #   �  
                  0     =  +   O     {  2   �     �  
   �  #   �  -     .   1     `  '   y     �     �  �   �  7   p  G   �  �  �  �   �  �  �  N   �  I        W  
   \  C   g     �  !   �  ,   �  &     +   >     j  4   �  �  �     >  $   \  3   �  /   �  *   �  .     &   ?     f  7   r  <   �  �   �     �  #   �  
  �     �     �     �     �  +         3   2   G      z   
   �   #   �   -   �   .   �      !  '   1!     Y!     v!  �   �!  7   ("  G   `"   **Road Warrior / Remote Access**. Users want to be able to connect securely from a home or office to a private network in the cloud. Typically, the IP address of the connecting client is dynamic and cannot be preconfigured on the VPN server. **Site to Site**. In this scenario, two private subnets are connected over the public Internet with a secure VPN tunnel. The cloud user's subnet (for example, an office network) is connected through a gateway to the network in the cloud. The address of the user's gateway must be preconfigured on the VPN server in the cloud. Note that although L2TP-over-IPsec can be used to set up Site-to-Site VPNs, this is not the primary intent of this feature. For more information, see ":ref:`setting-s2s-vpn-conn`". Add the username and the corresponding password of the user you wanted to add. All the VPCs that you have created for the account is listed in the page. CIDR Click Add. Click OK to confirm. The IPsec key is displayed in a pop-up window. Click Source NAT IP address. Click View IP Addresses. Click one of the displayed IP address names. Click the Configure button of the VPC. Click the Enable VPN button. |vpn-icon.png| Click the Source NAT IP. Click the name of the network you want to work with. CloudStack account owners can create virtual private networks (VPN) to access their virtual machines. If the guest network is instantiated from a network offering that offers the Remote Access VPN service, the virtual router (based on the System VM) is used to provide the service. CloudStack provides a L2TP-over-IPsec-based remote access VPN service to guest virtual networks. Since each network gets its own virtual router, VPNs are not shared across the networks. VPN clients native to `Windows, Mac OS X <networking/using_remote_access.html>`_ and iOS can be used to connect to the guest networks. The account owner can create and manage users for their VPN. CloudStack does not use its account database for this purpose but uses a separate table. The VPN user database is shared across all the VPNs created by the account owner. All VPN users get access to all VPNs created by the account owner. Configuring Remote Access VPN Configuring Remote Access VPN in VPC For each tier, the following options are displayed: In the Router node, select Public IP Addresses. In the Select view, select VPC. In the left navigation, click Global Settings. In the left navigation, click Network. Internal LB Log in as a user or administrator to the CloudStack UI. Log in to the CloudStack UI as an administrator or end user. Make sure that not all traffic goes through the VPN. That is, the route installed by the VPN should be only for the guest network and not for all traffic. Network ACL Lists Now, you need to add the VPN users. On enabling Remote Access VPN on a VPC, any VPN client present outside the VPC can access VMs present in the VPC by using the Remote VPN connection. The VPN client can be present anywhere except inside the VPC on which the user enabled the Remote Access VPN service. Private Gateways Public IP Addresses Public LB IP Remote Access VPN Repeat the same steps to add the VPN users. Select the VPN tab. Set the following global configuration parameters. Site-to-Site VPNs Static NAT The IP Addresses page is displayed. The IPsec key is displayed in a popup window. The following router information is displayed: To enable VPN for a VPC: To enable VPN for a particular network: To set up VPN for the cloud: Virtual Machines remote.access.vpn.client.ip.range - The range of IP addresses to be allocated to remote access VPN clients. The first IP in the range is used by the VPN server. remote.access.vpn.psk.length - Length of the IPSec key. remote.access.vpn.user.limit - Maximum number of VPN users per account. Project-Id-Version: Apache CloudStack Administration RTD
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-22 13:55+0200
PO-Revision-Date: 2014-06-30 12:06+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: fr
Language-Team: French (http://www.transifex.com/ke4qqq/apache-cloudstack-administration-rtd/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 **Road Warrior / Remote Access**. Users want to be able to connect securely from a home or office to a private network in the cloud. Typically, the IP address of the connecting client is dynamic and cannot be preconfigured on the VPN server. **Site to Site**. In this scenario, two private subnets are connected over the public Internet with a secure VPN tunnel. The cloud user's subnet (for example, an office network) is connected through a gateway to the network in the cloud. The address of the user's gateway must be preconfigured on the VPN server in the cloud. Note that although L2TP-over-IPsec can be used to set up Site-to-Site VPNs, this is not the primary intent of this feature. For more information, see ":ref:`setting-s2s-vpn-conn`". Add the username and the corresponding password of the user you wanted to add. All the VPCs that you have created for the account is listed in the page. CIDR Click Add. Click OK to confirm. The IPsec key is displayed in a pop-up window. Click Source NAT IP address. Cliquez sur Voir les adresses IP. Click one of the displayed IP address names. Click the Configure button of the VPC. Click the Enable VPN button. |vpn-icon.png| Click the Source NAT IP. Click the name of the network you want to work with. CloudStack account owners can create virtual private networks (VPN) to access their virtual machines. If the guest network is instantiated from a network offering that offers the Remote Access VPN service, the virtual router (based on the System VM) is used to provide the service. CloudStack provides a L2TP-over-IPsec-based remote access VPN service to guest virtual networks. Since each network gets its own virtual router, VPNs are not shared across the networks. VPN clients native to `Windows, Mac OS X <networking/using_remote_access.html>`_ and iOS can be used to connect to the guest networks. The account owner can create and manage users for their VPN. CloudStack does not use its account database for this purpose but uses a separate table. The VPN user database is shared across all the VPNs created by the account owner. All VPN users get access to all VPNs created by the account owner. Configuring Remote Access VPN Configuring Remote Access VPN in VPC For each tier, the following options are displayed: In the Router node, select Public IP Addresses. Dans la vue de Sélection, choisissez VPC. In the left navigation, click Global Settings. In the left navigation, click Network. Internal LB Log in as a user or administrator to the CloudStack UI. Log in to the CloudStack UI as an administrator or end user. Make sure that not all traffic goes through the VPN. That is, the route installed by the VPN should be only for the guest network and not for all traffic. Network ACL Lists Now, you need to add the VPN users. On enabling Remote Access VPN on a VPC, any VPN client present outside the VPC can access VMs present in the VPC by using the Remote VPN connection. The VPN client can be present anywhere except inside the VPC on which the user enabled the Remote Access VPN service. Private Gateways Public IP Addresses Public LB IP Remote Access VPN Repeat the same steps to add the VPN users. Select the VPN tab. Set the following global configuration parameters. Site-to-Site VPNs Static NAT The IP Addresses page is displayed. The IPsec key is displayed in a popup window. The following router information is displayed: To enable VPN for a VPC: To enable VPN for a particular network: To set up VPN for the cloud: Virtual Machines remote.access.vpn.client.ip.range - The range of IP addresses to be allocated to remote access VPN clients. The first IP in the range is used by the VPN server. remote.access.vpn.psk.length - Length of the IPSec key. remote.access.vpn.user.limit - Maximum number of VPN users per account. 