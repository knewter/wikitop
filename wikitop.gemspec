# -*- encoding: utf-8 -*-
require File.expand_path('../lib/wikitop/version', __FILE__)
Gem::Specification.new do |gem|
  gem.authors = ["Josh Adams"]
  gem.email = ["josh@isotope11.com"]
  gem.description = %q{A wiki parser written in Treetop}
  gem.summary = %q{A wiki parser written in Treetop}
  gem.homepage = "http://www.isotope11.com"
  gem.name = "wikitop"
  gem.version = Wikitop::VERSION
  gem.add_dependency 'treetop'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'minitest-display', '0.2.0.pre2'
end
