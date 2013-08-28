# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#PROTECTED
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		#Use the existing token
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Twitterfy::Application.config.secret_key_base = '33def802cbf260cfa89164a1ea83c2ee38ec68f27c791dd38d33e56acc3d4e79f34253a0942affb167101f141ef00dfb2b0b40b910f2e7deac8cf7a3ce8303df'
