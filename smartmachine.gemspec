# frozen_string_literal: true

version = File.read(File.expand_path("./SMARTMACHINE_VERSION", __dir__)).strip

Gem::Specification.new do |s|
	s.platform    	= Gem::Platform::RUBY
	s.name        	= "smartmachine"
	s.version     	= version
	s.summary     	= "Full-stack deployment framework for Rails."
	s.description 	= "SmartMachine is a full-stack deployment framework for rails optimized for admin programmer happiness and peaceful administration. It encourages natural simplicity by favoring convention over configuration."

	s.required_ruby_version     = ">= 2.5.0"
	s.required_rubygems_version = ">= 1.8.11"

	s.license     	= "MIT"

	s.author     	= "Gaurav Goel"
	s.email       	= "gaurav@timeboard.me"
	s.homepage    	= "https://github.com/timeboardcode/smartmachine"

	s.executables 	= %w(buildpacker prereceiver scheduler smartmachine smartrunner)

	s.files        	= Dir["CHANGELOG.rdoc", "MIT-LICENSE", "README.rdoc", "bin/**/*", "bin/**/.keep", "lib/**/*", "lib/**/.keep"]

	s.extra_rdoc_files = %w(README.rdoc)
	s.rdoc_options.concat ["--main",  "README.rdoc"]

	s.metadata		= {
		"bug_tracker_uri"   => "https://github.com/timeboardcode/smartmachine/issues",
	    "changelog_uri"     => "https://github.com/timeboardcode/smartmachine/releases/tag/v#{version}",
	    # "documentation_uri" => "https://www.timeboard.me/about/software/smartmachine/api/v#{version}/",
	    # "mailing_list_uri"  => "https://www.timeboard.me/about/software/smartmachine/discuss",
	    "source_code_uri"   => "https://github.com/timeboardcode/smartmachine/tree/v#{version}"
	}

	s.add_dependency "net-ssh", "~> 5.2"
	s.add_dependency "bcrypt", "~> 3.1", ">= 3.1.13"
	s.add_dependency "activesupport", "~> 6.0"
	s.add_dependency "whenever", '~> 1.0'
end
