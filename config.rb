set :base_url, ""

activate :directory_indexes

configure :development do
  activate :livereload
end

configure :build do
  set :base_url, "https://www.rustin.io"

  activate :asset_hash
  activate :asset_host, host: ''
  activate :minify_css
  activate :minify_javascript
end

helpers do
  def full_url_for(url, options = {})
    url_for("#{config.base_url}#{url}", options)
  end
end
