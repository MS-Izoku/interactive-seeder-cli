# frozen_string_literal: true

require_relative "lib/interactive/seeder/cli/version"

Gem::Specification.new do |spec|
  spec.name = "interactive-seeder-cli"
  spec.version = Interactive::Seeder::Cli::VERSION
  spec.authors = ["Martin Spicuzza"]
  spec.email = ["spicuzza157@gmail.com"]

  spec.summary = "A gem that lets users create more interactive CLI applications"
  spec.description = "A gem that provides various tools to create better menus for CLI-based applications, or to amp up your Rails seeds.rb file"
  spec.homepage = "https://github.com/MS-Izoku/interactive-seeder-cli"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/MS-Izoku/interactive-seeder-cli"
  spec.metadata["changelog_uri"] = "https://github.com/MS-Izoku/interactive-seeder-cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  # region: Gem Gependencies
  spec.add_dependency 'colorize'
  spec.add_dependency 'win32console'
  # endregion

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
