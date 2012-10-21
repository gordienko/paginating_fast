# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{paginating_fast}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["ALX"]
  s.date = %q{2010-10-29}
  s.description = %q{Fast pagination solution for Rails.}
  s.email = %q{alx@anadyr.org}
  s.extra_rdoc_files = ["README"]
  s.files = ["uninstall.rb", "Rakefile", "lib", "lib/paginating_fast.rb", "lib/paging_helper.rb", "README", "install.rb", "MIT-LICENSE", "init.rb", "test", "test/test_helper.rb", "test/paginating_fast_test.rb"]  
  s.homepage = %q{http://www.anadyr.org}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{paginating_fast}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Fast pagination solution for Rails}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
