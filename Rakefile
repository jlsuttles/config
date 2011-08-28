namespace :install do
  desc "install everything"
  task :all => ["install:ack", "install:git", "install:irb", "install:vim", "install:zsh"]

  desc "install ack config"
  task :ack do
    install("ackrc")
  end

  desc "install git config"
  task :git do
    install("gitconfig.example", "gitignore")
  end

  desc "install irb config"
  task :irb do
    install("irbrc", "railsrc")
  end

  desc "install vim config"
  task :vim do
    install("vim", "vimrc", "gvimrc")
  end

  desc "install zsh config"
  task :zsh do
    install("zsh", "zshrc")
    mkdir_p "#{ENV["HOME"]}/bin/config"
  end
end

def install(*files)
  files.each do |file|
    if file.match(/(.*).example$/)
      src = "#{File.expand_path(".")}/#{file}"
      dest = "#{File.expand_path(".")}/#{$1}"

      cp src, dest
      file = $1
    end
    
    src = "#{File.expand_path(".")}/#{file}"
    dest = "#{ENV["HOME"]}/.#{file}"

    rm_rf dest if File.exists?(dest)
    ln_s src, dest
  end
end
