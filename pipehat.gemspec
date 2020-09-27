require_relative 'lib/pipehat/version'

Gem::Specification.new do |spec|
  spec.name          = "pipehat"
  spec.version       = Pipehat::VERSION
  spec.authors       = ["Tim Peters"]
  spec.email         = ["tim@catminion.net"]

  spec.summary       = "A library for reading and writing HL7 v2 messages."
  spec.description   = "A library for reading and writing HL7 v2 messages."
  spec.homepage      = "https://github.com/timocp/pipehat"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/timocp/pipehat"
  spec.metadata["changelog_uri"] = "https://github.com/timocp/pipehat/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
