# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rubybox/version"

Gem::Specification.new do |s|
  s.name        = "rubybox"
  s.version     = RubyBox::VERSION
  s.authors     = ["Maarten Hoogendoorn"]
  s.email       = ["maarten@moretea.nl"]
  s.homepage    = ""
  s.summary     = %q{A ruby sandbox, that allows one to run 'untrusted' ruby code.}
  s.description = %q{This sandbox parses the 'untusted' code, and generates code from the AST, whilst white listed method and class interactions.}

  s.rubyforge_project = "rubybox"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "fuubar"
  s.add_runtime_dependency "ruby_parser"
end
