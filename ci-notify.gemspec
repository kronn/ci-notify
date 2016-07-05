# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ci/notify/version'

Gem::Specification.new do |spec|
  spec.name          = "ci-notify"
  spec.version       = Ci::Notify::VERSION
  spec.authors       = ["Matthias Viehweger"]
  spec.email         = ["kronn@kronn.de"]

  spec.summary       = %q{Send a short notification from Jenkins to IRC}
  spec.description   = %q{With the new Jenkinsfile-approach, I wanted a small script to send notifications to IRC. Since most of the information comes from env-vars supplied by Jenkins, this is a very generic script. Packaging this a gem enables proper dependency management.}
  spec.homepage      = "https://git.lanpartei.de/kronn/ci-notify"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "shout-bot"
  spec.add_dependency "string-irc"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
