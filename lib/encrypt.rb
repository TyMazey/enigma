require_relative 'loader'

message_location = ARGV[0]
encryption_path = ARGV[1]

message = File.open(message_location, "r").read.gsub(/[^A-Za-z ]/,'')
encryption = Enigma.new.encrypt(message)

encrypted_file = File.open(encryption_path, "w")
encrypted_file.write(encryption[:encryption])
encrypted_file.close

puts "Created '#{encryption_path}' with the key #{encryption[:key]} and date #{encryption[:date]}"
