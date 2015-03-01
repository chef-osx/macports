MacPorts Cookbook
=================

Installs the MacPorts system.

Requirements
------------

#### Platforms

Mac OS X 10.4-10.10

#### Cookbooks

* `dmg`
* `mac_os_x`

Attributes
----------

#### macports::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['macports']['url']</tt></td>
    <td>String</td>
    <td>where to retrieve either the DMG or PKG for MacPorts</td>
    <td>depends on platform_version</td>
  </tr>
  <tr>
    <td><tt>['macports']['checksum']</tt></td>
    <td>String</td>
    <td>checksum for foregoing package</td>
    </td>
  </tr>
</table>

Usage
-----
#### macports::default

The default recipe will install MacPorts, either using a DMG package
(for Mac OS X =< 10.4) or a PKG (for Mac OS X >= 10.5).

To actually use MacPorts, you will need to run `/opt/local/bin/port selfupdate`
to download the latest version of the MacPorts database.

Once MacPorts is installed on a system, Chef's built-in `package` resource
can be used; however, you must ensure that `/opt/local/bin` is in Chef's
path. This can be accomplished with a directive such as

```ruby
ENV['PATH'] += ':/opt/local/bin'
```

in Chef's `client.rb`.

License and Authors
-------------------

* Author: Julian C. Dunn (<jdunn@aquezada.com>)
* Copyright: 2013-2014 Julian C. Dunn

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
