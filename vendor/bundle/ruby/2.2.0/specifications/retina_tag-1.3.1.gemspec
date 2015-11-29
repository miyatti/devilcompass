# -*- encoding: utf-8 -*-
# stub: retina_tag 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "retina_tag"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Estes"]
  s.date = "2014-04-28"
  s.description = "This gem overrides image_tag to support retina resolution images using asset pipeline"
  s.email = ["destes@redwindsw.com"]
  s.homepage = "http://github.com/davydotcom/retina_tag"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "image_tag addon for retina graphics, with cache support."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
  end
end
