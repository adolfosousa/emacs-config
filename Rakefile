task :default => :install

desc "Installs emacs-config"
task :install => [:init_submodules, :create_link]

desc "Inits git submodules in order to install plugins"
task :init_submodules do
  init_git_submodules
  cd('vendor/cedet/', :verbose => true)
  system('make MAKEINFO=echo')
  system('make install')
  go_back
  go_back
end

desc "Points the link ~/.emacs.d to this directory"
task :create_link do
  system("rm -rf ~/.emacs.d")
  system("ln -s #{Dir.pwd} ~/.emacs.d")
end

desc "Checks out all submodules to master and updates them"
task :update_submodules do
  system("git submodule foreach 'git checkout master && git pull origin master'")
end


private
def init_git_submodules
  system('git submodule update --init')
end

def go_back
  cd('..', :verbose => false)
end
