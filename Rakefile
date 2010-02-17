desc "Installs emacs-config"
task :default => [:init_submodules, :create_link, :checkout_master] do
end

desc "Inits git submodules in order to install plugins"
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

desc "Points the link ~/.emacs.d to this directory"
task :create_link do
  system("rm -rf ~/.emacs.d")
  system("ln -s #{Dir.pwd} ~/.emacs.d")
end

desc "Checks out all submodules to master"
task :checkout_master do
  system("git submodule foreach 'git checkout master'")
  system("git submodule update")
end

def update_git_submodules
  system('git submodule update --init')
end

def go_back
  cd('..', :verbose => false)
  cd('..', :verbose => false)
end
