# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tkh_activity_feeds/version'

Gem::Specification.new do |spec|
  spec.name          = "tkh_activity_feeds"
  spec.version       = TkhActivityFeeds::VERSION
  spec.authors       = ["Swami Atma"]
  spec.email         = ["swami@TenThousandHours.eu"]
  spec.summary       = %q{Activity feeds in your Rails app.}
  spec.description   = %q{Ralis Engine which creates and displays activity feeds.}
  spec.homepage      = "https://github.com/allesklar/tkh_activity_feeds"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 4.1.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
