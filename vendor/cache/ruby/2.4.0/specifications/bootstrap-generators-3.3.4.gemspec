# -*- encoding: utf-8 -*-
# stub: bootstrap-generators 3.3.4 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap-generators".freeze
  s.version = "3.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["D\u00E9cio Ferreira".freeze]
  s.date = "2015-05-09"
  s.description = "Bootstrap-generators provides Twitter Bootstrap generators for Rails 4 (supported Rails >= 3.1). Checkout http://getbootstrap.com.".freeze
  s.email = ["decio.ferreira@decioferreira.com".freeze]
  s.homepage = "https://github.com/decioferreira/bootstrap-generators".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "bootstrap-generators".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Bootstrap-generators provides Twitter Bootstrap generators for Rails 4 (supported Rails >= 3.1).".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<railties>.freeze, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<railties>.freeze, [">= 3.1.0"])
  end
end
