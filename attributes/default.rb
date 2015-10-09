if node['platform_family'] == 'mac_os_x'
  case node['platform_version'].split('.')[1].to_i
  when 4
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.3.3-10.4-Tiger.dmg'
    default['macports']['checksum'] = '9c9a4c42b36f800936bce69d5c4bf6c41cec6f489d683bd96bd1d00847e1308d'
  when 5
    default['macports']['url'] = 'http://downloads.sourceforge.net/project/macports/MacPorts/2.3.4/MacPorts-2.3.4-10.5-Leopard.dmg'
    default['macports']['checksum'] = 'd3aab3395fd20ffd4b40aaeaca63760821083ec57a8bba7a285a848c190b25bb'
  when 6
    default['macports']['url'] = 'http://downloads.sourceforge.net/project/macports/MacPorts/2.3.4/MacPorts-2.3.4-10.6-SnowLeopard.pkg'
    default['macports']['checksum'] = '76e8c60f0cf1c879cb111bcf621a4a8132abca7e21db1a0bad2eafa4489b16a6'
  when 7
    default['macports']['url'] = 'http://downloads.sourceforge.net/project/macports/MacPorts/2.3.4/MacPorts-2.3.4-10.7-Lion.pkg'
    default['macports']['checksum'] = '39c6c4f75543f8efa60f26fa67fa507cd8d72b0893a6382673f722c864ce8f25'
  when 8
    default['macports']['url'] = 'http://downloads.sourceforge.net/project/macports/MacPorts/2.3.4/MacPorts-2.3.4-10.8-MountainLion.pkg'
    default['macports']['checksum'] = '43c9b56dda623f897854d88c3f7747bd9ae4287fa12b16b1d5eb32f45417b2da'
  when 9
    default['macports']['url'] = 'http://downloads.sourceforge.net/project/macports/MacPorts/2.3.4/MacPorts-2.3.4-10.9-Mavericks.pkg'
    default['macports']['checksum'] = '4b0fd713e3887c5a0f2fa975f90b6818aeb35ec909931d0905c181085abef7f4'
  when 10
    default['macports']['url'] = 'http://downloads.sourceforge.net/project/macports/MacPorts/2.3.4/MacPorts-2.3.4-10.10-Yosemite.pkg'
    default['macports']['checksum'] = '453125fffb358c9547aab70fa39dc5404acc037c18d7b1d7488256e9e4374138'
  when 11
    default['macports']['url'] = 'http://downloads.sourceforge.net/project/macports/MacPorts/2.3.4/MacPorts-2.3.4-10.11-ElCapitan.pkg'
    default['macports']['checksum'] = '8c0b492032c796d766b76da3d1fda8dea732a6cc9056633a3509e3ff06b5e8d8'
  else
    fail "Unsupported platform version #{node['platform_version']}"
  end
end
