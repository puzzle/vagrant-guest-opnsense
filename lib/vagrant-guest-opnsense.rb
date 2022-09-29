# frozen_string_literal: true

require 'vagrant-guest-opnsense/plugin'

module VagrantPlugins
  module GuestOPNsense
    def self.source_root
      @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
    end
  end
end

begin
  require 'vagrant'
rescue LoadError
  raise 'The Vagrant Libvirt plugin must be run within Vagrant.'
end
