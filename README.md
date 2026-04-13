# stevefuchs.fr — Jekyll Blog

Personal tech blog built with [Jekyll 4](https://jekyllrb.com/) and the [Minima 3](https://github.com/jekyll/minima) theme (dark skin), served via nginx.

Live site: **https://stevefuchs.fr**

---

## Stack

| Layer | Technology |
|---|---|
| Static site generator | Jekyll 4.4.1 |
| Theme | Minima 3.0.0.dev (local, dark skin) |
| Comments | Disqus (`steve-fuchs-blog`) |
| CSS | Sass / sass-embedded |
| Production server | nginx:alpine (Docker) |
| CI/CD | GitHub Actions — self-hosted runner |
| Container registry | `192.168.1.192:5000` |

---

## Local development

Ruby is not required locally. Use Docker:

```bash
# Build the dev image (first time or after gem changes)
docker build -t jekyll-site .

# Start the dev server with live reload
docker run -d --name jekyll-dev -p 4000:4000 jekyll-site

# View logs
docker logs jekyll-dev

# Stop
docker stop jekyll-dev
```

Site is available at **http://localhost:4000/**

---

## Production build

The production image uses a multi-stage build: Jekyll compiles the site, then nginx:alpine serves the static output.

```bash
# Build
docker build -f Dockerfile.prod -t 192.168.1.192:5000/stevefuchs-fr:latest .

# Push to local registry
docker push 192.168.1.192:5000/stevefuchs-fr:latest

# Run locally to test
docker run -d -p 80:80 192.168.1.192:5000/stevefuchs-fr:latest
```

---

## CI/CD

Every push to `master` triggers `.github/workflows/build.yml` on the self-hosted runner:

1. Checkout source
2. `docker build` via `Dockerfile.prod` (with layer cache from previous image)
3. `docker push` to `192.168.1.192:5000/stevefuchs-fr:latest`

---

## Gem management

Gems are locked in `Gemfile.lock`. To update:

```bash
# Update all gems
docker run --rm -v "$(pwd):/site" jekyll-site bundle update

# Update a specific gem
docker run --rm -v "$(pwd):/site" jekyll-site bundle update <gem-name>
```

Commit the resulting `Gemfile.lock`.

---

## Key files

| File | Purpose |
|---|---|
| `_config.yml` | Site settings, plugins, Minima/Disqus config |
| `Gemfile` / `Gemfile.lock` | Ruby dependencies |
| `Dockerfile` | Dev image (`jekyll serve --watch`) |
| `Dockerfile.prod` | Production image (multi-stage Jekyll + nginx) |
| `nginx.conf` | nginx config for static Jekyll site |
| `.github/workflows/build.yml` | CI/CD pipeline |
| `disqus-url-map.csv` | URL migration map for Disqus (one-time use) |
| `minima.gemspec` | Local Minima 3.0.0.dev gem definition |

---

## Google Analytics

GA4 is ready but disabled. Add your Measurement ID to `_config.yml`:

```yaml
google_analytics: G-XXXXXXXXXX
```

---

## Disqus URL migration

If you changed `baseurl` and need to remap Disqus threads, use `disqus-url-map.csv`:

1. Go to https://steve-fuchs-blog.disqus.com/admin/discussions/migrate/
2. Upload `disqus-url-map.csv` via the URL Mapper tool
