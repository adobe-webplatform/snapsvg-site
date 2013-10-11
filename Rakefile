task :deploy do 
  # print 'Note: everything must be checked in before you can proceed'
  system 'jekyll build'
  system 'git stash'
  system 'git checkout gh-pages'
  system 'mv output/* ./'
  system 'git add .'
  system 'git commit -m "updating gh-pages"'
  system 'git push origin gh-pages'
  system 'git checkout master'
  system 'git stash pop'

  print 'done!'
  # system 'git checkout '
end
