$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jive_webhooks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
	s.name        = "jive_webhooks"
	s.version     = JiveWebhooks::VERSION
	s.authors     = ["Butch Marshall"]
	s.email       = ["butch.a.marshall@gmail.com"]
	s.homepage    = "https://github.com/butchmarshall/jive_webhooks"
	s.summary     = "Rails Engine for handling Jive webhooks."
	s.description = "Api endpoints for making your platform Jive ready."
	s.license     = "MIT"

	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

	s.add_dependency "rails", ">= 4.2.0"
	s.add_dependency "jive-add_on"
	s.add_dependency "jive-webhook"

	if RUBY_PLATFORM == 'java'
		s.add_development_dependency "jdbc-sqlite3", "> 0"
		s.add_development_dependency "activerecord-jdbcsqlite3-adapter", "> 0"
	else
		s.add_development_dependency "sqlite3", "> 0"
	end

	s.add_development_dependency "rspec-rails"
	s.add_development_dependency "factory_girl_rails"
	s.add_development_dependency "capybara"
	s.add_development_dependency "database_cleaner"
	s.add_development_dependency "webmock"
end
