###
# Blog settings
###

Time.zone = "Paris"
I18n.config.enforce_available_locales = false

activate :blog do |blog|
  blog.permalink = "blog/:title.html"
  blog.sources = "blog/articles/:title.html"
  blog.layout = "layouts/blog_layout"
  blog.default_extension = ".markdown"
  blog.calendar_template = "calendar.html"

  blog.paginate = false
  # blog.per_page = 10
  # blog.page_link = "page/:num"
end

###
# Page options, layouts, aliases and proxies
###

page "/feed.xml", :layout => false
page "/sitemap.xml", :layout => false
page "/browserconfig.xml", :layout => false

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

require 'slim'
require 'builder'

activate :gzip
activate :livereload

set :js_dir, 'assets/javascripts'
set :css_dir, 'assets/stylesheets'
set :images_dir, 'assets/images'

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Add bower's directory to sprockets asset path
after_configuration do

  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]

end

# Build-specific configuration
configure :build do

  activate :minify_html
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :favicon_maker,
    :favicon_maker_versions => [ :apple_152, :apple_144, :apple_120, :apple_114, :apple_76, :apple_72, :apple_60, :apple_57, :apple, :fav_196, :fav_160, :fav_96, :fav_32, :fav_16, :fav_png, :fav_ico, :mstile_144 ]

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
