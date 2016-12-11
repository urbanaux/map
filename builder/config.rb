page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :haml, ugly: true, format: :html5
set :build_dir, '../docs'

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  set :http_prefix, '/map'
end
