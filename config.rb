# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions
activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end


# markdownの書き出しのカスタム
class CustomRenderer < Redcarpet::Render::HTML
  def preprocess(full_document)
    full_document.gsub(/\((\/?\S*).md\)/, '(\1.html)')
  end
end
set :markdown,
      tables:             true,
      autolink:           true,
      fenced_code_blocks: true,
      with_toc_data:      true,
      space_after_headers: false,
      no_intra_emphasis: true,
      renderer:           CustomRenderer
set :markdown_engine, :redcarpet


activate :livereload
activate :relative_assets

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
page 'index.html', layout: 'index'
page 'get-started.html', layout: 'with_sidemenu'
page 'making-data.html', layout: 'with_sidemenu'
page 'developpers-guide.html', layout: 'with_sidemenu'
page 'community.html', layout: 'with_sidemenu'
page 'developpers-guide/*.html', layout: 'with_sidemenu'



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

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
