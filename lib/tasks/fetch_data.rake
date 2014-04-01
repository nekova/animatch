namespace :data do
  desc "run 'python get.py'"
  task :fetch do
    system('python ~/work/animax/scrape.py')
  end
end
