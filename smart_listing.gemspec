$:.push File.expand_path("../lib", __FILE__)

require "smart_listing/version"

Gem::Specification.new do |s|
  s.name        = "smart_listing"
  s.version     = SmartListing::VERSION
  s.authors     = ["Sology"]
  s.email       = ["contact@sology.eu"]
  s.homepage    = "https://github.com/Sology/smart_listing"
  s.description = "Ruby on Rails data listing gem with built-in sorting, filtering and in-place editing."
  s.summary     = "SmartListing helps creating sortable lists of ActiveRecord collections with pagination, filtering and inline editing."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">=4.2.5"
  # TODO use vanilla javascript instead
  # Precompile the javascript before uploading to rubygems
  s.add_dependency "coffee-rails"
  s.add_dependency "kaminari"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "bootstrap-sass"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "pry"

  s.add_development_dependency "capybara"
  s.add_development_dependency "poltergeist"
  s.add_development_dependency "database_cleaner"
end
