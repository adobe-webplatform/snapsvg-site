task :deploy do 
  system 'git stash'
  system 'git checkout gh-pages'
  system 'git pull origin gh-pages'
  system 'rake deploy'
  system 'git checkout master'
  system 'git stash pop'
end