require 'data_mapper'
require './app/bookmark_manager_app.rb'


task default: %[upgrade]
namespace :db do
  desc "Non-destructive data upgrade"
  task :upgrade do
    DataMapper.auto_upgrade!
  end

  desc "Non-destructive data upgrade"
  task :migrate do
    DataMapper.auto_migrate!
  end
end
