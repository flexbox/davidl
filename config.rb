###
# Blog settings
###

Time.zone = 'Paris'
I18n.config.enforce_available_locales = false

activate :blog do |blog|
  blog.name = 'blog'

  blog.permalink = 'blog/:title.html'
  blog.sources   = 'blog/articles/:title.html'
  blog.layout    = 'layouts/blog_layout'
  blog.default_extension = '.markdown'

  blog.paginate = false
end

activate :blog do |forge|
  forge.name = 'forge'

  forge.permalink = 'forge/:title.html'
  forge.sources   = 'forge/chapitres/:title.html'
  forge.layout    = 'layouts/forge_layout'
  forge.default_extension = '.markdown'
end

###
# Navigation
###

activate :navtree do |options|
  options.data_file = 'tree.yml'
  options.source_dir = 'source' # The `source` directory we want to represent in our nav tree.
  options.ignore_files = [
    'sitemap.xml',
    'robots.txt',
    'human.txt',
    'feed.xml.builder',
    'favicon_base.png',
    'browserconfig.xml',
    'CNAME'
  ]
  options.ignore_dir = ['assets', 'layouts'] # An array of directories we want to ignore when building our tree.
  options.home_title = 'Home' # The default link title of the home page (located at "/"), if otherwise not detected.
  options.promote_files = ['index.html'] # Any files we might want to promote to the front of our navigation
  options.ext_whitelist = [] # If you add extensions (like '.md') to this array, it builds a whitelist of filetypes for inclusion in the navtree.
end

###
# Analytics
###

activate :google_analytics do |ga|
  ga.tracking_id = @app.data.settings.site.analytics_id
  ga.domain_name = @app.data.settings.site.analytics_domain_name
  ga.debug = false
  ga.test = false
  ga.minify = true
end

activate :autoprefixer, browsers: ['last 2 versions', 'Explorer >= 9']
activate :syntax
activate :sprockets
sprockets.append_path File.join(root, 'bower_components')

###
# Page options, layouts, aliases and proxies
###

page '/browserconfig.xml', layout: false
page '/feed.xml',          layout: false
page '/sitemap.xml',       layout: false

require 'builder'
require 'kramdown'
require 'slim'
Slim::Engine.disable_option_validator!

set :css_dir,    'assets/stylesheets'
set :images_dir, 'assets/images'
set :js_dir,     'assets/javascripts'

# Add bower's directory to sprockets asset path
after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch        = 'gh-pages'
  deploy.build_before  = true # always use --no-clean options
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

configure :build do
  activate :favicon_maker do |f|
    f.template_dir  = File.join(root, 'source')
    f.output_dir    = File.join(root, 'build')
    f.icons = {
      'favicon_base.png' => [
        { icon: 'chrome-touch-icon-192x192.png' },
        { icon: 'apple-touch-icon.png', size: '152x152' },
        { icon: 'ms-touch-icon-144x144-precomposed.png', size: '144x144' },
        { icon: 'favicon-196x196.png' },
        { icon: 'favicon-160x160.png' },
        { icon: 'favicon-96x96.png' },
        { icon: 'favicon-32x32.png' },
        { icon: 'favicon-16x16.png' },
        { icon: 'favicon.ico', size: '64x64,32x32,24x24,16x16' },
      ]
    }
  end

  activate :sitemap, hostname: @app.data.settings.site.url
  activate :sitemap_ping do |config|
    config.host = "#{@app.data.settings.site.url}"
  end

  activate :minify_html, remove_input_attributes: false
  activate :minify_css
  activate :minify_javascript

  activate :asset_hash
  activate :relative_assets
  activate :gzip
end
