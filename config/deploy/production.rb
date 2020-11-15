server '52.193.195.143', user: 'ec2-user', roles: %w{app db web}

# config.consider_all_requests_local = true

set :rails_env, "production"
set :unicorn_rack_env, "production"