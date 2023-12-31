# -*- encoding: utf-8 -*-
# stub: asciidoctor-diagram 2.2.14 ruby lib

Gem::Specification.new do |s|
  s.name = "asciidoctor-diagram".freeze
  s.version = "2.2.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/asciidoctor/asciidoctor-diagram/issues", "changelog_uri" => "https://github.com/asciidoctor/asciidoctor-diagram/blob/master/CHANGELOG.adoc", "documentation_uri" => "https://docs.asciidoctor.org/diagram-extension/latest/", "homepage_uri" => "https://github.com/asciidoctor/asciidoctor-diagram", "source_code_uri" => "https://github.com/asciidoctor/asciidoctor-diagram.git" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pepijn Van Eeckhoudt".freeze]
  s.date = "2023-09-20"
  s.description = "Asciidoctor diagramming extension".freeze
  s.email = ["pepijn@vaneeckhoudt.net".freeze]
  s.homepage = "https://github.com/asciidoctor/asciidoctor-diagram".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "A family of Asciidoctor extensions that generate images from a broad range of embedded plain text diagram descriptions, including PlantUML, ditaa, Kroki, and many others.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<asciidoctor>.freeze, [">= 1.5.7", "< 3.x"])
    s.add_runtime_dependency(%q<asciidoctor-diagram-ditaamini>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<asciidoctor-diagram-plantuml>.freeze, ["~> 1.2021"])
    s.add_runtime_dependency(%q<rexml>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<asciidoctor>.freeze, [">= 1.5.7", "< 3.x"])
    s.add_dependency(%q<asciidoctor-diagram-ditaamini>.freeze, ["~> 1.0"])
    s.add_dependency(%q<asciidoctor-diagram-plantuml>.freeze, ["~> 1.2021"])
    s.add_dependency(%q<rexml>.freeze, [">= 0"])
  end
end
