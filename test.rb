require 'test/unit'
require 'OpenSSL'
require './main'

class TestMain < Test::Unit::TestCase
  def setup
    test = Main.new
    test.run("asdf")
  end

  #signature should be properly encoded to UTF-8
  def test_signature_encoding
    
  end
end
