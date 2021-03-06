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

require 'ronin/gen/file_generator'

module Ronin
  module Gen
    #
    # A {FileGenerator} class for creating Ruby files.
    #
    class SourceCodeGenerator < FileGenerator

      class_option :editor, :default => ENV['EDITOR']
      class_option :no_edit, :type => :boolean, :default => false

      #
      # Generates the source-code file and spawns a text-editor.
      #
      def self.generate(options={},arguments=[],&block)
        generator = super(options,arguments,&block)

        if (generator.options.no_edit? && generator.options.editor)
          system(generator.options.editor,generator.path)
        end
      end

    end
  end
end
