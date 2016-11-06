# -*- encoding: utf-8 -*-
# stub: record_tag_helper 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "record_tag_helper".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Heinemeier Hansson".freeze]
  s.date = "2016-03-01"
  s.description = "ActionView Record Tag Helpers".freeze
  s.email = "david@loudthinking.com".freeze
  s.homepage = "https://github.com/rails/record_tag_helper".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "ActionView Record Tag Helpers".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionview>.freeze, ["~> 5.x"])
      s.add_development_dependency(%q<actionpack>.freeze, ["~> 5.x"])
      s.add_development_dependency(%q<activemodel>.freeze, ["~> 5.x"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.4"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 1.1.0"])
    else
      s.add_dependency(%q<actionview>.freeze, ["~> 5.x"])
      s.add_dependency(%q<actionpack>.freeze, ["~> 5.x"])
      s.add_dependency(%q<activemodel>.freeze, ["~> 5.x"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.4"])
      s.add_dependency(%q<mocha>.freeze, ["~> 1.1.0"])
    end
  else
    s.add_dependency(%q<actionview>.freeze, ["~> 5.x"])
    s.add_dependency(%q<actionpack>.freeze, ["~> 5.x"])
    s.add_dependency(%q<activemodel>.freeze, ["~> 5.x"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.4"])
    s.add_dependency(%q<mocha>.freeze, ["~> 1.1.0"])
  end
end
