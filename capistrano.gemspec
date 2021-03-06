require './lib/capistrano/version'

Gem::Specification.new do |s|

  s.name = 'capistrano'
  s.version = PKG_VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = <<-DESC.strip.gsub(/\n\s+/, " ")
    Capistrano is a framework and utility for executing commands in parallel
    on multiple remote machines, via SSH. The primary goal is to simplify and
    automate the deployment of web applications.
  DESC

  s.files = Dir.glob("{bin,lib,examples,test}/**/*") + %w(README MIT-LICENSE CHANGELOG THANKS)
  s.require_path = 'lib'
  s.autorequire = 'capistrano'

  s.bindir = "bin"
  s.executables << "cap"

  s.add_dependency 'rake', ">= 0.7.0"

  s.add_dependency 'net-ssh', ">= #{Capistrano::Version::MINIMUM_SSH_REQUIRED.join(".")}", "< #{Capistrano::Version::MAXIMUM_SSH_REQUIRED.join('.')}"
  s.add_dependency 'net-sftp', ">= #{Capistrano::Version::MINIMUM_SFTP_REQUIRED.join(".")}", "< #{Capistrano::Version::MAXIMUM_SFTP_REQUIRED.join('.')}"

  s.author = "Jamis Buck"
  s.email = "jamis@37signals.com"
  s.homepage = "http://www.rubyonrails.org"

end
