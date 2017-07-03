$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "paper_trail_ui/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "paper_trail_ui"
  s.version     = PaperTrailUi::VERSION
  s.authors     = ["Nayef Muhiar"]
  s.email       = ["nayef@buttercloud.com"]
  s.homepage    = "https://github.com/buttercloud/paper_trail_ui"
  s.summary     = "Summary of PaperTrailUi."
  s.description = "Description of PaperTrailUi."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 4.2.5"
  s.add_dependency "will_paginate"
  s.add_dependency "ransack"

  s.add_dependency "paper_trail"
  s.add_dependency "haml-rails", ">= 0.9"
  s.add_dependency "jquery-rails"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "rspec-rails", "~> 3.5", ">= 3.5"
  s.add_development_dependency "postgresql"
end
