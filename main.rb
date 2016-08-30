require 'OpenSSL' #used to get the public key
require './signed_identifier' #used for signed identifier object
require 'json' #used to return a json object

#gets the message as the first argument given when the file is run
message = ARGV.first

#gets the public key from the file generated using OpenSSL
pubkey = OpenSSL::PKey::RSA.new File.read 'public.pem'

#creates digest, private key, then gets signature
digest = OpenSSL::Digest::SHA256.new
private_key = OpenSSL::PKey::RSA.new File.read 'private.pem'
signature = private_key.sign(digest, message)

#create and initialize SignedIdentifier object
signed_identifier = SignedIdentifier.new(message, signature, pubkey)

puts signed_identifier.to_hash.to_json
