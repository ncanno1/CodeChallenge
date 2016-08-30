#used to get the public key
require 'OpenSSL'

#gets the message as the first argument given when the file is run
message = ARGV.first

#gets the public key from the file generated using OpenSSL
pubkey = OpenSSL::PKey::RSA.new File.read 'public.pem'

#creates digest, private key, then gets signature
digest = OpenSSL::Digest::SHA256.new
private_key = OpenSSL::PKey::RSA.new File.read 'private.pem'
signature = private_key.sign(digest, message)

puts message
puts pubkey
puts signature
