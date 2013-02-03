require 'capistrano_colors'
require 'bundler/capistrano'

require 'rvm/capistrano'
set :rvm_ruby_string, 'ruby-1.9.3-p194@rails-brakeman.com'

set :application, "rails-brakeman.com"
set :repository,  "git@github.com:flyerhzm/rails-brakeman.com.git"
set :rails_env, "production"
set :deploy_to, "/home/huangzhi/sites/rails-brakeman.com/production"
set :user, "huangzhi"
set :use_sudo, false

set :scm, :git

set :rake, "bundle exec rake"

role :web, "app.rails-brakeman.com"                          # Your HTTP server, Apache/etc
role :app, "app.rails-brakeman.com"                          # This may be the same as your `Web` server
role :db,  "db.rails-brakeman.com", primary: true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, roles: :app, except: { no_release: true } do
    migrate
    cleanup
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
