# frozen_string_literal: true
require_relative 'lib/version_information'

Gem::Specification.new do |spec|
  spec.name          = "microsoft_graph"
  spec.version       = MicrosoftGraph::VersionInformation::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'graphsdkpub+ruby@microsoft.com'

  spec.summary       = "Ruby SDK for Microsoft Graph"
  spec.description   = "The Microsoft Graph Ruby SDK enables you to use Microsoft Graph v1.0 in your Ruby apps."
  spec.homepage      = "https://graph.microsoft.com"
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/microsoftgraph/msgraph-sdk-ruby/issues',
    'changelog_uri'   => 'https://github.com/microsoftgraph/msgraph-sdk-ruby/blob/main/CHANGELOG.md',
    'homepage_uri'    => spec.homepage,
    'source_code_uri' => 'https://github.com/microsoftgraph/msgraph-sdk-ruby',
    'github_repo'     => 'ssh://github.com/microsoftgraph/msgraph-sdk-ruby'
  }
  spec.required_ruby_version = '>= 3.0.0'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'microsoft_graph_core', '>= 0.1', '< 0.3'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency "rspec", "~> 3.0"
end
