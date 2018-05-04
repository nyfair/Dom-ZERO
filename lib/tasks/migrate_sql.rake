namespace :db do
  desc 'Make migration with output'
  task(:migsql => :environment) do
    # Fucking IT who forbid me to modify db structure even don't know sql themselves! Thus we copy/paste sql here
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Rake::Task['db:migrate'].invoke
  end
end
