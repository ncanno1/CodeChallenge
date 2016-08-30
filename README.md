# CodeChallenge

This is a simple ruby script that takes a short message as a parameter, encodes it with a private key, and returns a JSON element containing the message, the signature, and the private key. The key pair was generated using OpenSSL.

To run the script use the following command:
ruby main.rb "your message here"
When prompted for the PEM pass phrase enter: password

Testing:
The testing is incomplete (because I had trouble figuring out the setup process for the tests).
If The tests were to be completed, to run them you would use the following command:
ruby test.rb
