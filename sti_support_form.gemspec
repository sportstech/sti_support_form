# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sti_support_form/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Quinn"]
  gem.email         = ["developers@sportstechinc.com"]
  gem.description   = %q{Fill in the STI support form which will be game agnostic.}
  gem.summary       = %q{Fill in the STI support form which will be game agnostic.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sti_support_form"
  gem.require_paths = ["lib"]
  gem.version       = StiSupportForm::VERSION
end
