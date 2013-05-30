# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://untitledartblog.com"

SitemapGenerator::Sitemap.create do
  add '/mission'
  Post.find_each do |post|
    add posts_path(post), :lastmod => post.updated_at
  end
  User.find_each do |author|
    add author_path(author), :changefreq => "yearly", :lastmod => author.updated_at
  end
  add "/contact"
  Category.find_each do |tag|
    add tag_path(tag.name), :changefreq => 'monthly', :lastmod => tag.updated_at
  end
    
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
