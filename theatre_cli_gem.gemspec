
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "theatre_cli_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "theatre_cli_gem"
  spec.version       = TheatreCliGem::VERSION
  spec.authors       = ["'Michael Hirschberger'"]
  spec.email         = ["'mlhirschberger@gmail.com'"]
  spec.summary       = %q{Current Broadway musicals.}
  spec.description   = %q{Provides information about current Broadway musicals obtained from broadway.org.}
  spec.homepage      = "https://github.com/MHirschberger/theatre-cli-gem.git"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ["broadway-shows"]
  spec.require_paths = ["lib", "lib/theatre_cli_gem"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

end
