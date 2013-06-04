# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sc2ranksapi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Wong"]
  gem.email         = ["iamawong@outlook.com"]
  gem.homepage      = "https://github.com/iamawong/sc2ranksapi"
  gem.description   = "This gem allows you to access data from http://sc2ranks.com."
  gem.summary       = "Gem to get Starcraft2 information about players."
  gem.version       = Sc2RanksApi::VERSION

  gem.add_dependency "httparty", "~> 0.11.0"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sc2ranksapi"
  gem.require_paths = ["lib"]
end
