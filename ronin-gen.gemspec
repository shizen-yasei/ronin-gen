# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ronin-gen}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Postmodern"]
  s.date = %q{2010-04-13}
  s.default_executable = %q{ronin-gen}
  s.description = %q{Ronin Gen is a Ruby library for Ronin that provides various generators.}
  s.email = %q{postmodern.mod3@gmail.com}
  s.executables = ["ronin-gen"]
  s.extra_rdoc_files = [
    "ChangeLog.md",
     "README.md"
  ]
  s.files = [
    ".gitignore",
     ".specopts",
     ".yardopts",
     "COPYING.txt",
     "ChangeLog.md",
     "README.md",
     "Rakefile",
     "bin/ronin-gen",
     "data/ronin/gen/library/.specopts",
     "data/ronin/gen/library/.yardopts.erb",
     "data/ronin/gen/library/COPYING.txt",
     "data/ronin/gen/library/ChangeLog.md.erb",
     "data/ronin/gen/library/README.md.erb",
     "data/ronin/gen/library/Rakefile.erb",
     "data/ronin/gen/library/bin/ronin-command.erb",
     "data/ronin/gen/library/bin/ronin-example.erb",
     "data/ronin/gen/library/lib/ronin/_license.erb",
     "data/ronin/gen/library/lib/ronin/example.rb.erb",
     "data/ronin/gen/library/lib/ronin/example/version.rb.erb",
     "data/ronin/gen/library/lib/ronin/gen/generators/generator.rb.erb",
     "data/ronin/gen/library/lib/ronin/ui/command_line/commands/command.rb.erb",
     "data/ronin/gen/library/spec/example/example_spec.rb.erb",
     "data/ronin/gen/library/spec/spec_helper.rb.erb",
     "data/ronin/gen/platform/Rakefile.erb",
     "data/ronin/gen/platform/extension.rb",
     "data/ronin/gen/platform/spec/spec_helper.rb",
     "data/ronin/gen/platform/tasks/spec.rb",
     "data/ronin/gen/platform/tasks/yard.rb.erb",
     "lib/ronin/gen.rb",
     "lib/ronin/gen/config.rb",
     "lib/ronin/gen/dir_generator.rb",
     "lib/ronin/gen/exceptions.rb",
     "lib/ronin/gen/exceptions/unknown_generator.rb",
     "lib/ronin/gen/file_generator.rb",
     "lib/ronin/gen/gen.rb",
     "lib/ronin/gen/generatable.rb",
     "lib/ronin/gen/generator.rb",
     "lib/ronin/gen/generators.rb",
     "lib/ronin/gen/generators/extension.rb",
     "lib/ronin/gen/generators/library.rb",
     "lib/ronin/gen/generators/overlay.rb",
     "lib/ronin/gen/version.rb",
     "lib/ronin/ui/command_line/commands/gen.rb",
     "ronin-gen.gemspec",
     "spec/gen/classes/basic_generator.rb",
     "spec/gen/classes/dir_generator.rb",
     "spec/gen/classes/file_generator.rb",
     "spec/gen/classes/templated_generator.rb",
     "spec/gen/classes/touch_generator.rb",
     "spec/gen/gen_spec.rb",
     "spec/gen/generator_spec.rb",
     "spec/gen/generators/extension_spec.rb",
     "spec/gen/generators/overlay_spec.rb",
     "spec/gen/helpers/static.rb",
     "spec/gen/helpers/static/generators/templated.txt.erb",
     "spec/helpers/database.rb",
     "spec/spec_helper.rb"
  ]
  s.has_rdoc = %q{yard}
  s.homepage = %q{http://github.com/ronin-ruby/ronin-gen}
  s.licenses = ["GPL-2"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A Ruby library for Ronin that provides various generators.}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/gen/gen_spec.rb",
     "spec/gen/generators/overlay_spec.rb",
     "spec/gen/generators/extension_spec.rb",
     "spec/gen/helpers/static.rb",
     "spec/gen/generator_spec.rb",
     "spec/gen/classes/basic_generator.rb",
     "spec/gen/classes/templated_generator.rb",
     "spec/gen/classes/dir_generator.rb",
     "spec/gen/classes/touch_generator.rb",
     "spec/gen/classes/file_generator.rb",
     "spec/helpers/database.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<open_namespace>, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<data_paths>, ["~> 0.2.1"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.13.0"])
      s.add_runtime_dependency(%q<ronin>, ["~> 0.4.0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.5.3"])
    else
      s.add_dependency(%q<open_namespace>, ["~> 0.2.0"])
      s.add_dependency(%q<data_paths>, ["~> 0.2.1"])
      s.add_dependency(%q<thor>, ["~> 0.13.0"])
      s.add_dependency(%q<ronin>, ["~> 0.4.0"])
      s.add_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.5.3"])
    end
  else
    s.add_dependency(%q<open_namespace>, ["~> 0.2.0"])
    s.add_dependency(%q<data_paths>, ["~> 0.2.1"])
    s.add_dependency(%q<thor>, ["~> 0.13.0"])
    s.add_dependency(%q<ronin>, ["~> 0.4.0"])
    s.add_dependency(%q<rspec>, ["~> 1.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.5.3"])
  end
end

