# frozen_string_literal: true

require_relative 'lib/encryption_attr_rails/version'

Gem::Specification.new do |spec|
  spec.name = 'encryption_attr_rails'
  spec.version = EncryptionAttrRails::VERSION
  spec.authors = ['Alpha']
  spec.email = ['alphanolucifer@gmail.com']

  spec.summary = 'Encrypt/Decrypt attributes in Rails'
  spec.description = 'Encrypt/Decrypt attributes in Rails'
  spec.homepage = 'https://github.com/zgid123/encryption_attr_rails'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(
          *%w[
            bin/
            test/
            spec/
            features/
            .git
            .circleci
            appveyor
            examples/
            Gemfile
            .rubocop.yml
            .vscode/settings.json
            LICENSE.txt
            lefthook.yml
          ]
        )
    end
  end

  spec.require_paths = ['lib']
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
end
