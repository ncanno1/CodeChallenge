#used to get the public key
require 'OpenSSL'

#gets the message as the first argument given when the file is run
message = ARGV.first

#gets the public key from the file generated using OpenSSL
pubkey = OpenSSL::PKey::RSA.new File.read 'public.pem'

puts message
