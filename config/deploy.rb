require "rvm/capistrano"
require "bundler/capistrano"

set :application, 'FAMA'
set :repo_url, 'git@github.com:TafDev/FAMA.git'


set :ssh_options, {
  forward_agent: true,
  auth_methods: ["publickey"],
  keys: ["#{Dir.home}/.ssh/fama.pem"]
}
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/application.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :keep_releases, 3

namespace :deploy do

  # Not needed if using capistrano-passenger gem/recipe
  # desc 'Restart application'
  # task :restart do
  #   on roles(:app), in: :sequence, wait: 5 do
  #     execute :touch, release_path.join('tmp/restart.txt')
  #   end
  # end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end


set :deploy_to, '/home/deploy/famaphotobooths'