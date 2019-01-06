require_relative 'loader'

message_location = ARGV[0]
decryption_path = ARGV[1]
key = ARGV[2]
date = ARGV[3]

message = File.open(message_location, "r").read
decryption = Enigma.new.decrypt(message, key, date)

decrypted_file = File.open(decryption_path, "w")
decrypted_file.write(decryption[:decryption])
decrypted_file.close

puts "Created file at '#{decryption_path}' with the key #{decryption[:key]} and date #{decryption[:date]}"
