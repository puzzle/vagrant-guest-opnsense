# -*- encoding: utf-8 -*-
# frozen_string_literal: true
require File.expand_path('./lib/vagrant-guest-opnsense/version', __dir__ )

Gem::Specification.new do |spec|
  spec.name          = "vagrant-guest-opnsense"
  spec.version       = VagrantPlugins::GuestOPNsense::VERSION
  spec.authors       = ["Fabio Bertagna"]
  spec.email         = ["bertagna@puzzle.ch"]

  spec.summary       = %q{This is a Vagrant plugin adding support for OPNsense guests.}
  spec.homepage      = "https://github.com/puzzle/vagrant-guest-opnsense"
  spec.license       = "GPL-3.0"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.require_paths = ['lib']
  spec.metadata= {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => "https://github.com/puzzle/vagrant-guest-opnsense"
  }

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  end

end
