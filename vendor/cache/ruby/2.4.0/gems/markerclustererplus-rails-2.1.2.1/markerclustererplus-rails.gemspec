# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "markerclustererplus-rails/version"

Gem::Specification.new do |s|
  s.name        = "markerclustererplus-rails"
  s.version     = Markerclustererplus::Rails::VERSION
  s.authors     = ["RogerE"]
  s.email       = ["roger@webfokus.no"]
  s.homepage    = "https://github.com/RogerE/markerclustererplus-rails"
  s.summary     = "Use MarkerClustererPlus with Rails Asset Pipeline"
  s.description = "This gem provides the MarkerClustererPlus assets for your Rails application."

  s.rubyforge_project = "markerclustererplus-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
