if node['platform_family'] == 'mac_os_x'
  case node['platform_version'].split('.')[1].to_i
  when 4
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.3-10.4-Tiger.dmg'
    default['macports']['checksum'] = '9c9a4c42b36f800936bce69d5c4bf6c41cec6f489d683bd96bd1d00847e1308d'
  when 5
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.3-10.5-Leopard.dmg'
    default['macports']['checksum'] = 'f2cf82b62e1795b13021f4d52d5074639337e29face37ef1017d0dc616cc8d4f'
  when 6
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.3-10.6-SnowLeopard.pkg'
    default['macports']['checksum'] = 'a76a827b982b93edf15cdb07ed11851052df67f0b4b792adf130e4dead1cf1e4'
  when 7
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.3-10.7-Lion.pkg'
    default['macports']['checksum'] = '990e4015749fae6132cdd450fb28b77095f4fb17f8622b54b5ecd4819f317c09'
  when 8
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.3-10.8-MountainLion.pkg'
    default['macports']['checksum'] = 'ef5ae9c9fbe1a84eb0b1a7b5bf7d4b6b0d763bb5739f84fce8b43e9e5c68d5a1'
  when 9
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.3-10.9-Mavericks.pkg'
    default['macports']['checksum'] = '30d35308cf3bf6b66e6ed489ae7d1012f6e465ec4b4349a5c26a959e9130b512'
  when 10
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.3-10.10-Yosemite.pkg'
    default['macports']['checksum'] = '7eb27ccbdf5cb61840494d954e8b56a9ee96c250d6c6c6ac887f0d80836d2d17'
  else
    raise "Unsupported platform version #{node['platform_version']}"
  end
end
