class SignedIdentifier
  def initialize(message, signature, pubkey)
    @message = message
    @signature = signature
    @pubkey = pubkey
  end

  def message
    @message
  end

  def signature
    @signature
  end

  def pubkey
    @pubkey
  end
end
