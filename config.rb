###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# To get /post/2014/01/scales-of-measurements/ instead of
#        /post/2014/01/scales-of-measurements.html
activate :directory_indexes

# List of examples
activate :blog do |blog|
	blog.name = 'examples'
	blog.prefix = 'examples'

	# Don't need date-wise archives for these
	blog.generate_day_pages = false
	blog.generate_month_pages = false
	blog.generate_year_pages = false

	# Don't need date in the permalink...
	blog.permalink = '{title}.html'

	# ... or in the file name we maintain
	blog.sources = '{title}.html'
end

# Discover6Sigma
activate :blog do |blog|
	blog.name = 'post'
	blog.prefix = 'post'

	# Match d6s
	blog.permalink = '{year}/{month}/{title}.html'
	blog.sources = '{year}-{month}-{title}.html'

	# Enable pagination
	blog.paginate = true
	blog.per_page = 10
	blog.page_link = "page/{num}"

end

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
