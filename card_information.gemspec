
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "card_information/version"

Gem::Specification.new do |spec|
  spec.name          = "card_information"
  spec.version       = CardInformation::VERSION
  spec.authors       = ["'Chance Smith'"]
  spec.email         = ["'chancesmith97@hotmail.com'"]

  spec.summary       = %q{Shows infromation about Magic Cards}
  spec.description   = %q{Shows a list of Magic the Gathering cards that can be selected to show more infromation about that card, helping you make the decision to add it to your deck or not.}
  spec.homepage      = "http://bob.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = "http://bob.com"
    spec.metadata["source_code_uri"] = "http://bob.com"
    spec.metadata["changelog_uri"] = "http://bob.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "httparty"
end
