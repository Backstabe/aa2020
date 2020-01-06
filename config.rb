# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/
activate :directory_indexes

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'
set :slim, format: :html
set :fonts_dir,  'fonts'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end

config[:js_map] = "https://api-maps.yandex.ru/services/constructor/1.0/js/"+
  "?um=constructor%3A917e42e7d2b4a3d6083877d4d9ad1d85d4e04e914e7adcad974a5a5dbc41cfa1"+
  "&amp;width=100%&amp;height=530&amp;lang=ru_RU&amp;scroll=true"

config[:phone] = '+7 (921) 931-26-17'

activate :deploy do |deploy|
  deploy.deploy_method   = :ftp
  deploy.host            = ENV['DEPLOY_HOST']
  deploy.path            = ENV['DEPLOY_PATH']
  deploy.user            = ENV['DEPLOY_USER']
  deploy.password        = ENV['DEPLOY_PASSWORD']
end
