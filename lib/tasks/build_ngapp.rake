namespace :ngapp do
  desc "run 'grunt build' and copy the dist to public dir"
  task :build do
    system('grunt build --gruntfile ngapp/Gruntfile.js')
    system('rm -rf public/*')
    system('cp -r ngapp/dist/ public/')
  end
end
