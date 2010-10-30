# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-quickfix-formatter}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andy Hartford"]
  s.date = %q{2010-10-30}
  s.description = %q{Provides a rspec formatter that outputs a file vim's quickfix feature will understand. This allows nice integration between rspec test failures and the vim editor.
}
  s.email = %q{hartforda@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     ".rvmrc",
     "Gemfile",
     "Gemfile.lock",
     "README.rdoc",
     "VERSION",
     "lib/rspec-quickfix-formatter.rb",
     "lib/spec/quickfix_formatter.rb"
  ]
  s.homepage = %q{http://github.com/ajh/rspec-quickfix-formatter}
  s.licenses = ["GPLv3"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Integrates rspec with vim's quickfix feature.}
  s.test_files = [
    "spec/rspec-quickfix-formatter_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, ["~> 1.2"])
    else
      s.add_dependency(%q<rspec>, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 1.2"])
  end
end

