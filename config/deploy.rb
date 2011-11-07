require "bundler/capistrano"

set :application, 'e3visa'
set :repository, `git config --get remote.origin.url`.chomp

set :deploy_to, "/srv/app"
set :deploy_via, :remote_cache

default_run_options[:pty] = true

set :use_sudo, false

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server 'live.jk', :app, :web, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
