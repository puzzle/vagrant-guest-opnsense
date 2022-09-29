# frozen_string_literal: true

begin
  require 'vagrant'
rescue LoadError
  raise 'The Vagrant Libvirt plugin must be run within Vagrant.'
end

module VagrantPlugins
  module GuestOPNsense
    class Plugin < Vagrant.plugin("2")
      name "OPNsense guest"
      description "OPNsense guest support."

      guest(:opnsense, :bsd) do
        require_relative "guest"
        Guest
      end

      guest_capability(:opnsense, :change_host_name) do
        require_relative "cap/change_host_name"
        Cap::ChangeHostName
      end
    end
  end
end
