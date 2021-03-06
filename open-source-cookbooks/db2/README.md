# DB2 cookbook

Requirements
------------
#### Chef
- Chef 12+

#### platforms
- Red Hat Enterprise Linux 6+
- Ubuntu 12.04+
- SUSE 12

#### Cookbooks
- selinux
- ntp

Attributes
----------

#### required attributes
You need to set installer_url attribute or installer_path attribute of db2 installer file, not both.
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['db2']['installer_url']</tt></td>
    <td>DB2 download URL</td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['installer_path']</tt></td>
    <td>Local Path of the installation file</td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

#### product
You can set product attribute to one of this values:
- DB2_SERVER_EDITION
- EXPRESS_C

#### installer
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['db2']['product']</tt></td>
    <td>String</td>
    <td><tt>DB2_SERVER_EDITION</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['version']</tt></td>
    <td>String</td>
    <td><tt>10.5.0.3</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['installer_log']</tt></td>
    <td>String</td>
    <td><tt>/tmp/db2setup.log</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['nlpack_url']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['language']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['codepage']</tt></td>
    <td>Integer</td>
    <td><tt>1208</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['install_type']</tt></td>
    <td>String</td>
    <td><tt>TYPICAL</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['sample_database']</tt></td>
    <td>Boolean</td>
    <td><tt>false</tt></td>
  </tr>
</table>

#### instance
<table>
  <tr>
    <td><tt>['db2']['instance']['prefix']</tt></td>
    <td>String</td>
    <td><tt>DB2_INST</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['name']</tt></td>
    <td>String</td>
    <td><tt>db2inst1</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['uid']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['group']</tt></td>
    <td>String</td>
    <td><tt>db2iadm1</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['gid']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['home']</tt></td>
    <td>String</td>
    <td><tt>'/home/' + ['db2']['instance']['name']</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['password']</tt></td>
    <td>String</td>
    <td><tt>db2inst1</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['port']</tt></td>
    <td>Integer</td>
    <td><tt>50000</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['fenced_name']</tt></td>
    <td>String</td>
    <td><tt>db2fenc1</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['fenced_uid']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['fenced_group']</tt></td>
    <td>String</td>
    <td><tt>db2fsdm1</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['fenced_gid']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['fenced_home']</tt></td>
    <td>String</td>
    <td><tt>'/home/' + ['db2']['instance']['fenced_name']</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['instance']['fenced_password']</tt></td>
    <td>String</td>
    <td><tt>db2fenc1</tt></td>
  </tr>
</table>

#### DB2 Administration Server(DAS) user
<table>
  <tr>
    <td><tt>['db2']['das_name']</tt></td>
    <td>String</td>
    <td><tt>dasusr1</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['das_uid']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['das_group']</tt></td>
    <td>String</td>
    <td><tt>dasadm1</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['das_gid']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['das_home']</tt></td>
    <td>String</td>
    <td><tt>'/home/' + ['db2']['das_name']</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['das_password']</tt></td>
    <td>String</td>
    <td><tt>dasusr1</tt></td>
  </tr>
</table>

#### first database
if you want to create a database, you'll need to set the 'name' attribute.
<table>
  <tr>
    <td><tt>['db2']['database']['name']</tt></td>
    <td>String</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['database']['codeset']</tt></td>
    <td>String</td>
    <td><tt>UTF-8</tt></td>
  </tr>
  <tr>
    <td><tt>['db2']['database']['territory']</tt></td>
    <td>String</td>
    <td><tt>JP</tt></td>
  </tr>
</table>