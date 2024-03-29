options = {
  "Selection [COPY]" => 'grim -g "$(slurp)" - | wl-copy',
  "Selection [COPY] (wait 5s)" => 'grim -g "$(slurp; sleep 5)" - | wl-copy',
  "Selection [COPY] (wait 5s & wait 5s after)" => 'grim -g "$(sleep 5; slurp; sleep 5)" - | wl-copy',
  "Selection [SAVE]" => 'grim -g "$(slurp)" - >> ~/screenshots/screen_$(date +%y-%b-%d_%k-%M-%S).png',
  "Fullscreen [SAVE]" => 'grim - >> ~/screenshots/screen_$(date +%y-%b-%d_%k-%M-%S).png'
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
