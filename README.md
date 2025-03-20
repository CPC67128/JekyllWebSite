# Jekyll Web Site

## Building using commands line (obsolete)

 jekyll -v

 C:\Repositories\JekyllWebSite>bundle update jekyll

 C:\Repositories\JekyllWebSite>bundle update

## Building using Docker

docker run --rm --label=jekyll --volume=C:\Private\Repositories\JekyllWebSite:/srv/jekyll  -it -p 4000:4000 jekyll/jekyll:3.7.3 jekyll serve

Testing: http://127.0.0.1:4000/blog/

Reference article followed: [Running Jekyll in Windows Using Docker](https://www.jamessturtevant.com/posts/Running-Jekyll-in-Windows-using-Docker/)

## Reference articles

* Error faced when switching to generation via docker image: [jekyll error building page related to kramdown parser](https://stackoverflow.com/questions/63335953/jekyll-error-building-page-related-to-kramdown-parser)


Upgrade from v3 to v4

Brand new installation of Ruby: rubyinstaller-devkit-3.3.7-1-x64.exe

Trying to build : NOK

https://jekyllrb.com/docs/upgrading/3-to-4/

cd C:\Repositories\JekyllWebSite
gem update jekyll

NOK

updated _config.yml with excludes listed

bundle update jekyll

Updated Gemfile

https://stackoverflow.com/questions/4402819/download-all-gems-dependencies
bundle install

NOK

bundle update --bundler

Note: this command is to keep to try first next time

PS C:\Repositories\JekyllWebSite> jekyll build
C:/Users/steve/.local/share/gem/ruby/3.3.0/gems/bundler-2.6.6/lib/bundler/runtime.rb:314:in `check_for_activated_spec!': You have already activated public_suffix 6.0.1, but your Gemfile requires public_suffix 4.0.7. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)

Updated gemfile.lock : public_suffix (6.0.1)

but then:

PS C:\Repositories\JekyllWebSite> jekyll build
Resolving dependencies...
C:/Users/steve/.local/share/gem/ruby/3.3.0/gems/bundler-2.6.6/lib/bundler/runtime.rb:314:in `check_for_activated_spec!': You have already activated concurrent-ruby 1.3.5, but your Gemfile requires concurrent-ruby 1.2.3. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)

Non sense

> bundler update

bundle outdated

PS C:\Repositories\JekyllWebSite> bundle outdated
Fetching gem metadata from https://rubygems.org/...........
Resolving dependencies...

Gem                    Current  Latest  Requested  Groups
liquid                 4.0.4    5.8.2
terminal-table         3.0.2    4.0.0
unicode-display_width  2.6.0    3.1.4



bundle update liquid

PS C:\Repositories\JekyllWebSite> bundle update liquid
Fetching gem metadata from https://rubygems.org/..........
Resolving dependencies...
Resolving dependencies...
Bundler attempted to update liquid but its version stayed the same
Bundle updated!




https://cuda-chen.github.io/blogging/2020/03/28/add-Disqus-to-Jekyll-Minima-theme-simplified.html




### Switch dates to French format

Add the following Gemfile:

 gem 'jekyll-localization'

Then

 bundle install

Add the following to _config.yml

 locale: "fr_FR"
