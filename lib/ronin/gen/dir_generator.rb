#
# Copyright (c) 2009-2011 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# This file is part of Ronin Gen.
#
# Ronin Gen is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Ronin Gen is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Ronin Gen.  If not, see <http://www.gnu.org/licenses/>.
#

require 'ronin/gen/generator'

require 'fileutils'

module Ronin
  module Gen
    #
    # A {Generator} class for creating directories.
    #
    class DirGenerator < Generator

      argument :path, :type => :string, :require => true

      #
      # Invokes the generator.
      #
      # @param [String] path
      #   The directory to generate within.
      #
      # @param [Hash] options
      #   Additional command-line options for the generator.
      #
      # @param [Array] arguments
      #   Additional command-line arguments for the generator.
      #
      # @example
      #   gen.generate('path/to/dir')
      #
      def self.generate(path,options={},arguments=[])
        super(options,[File.expand_path(path)] + arguments)
      end

      protected

      #
      # Initializes the generator.
      #
      # @param [Array] arguments
      #   Additional arguments for the generator.
      #
      # @param [Hash] options
      #   Options to pass to the generator.
      #
      # @param [Hash] config
      #   Additional configuration for the generator.
      #
      # @since 1.0.0
      #
      def initialize(arguments=[],options={},config={})
        super(arguments,options,config) do |gen|
          gen.destination_root = self.path
        end
      end

    end
  end
end
