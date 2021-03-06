# Ronin Gen

* [Source](http://github.com/ronin-ruby/ronin-gen)
* [Issues](http://github.com/ronin-ruby/ronin-gen/issues)
* [Documentation](http://rubydoc.info/github/ronin-ruby/ronin-gen/frames)
* [Mailing List](http://groups.google.com/group/ronin-ruby)
* irc.freenode.net #ronin

## Description

Ronin Gen is a Ruby library for Ronin that provides various generators.

Ronin is a Ruby platform for exploit development and security research.
Ronin allows for the rapid development and distribution of code, exploits
or payloads over many common Source-Code-Management (SCM) systems.

## Features

* Provides {Ronin::Gen::FileGenerator}, a Thor based generator class that
  can be used to create new generators.
* Provides {Ronin::Gen::DirGenerator}, a Thor based generator that
  can be used to create new directory generators.
* Generators for creating new Ronin Repositories and Libraries.

## Synopsis

Generate a skeleton Ronin library:

    $ ronin-gen library PATH [options]

Generate a skeleton Overlay:

    $ ronin-gen repository PATH [options]

## Requirements

* [open_namespace](http://github.com/postmodern/open_namespace) ~> 0.3.0
* [data_paths](http://github.com/postmodern/data_paths) ~> 0.2.1
* [thor](http://github.com/wycats/thor) ~> 0.14.2
* [ronin-support](http://github.com/ronin-ruby/ronin-support) ~> 0.1.0
* [ronin](http://github.com/ronin-ruby/ronin) ~> 1.0.0

## Install

    $ sudo gem install ronin-gen

## License

Copyright (c) 2009-2011 Hal Brodigan (postmodern.mod3 at gmail.com)

This file is part of Ronin Gen.

Ronin Gen is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Ronin Gen is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Ronin Gen.  If not, see <http://www.gnu.org/licenses/>.
