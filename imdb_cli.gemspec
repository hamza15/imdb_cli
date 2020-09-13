require_relative 'lib/imdb_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "imdb_cli"
  spec.version       = ImdbCli::VERSION
  spec.authors       = ["hamza15"]
  spec.email         = ["sardan5@vt.edu"]

  spec.summary       = "Hi"
  spec.description   = "Cli App."
  spec.homepage      = "http://website.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "http://website.com"
  spec.metadata["source_code_uri"] = "http://website.com"
  spec.metadata["changelog_uri"] = "http://website.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  
end

