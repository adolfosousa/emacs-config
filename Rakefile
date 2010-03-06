task :default => :install

desc "Installs emacs-config"
task :install => [:init_submodules, :create_link]

desc "Inits git submodules in order to install plugins"
task :init_submodules do
  init_git_submodules
  cd('vendor/rinari', :verbose => true)
  init_git_submodules
  go_back_twice
  cd('vendor/cedet', :verbose => true)
  system('make MAKEINFO=echo')
  system('make install')
  go_back_twice
end

desc "Points the link ~/.emacs.d to this directory"
task :create_link do
  system("rm -rf ~/.emacs.d")
  system("ln -s #{Dir.pwd} ~/.emacs.d")
end

desc "Checks out all submodules to master and updates them"
task :update_submodules do
  system("git submodule foreach 'git checkout master && git pull origin master'")
  FileUtils.mkdir_p "vendor/mustache"
  curl_mustache_el
end


private
def init_git_submodules
  system('git submodule update --init')
end

def go_back
  cd('..', :verbose => false)
end

def go_back_twice
  go_back
end

def curl_mustache_el
  system('curl http://github.com/defunkt/mustache/raw/master/contrib/mustache-mode.el -o vendor/mustache/mustache.el')
  duplicated_mustache_file = 'vendor/mustache/mustache.el.1'
  FileUtils.remove_file duplicated_mustache_file if File.exist?(duplicated_mustache_file)
end
