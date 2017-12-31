
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "theatre_cli_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "theatre_cli_gem"
  spec.version       = TheatreCliGem::VERSION
  spec.authors       = ["'Michael Hirschberger'"]
  spec.email         = ["'mlhirschberger@gmail.com'"]

  spec.summary       = %q{Current Broadway musicals.}
  spec.description   = %q{Provides information about current Broadway musicals obtained from broadway.com.}
  spec.homepage      = "https://github.com/MHirschberger/theatre-cli-gem.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
