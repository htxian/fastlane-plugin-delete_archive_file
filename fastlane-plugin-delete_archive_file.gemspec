# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/delete_archive_file/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-delete_archive_file'
  spec.version       = Fastlane::DeleteArchiveFile::VERSION
  spec.author        = 'xian'
  spec.email         = '649970452@qq.com'

  spec.summary       = 'when we use gym build ipa, gym autoSave archive file in Xcode orgnianizer archives, we want to delete it from xcode.'
  # spec.homepage      = "https://github.com/<GITHUB_USERNAME>/fastlane-plugin-delete_archive_file"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency('pry')
  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rubocop', '0.49.1')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('fastlane', '>= 2.129.0')
end
