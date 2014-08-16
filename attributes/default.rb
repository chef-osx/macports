if node['platform_family'] == 'mac_os_x'
  case node['platform_version'].split('.')[1].to_i
  when 4
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.4-Tiger.dmg'
    default['macports']['checksum'] = 'd171c5b3302bf1cb1c3122978fe260b5fd994e00ba12a434b649fa297c8f70cc'
  when 5
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.5-Leopard.dmg'
    default['macports']['checksum'] = '9bc34ff5d825d6092caac7320c9b99ab4a11dfb3f29f647570e226e83bf4a7ee'
  when 6
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.6-SnowLeopard.pkg'
    default['macports']['checksum'] = '5a573e129ef69980e50aed21903b0ff8a3d875701f2d74af45b264639d3ca48f'
  when 7
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.7-Lion.pkg'
    default['macports']['checksum'] = 'fe231f18af67b404bf84effe8d479f22685db38a920e69b34d04f20aace3cc31'
  when 8
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.8-MountainLion.pkg'
    default['macports']['checksum'] = 'd10bf4a27f89709501e1370d7d80f415eaf16bae23fd9ff3d4e96f86afdf8cd6'
  when 9
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.9-Mavericks.pkg'
    default['macports']['checksum'] = '2df01bf88e1e3de32ada0f42a8a46fb992093baee62f9d911fa3ae3ee895d471'
  when 10
    # Not yet officially supported, let's cheat and use the 10.9 one for now
    default['macports']['url'] = 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.9-Mavericks.pkg'
    default['macports']['checksum'] = '2df01bf88e1e3de32ada0f42a8a46fb992093baee62f9d911fa3ae3ee895d471'
  else
    raise "Unsupported platform version #{node['platform_version']}"
  end
end
