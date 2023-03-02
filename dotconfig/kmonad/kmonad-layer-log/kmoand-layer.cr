require "option_parser"

OptionParser.parse do |parser|
  parser.banner = "Usage: kmonad-layer [arguments]"
  parser.on("-g", "--get", "get layer") do
    begin
      puts File.read("/dev/shm/kmonad-layer")
    rescue
      puts "default"
    end
  end
  parser.on("-s NAME", "--set NAME", "set layer") do |name|
    File.write("/dev/shm/kmonad-layer", name)
  end
  parser.on("-h", "--help", "Show this help") do
    puts parser
    exit
  end
  
  parser.invalid_option do |flag|
    STDERR.puts "ERROR: #{flag} is not a valid option."
    STDERR.puts parser
    exit(1)
  end
end
