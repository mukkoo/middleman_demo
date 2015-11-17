compass_config do |config|
  config.output_style = :compact
end


configure :development do
  activate :livereload
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :slim, format: :html
set :sass, format: :css
set :coffeescript, format: :js

Slim::Engine.disable_option_validator!

activate :directory_indexes

page "/*", layout: "page"
page "/", layout: "home"
page "/sitemap.xml", :layout => false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end
