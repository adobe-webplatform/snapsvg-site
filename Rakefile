task :deploy do 
  system 'git pull origin master'
  system 'jekyll build'
  puts "Do you want to continue with deploy (Y/N)?"
  get_input
end

task :continue do
  puts "Deploying..."
  system 'git add .'
  system 'git commit -m "updating gh-pages"'
  system 'git push origin gh-pages'
  puts "Done!"
end

def get_input
  STDOUT.flush
  input = STDIN.gets.chomp
  case input.upcase
  when "Y"
    puts "going through with the task.."
    Rake::Task['continue'].invoke
  when "N"
    puts "aborting the task.."
  else
    puts "Please enter Y or N"
    get_input
  end
end 