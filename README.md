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

