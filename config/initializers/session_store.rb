# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eikon_session',
  :secret      => '08603e21ca9db53db54df83a88ab1065d7d30899ea1eb9488c4b6c99862172ce2f45d8c6d451617e8795986757c3d58d17985b0205a56f7b74f90c81b7194d3a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
