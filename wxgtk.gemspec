# wxGTK - A wxWidgets-like wrapper for the Ruby-GNOME2 library.
# Copyright (C) 2012 Vinny Diehl
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

require File.expand_path("../lib/wx/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name = "wxgtk"
  gem.author = "Vinny Diehl"
  gem.email = "gbchaosmaster926@gmail.com"
  gem.homepage = "https://github.com/gbchaosmaster/wxgtk"
  gem.summary = "wxGTK for Ruby"
  gem.version = Wx::Version.to_s

  gem.require_paths = %w[lib]

  gem.test_files = Dir.glob("spec/**/*")

  gem.files = %w[LICENSE.md README.md Rakefile wxgtk.gemspec]
  gem.files += Dir.glob("lib/**/*.rb")
  gem.files += gem.test_files

  gem.add_dependency "gtk2", "~> 1.1"
  gem.add_development_dependency "bundler", "~> 1.1"
  gem.add_development_dependency "rake", "~> 0.9"
  gem.add_development_dependency "rspec", "~> 2.11"
end
