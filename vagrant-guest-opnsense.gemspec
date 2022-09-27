$LOAD_PATH.unshift File.expand_path('./lib', __dir__)
require 'vagrant-guests-opnsense/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-guest-opnsense"
  spec.version       = VagrantPlugins::GuestOPNsense::VERSION
  spec.authors       = ["Fabio Bertagna"]
  spec.email         = ["bertagna@puzzle.ch"]

  spec.summary       = %q{This is a Vagrant plugin adding support for OPNsense guests.}
  spec.homepage      = "https://github.com/puzzle/vagrant-guest-opnsense"
  spec.license       = "GNU"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/puzzle/vagrant-guest-opnsense"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
