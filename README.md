# Jekyll Web Site

## Some commands to remember

 jekyll -v

 C:\Repositories\JekyllWebSite>bundle update jekyll

 C:\Repositories\JekyllWebSite>bundle update


 ## Docker

docker run --rm --label=jekyll --volume=C:\Private\Repositories\JekyllWebSite:/srv/jekyll  -it -p 4000:4000 jekyll/jekyll:3.7.3 jekyll serve

Testing: http://127.0.0.1:4000/blog/
