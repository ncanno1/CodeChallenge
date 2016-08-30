class SignedIdentifier
  def initialize(message, signature, pubkey)
    @message = message
    @signature = signature
    @pubkey = pubkey
  end
end
