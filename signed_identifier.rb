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
    #signature needs to be encoded to UTF-8 so it can be properly converted to JSON format
    #if a character is invalid or undefined it is replaced with '?'
    @signature.to_s.encode('UTF-8', { :invalid => :replace,
                                      :undef   => :replace,
                                      :replace => '?' })
  end

  def pubkey
    @pubkey.to_s
  end

  def to_hash
    {
      "message": message,
      "signature": signature,
      "pubkey": pubkey
    }
  end
end
