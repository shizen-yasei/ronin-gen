# -*- ruby -*-

require 'rubygems'
require 'hoe'
require 'hoe/signing'
require './tasks/yard.rb'

Hoe.spec('ronin-gen') do
  self.developer('Postmodern', 'postmodern.mod3@gmail.com')

  self.rspec_options += ['--colour', '--format', 'specdoc']

  self.readme_file = 'README.rdoc'
  self.history_file = 'History.rdoc'
  self.remote_rdoc_dir = 'docs/ronin-gen'

  self.extra_deps = [
    ['ronin', '>=0.3.1']
  ]

  self.extra_dev_deps = [
    ['rspec', '>=1.2.9'],
    ['yard', '>=0.5.2']
  ]

  self.spec_extras = {:has_rdoc => 'yard'}
end

# vim: syntax=Ruby
