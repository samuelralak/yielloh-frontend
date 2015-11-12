require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
	importer :gmail, ENV['GMAIL_CLIENT_ID'], ENV['GMAIL_CLIENT_SECRET'], {:redirect_path => "/oauth2callback"}
	importer :hotmail, ENV['HOTMAIL_CLIENT_ID'], ENV['HOTMAIL_CLIENT_SECRET'], {:redirect_path => "/oauth2callback"}
  	# importer :gmail, "client_id", "client_secret", {:redirect_path => "/oauth2callback", :ssl_ca_file => "/etc/ssl/certs/curl-ca-bundle.crt"}
  	# importer :yahoo, "consumer_id", "consumer_secret", {:callback_path => '/callback'}
  	# importer :linkedin, "consumer_id", "consumer_secret", {:redirect_path => "/oauth2callback", :state => '<long_unique_string_value>'}
  	# importer :hotmail, "client_id", "client_secret"
  	# importer :facebook, "client_id", "client_secret"
end