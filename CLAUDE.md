# Claude Code context — stevefuchs.fr

## What this repo is

Personal French-language tech blog. Jekyll 4 + Minima 3 (local dev version for dark skin).
Deployed as a Docker image on a private home server.

## Key commands

### Local dev (Docker — no Ruby required locally)
```bash
docker build -t jekyll-site .
docker run -d --name jekyll-dev -p 4000:4000 jekyll-site
docker logs jekyll-dev          # check build output / server status
docker stop jekyll-dev
```

### Production image
```bash
docker build -f Dockerfile.prod -t 192.168.1.192:5000/stevefuchs-fr:latest .
docker push 192.168.1.192:5000/stevefuchs-fr:latest
```

Docker is invoked via the full path on this machine:
`C:\Program Files\Docker\Docker\resources\bin\docker.exe`

### Update gems (run inside Docker, writes back to host Gemfile.lock)
```bash
docker run --rm -v "C:\Private\Repositories\JekyllWebSite:/site" jekyll-site bundle update
```

## Architecture

- `Dockerfile` — dev image, `jekyll serve --watch --force_polling`
- `Dockerfile.prod` — multi-stage: Ruby 3.3 builds the site, nginx:alpine serves `_site/`
- `nginx.conf` — clean URLs, custom 404, asset caching, gzip
- `.github/workflows/build.yml` — CI/CD: push to master → self-hosted runner builds & pushes image
- `minima.gemspec` — keeps Minima 3.0.0.dev as a PATH gem (Minima 3.x not on RubyGems yet)
- `_config.yml` — `baseurl: ""` (site at root, not /blog)

## Important notes

- Ruby is NOT installed locally. All builds go through Docker.
- Private registry at `192.168.1.192:5000` is configured as insecure in Docker Desktop.
- `Gemfile.lock` is committed despite being in `.gitignore` — update via Docker, not locally.
- `jekyll-localization` was removed: incompatible with Ruby 3.3 (circular argument SyntaxError).
- `liquid` is intentionally NOT updated beyond 4.x — Jekyll 4 requires `~> 4.0`.
- Google Analytics key is `google_analytics` (GA4 `G-XXXXXXXXXX` format). The old
  `google_site_verification: UA-XXXXX` entries were removed — UA was shut down July 2023.
- Disqus: `disqus-url-map.csv` maps old `/blog/...` URLs to new root URLs for the
  one-time Disqus URL Mapper migration at https://steve-fuchs-blog.disqus.com/admin/discussions/migrate/

## Blog posts

19 posts in `_posts/`, all with explicit `permalink:` front matter.
Most use `/posts/<slug>/` format; a few older ones use `/YYYY/MM/DD/<slug>/`.
