desc "Installs emacs-config"
task :default => [:init_submodules, :create_link] do
end

desc "Init git submodules in order to install plugins"
task :init_submodules do
  update_git_submodules
  cd('vendor/rinari', :verbose => true)
  update_git_submodules
  go_back
  cd('vendor/cedet', :verbose => true)
  system('make MAKEINFO=echo')
  system('make install')
  go_back
end

desc "Create link to emacs-config directory"
task :create_link do
  system("sudo ln -s  #{Dir.pwd} ~/.test.d")
end

def update_git_submodules
  system('git submodule update --init')
end

def go_back
  cd('..')
  cd('..')
end
