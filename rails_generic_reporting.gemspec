$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_generic_reporting/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_generic_reporting"
  s.version     = RailsGenericReporting::VERSION
  s.authors     = ["Sia. S."]
  s.email       = ["sia.s.saj@gmail.com"]
  s.homepage    = "http://www.github.com/quazimodo/rails_generic_reporting"
  s.summary     = "Add generic reporting to models."
  s.description = "Add generic reporting to models."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.0.beta1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "spin"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-spin"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "factory_girl_rails"

end
