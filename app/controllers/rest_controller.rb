require 'openssl'

class RestController < ApplicationController
$id = 0
def create

end

def generate_key
    key = OpenSSL::PKey::RSA.new 512
	open 'private_key.pem', 'w' do |io| io.write key.to_pem end
	open 'public_key.pem', 'w' do |io| io.write key.public_key.to_pem end

    $id += 1;
    puts "#{$id}"

end

end
