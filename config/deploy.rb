set :application, 'FAMA'
set :repo_url, 'git@github.com:TafDev/FAMA.git'

set :ssh_options, {
  forward_agent: true,
  auth_methods: ["publickey"],
  keys: ["#{Dir.home}/.ssh/fama.pem"]
}

set :deploy_to, '/home/deploy/famaphotobooths'