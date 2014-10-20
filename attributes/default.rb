if node['platform_family'] == 'mac_os_x'
  case node['platform_version'].split('.')[1].to_i
  when 4
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.2-10.4-Tiger.dmg'
    default['macports']['checksum'] = 'edf5fc3995c2daf0ff16180e865a072b817d6e83c87107f52a6adba4e61d7f2c'
  when 5
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.2-10.5-Leopard.dmg'
    default['macports']['checksum'] = 'c7aea626009fa4a1a07b5fdce7ac01c94257701052387c6ee5d10df666c07a4b'
  when 6
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.2-10.6-SnowLeopard.pkg'
    default['macports']['checksum'] = 'a830e26a1e72038a38bc807f4276ff6f503717a64531ae15a18bb9d5db165fcc'
  when 7
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.2-10.7-Lion.pkg'
    default['macports']['checksum'] = '3c32cbcd7d2fdb91326ce788dcfb247c0a7b23984bacd9cd85b46286b65daa41'
  when 8
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.2-10.8-MountainLion.pkg'
    default['macports']['checksum'] = 'd4648634b571ada1f81cdc5583a48d0ceed1ef55ce5a2de0bdaaaf4b570b77f0'
  when 9
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.2-10.9-Mavericks.pkg'
    default['macports']['checksum'] = 'e47cab9b36543a4f9a1f8ea99ef34558bed08b8f8f5dc619b278a061c9daf3af'
  when 10
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.2-10.10-Yosemite.pkg'
    default['macports']['checksum'] = '70a5b06600136f69a24c86ffaf7c4a86303e42ec4e447182cdda1cf2cf6f8a87'
  else
    raise "Unsupported platform version #{node['platform_version']}"
  end
end
