# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mnrbcop/version'

Gem::Specification.new do |spec|
  # 一旦埋めるが、特に深い記述意図はないのであとで変更化
  spec.name          = "mnrbcop"
  spec.version       = Mnrbcop::VERSION
  spec.authors       = ["IkuoTakada"]
  spec.email         = ["ikuo.takada@medicalnote.co.jp"]

  spec.summary       = "rubocop conifg file to team"
  spec.description   = "rubocop conifg file to team"
  spec.homepage      = "https://sample.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # rubocopのバージョンはここで管理
  spec.add_dependency 'rubocop', '0.72'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
