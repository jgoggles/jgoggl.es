# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jgoggles_session',
  :secret      => 'd04ca7afba682b649be3d42c8018b6c511a1fb7d8d49da47e8035eddaca96af2332ffa9ff2d8fb9a20d9dd539287484488f3106103b4c97d40cd8c48d1970b22'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
