options = {
  "Service: libvirt start" => 'pkexec systemctl start libvirtd',
  "Service: libvirt stop" => 'pkexec systemctl stop libvirtd',
  "Wireshark: USB monitor enable" => 'pkexec zsh -c "modprobe usbmon; chmod 777 /dev/usbmon*"',
  "Wireshark: USB monitor disable" => 'pkexec zsh -c "rmmod usbmon"',
  "PM_ Pulsemixer" => 'kitty pulsemixer',
  "1_ KB Layout: Toggle" => 'swaymsg "input type:keyboard xkb_switch_layout next"',
  "0_ Power: Set powerlimits (cpu, gpu)" => 'pkexec "/home/maze/dotfiles.git/wofi-scripts/infernobegone.sh"',

}

opt_string = ""
options.each do |k, v|
  opt_string += k + "\n"
end

opt_string.slice!((opt_string.length - 1))

dmenu = `echo "#{opt_string}" | wofi --dmenu`
dmenu = dmenu.split("\n")

#puts "there it goes: "
#puts dmenu[-1]
#puts "so this should run:"
puts "running: ", options[dmenu[-1]]
`#{options[dmenu[-1]]}`
