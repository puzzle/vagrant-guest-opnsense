require 'vagrant/util/template_renderer'

module VagrantPlugins
  module GuestOPNsense
    # A basic Vagrant system implementation for "OPNsense".
    class Guest < Vagrant.plugin("2", :guest)
      def detect?(machine)
        machine.communicate.test("opnsense-version", {shell: "sh"})
      end
    end
  end
end
