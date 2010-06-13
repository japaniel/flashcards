# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flashcards_session',
  :secret      => 'eaca16fc1f70ff699e17be83518aedab3035a2a090a3ec6930c23fcdd18111f5f29b307fb226c210659f0cd3cd7b223c433444382f75132820c81ce4419b1b8e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
