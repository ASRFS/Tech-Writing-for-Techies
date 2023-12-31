# -*- encoding: utf-8 -*-
# stub: asciidoctor-diagram 2.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "asciidoctor-diagram".freeze
  s.version = "2.2.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pepijn Van Eeckhoudt".freeze]
  s.date = "2022-05-21"
  s.description = "Asciidoctor diagramming extension".freeze
  s.email = ["pepijn@vaneeckhoudt.net".freeze]
  s.homepage = "https://github.com/asciidoctor/asciidoctor-diagram".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.2".freeze
  s.summary = "A family of Asciidoctor extensions that generate images from a broad range of embedded plain text diagram descriptions, including PlantUML, ditaa, Kroki, and many others.".freeze

  s.installed_by_version = "3.5.2".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<asciidoctor>.freeze, [">= 1.5.7".freeze, "< 3.x".freeze])
  s.add_runtime_dependency(%q<asciidoctor-diagram-ditaamini>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<asciidoctor-diagram-plantuml>.freeze, ["~> 1.2021".freeze])
  s.add_runtime_dependency(%q<rexml>.freeze, [">= 0".freeze])
end
