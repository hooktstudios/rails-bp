raise "Can't deploy with boilerplate. Fix me in config/deploy.rb"
require 'rubygems'
require "bundler/capistrano"
load 'config/capistrano-recipes/deploy'
load 'config/capistrano-recipes/utils/unicorn'

set :capistrano_extensions, [:git, :mysql, :rails, :unicorn, :servers]

set :scm, :git
set :application, "TODO"
set :repository,  "TODO"
set :user, "TODO"
set :deploy_via, :remote_cache
set :use_sudo, false
ssh_options[:forward_agent] = true

set :git_enable_submodules, 1

set :shared_children, %w{ log public/system tmp/cache tmp/sessions tmp/sockets tmp/pids }

set :copy_exclude, %w( .git .gitignore )

namespace :deploy do
  desc "Link all the config files to the shard directory"
  task :link_configs do
    run "ln -sf #{File.join(shared_path, 'config', 'database.yml')} #{File.join(latest_release, 'config')}"
    run "ln -sf #{File.join(shared_path, 'config', 'unicorn.rb')} #{File.join(latest_release, 'config')}"
    shared_children.each do |shared_child|
      run "ln -sf #{File.join(shared_path, shared_child)} #{File.join(latest_release, shared_child)}"
    end
  end
end

after 'deploy:setup' do
  run "for dir in cache sessions sockets; do mkdir -p #{shared_path}/tmp/$dir; done"

  # Looks like Capistrano really wants current/tmp/pids to symlink to shared/pids!
  run "mkdir -p #{shared_path}/tmp/pids && touch #{shared_path}/tmp/pids/unicorn.pid"
end

before "deploy:assets:precompile", "deploy:link_configs"

# Will create the .bundle file, so bundler will know where to take the local gems in the shared path
after 'deploy', 'bundle:install'

# Unicorn
after 'deploy:start', 'unicorn:start'
after 'deploy:stop', 'unicorn:stop'
after 'deploy:restart', 'unicorn:restart'

# Clean up old revisions
after 'deploy', 'deploy:cleanup'
