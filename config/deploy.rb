# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

set :application, "FAMA"
set :repo_url, "git@github.com:TafDev/FAMA.git"

set :deploy_to, '/home/deploy/famaphotobooths'

# set :ssh_options, { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/famaphotobooths.pem) }
set :default_env, {
  path: "~/.rbenv/shims:~/.rbenv/bin:$PATH",
  AWS_ACCESS_KEY_ID: ENV['AWS_ACCESS_KEY_ID'],
  AWS_SECRET_ACCESS_KEY: ENV['AWS_SECRET_ACCESS_KEY']
  # SMTP_USERNAME: ENV['SMTP_USERNAME'],
  # SMTP_PASSWORD: ENV['SMTP_PASSWORD']
}
set :log_level, :debug

append :linked_files, "config/database.yml", "config/secrets.yml", "config/application.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
