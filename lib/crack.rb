require_relative 'loader'

message_location = ARGV[0]
crack_path = ARGV[1]
date = ARGV[2]

message = File.open(message_location, "r").read
crack = Enigma.new.crack(message, date)


cracked_file = File.open(crack_path, "w")
cracked_file.write(crack[:decryption])
cracked_file.close

puts "Created file at #{crack_path} with the cracked key #{crack[:key]} and date #{crack[:date]}"
