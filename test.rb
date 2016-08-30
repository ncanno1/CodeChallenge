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

  #hash should be generated in the proper format
  def test_hash_format

  end

  #JSON should be generated in the proper format
  def test_json_format

  end
end
