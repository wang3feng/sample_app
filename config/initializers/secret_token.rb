# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    File.read(token_file).chomp
   else
   	token = SecureRandom.hex(64)
   	File.write(token_file, token)
   	token
   end
end

SampleApp::Application.config.secret_key_base = 'c6d2a32670f2bb995a489ab7d4641449ade0eaa67d16383818c07f384c3cf3d1f1835168dbcd4abfe29c4cbd61a10d89ab1e3bd90300ad883b7f2d3b663ef675'
