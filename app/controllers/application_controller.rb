#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :cache_wallpaper

  def cache_wallpaper
    unless Rails.cache.exist?(:wallpaper)
      site = Site.find_by_name("wallpaper")
      if site
        Rails.cache.write(:wallpaper, site.value)
      end
    end
  end
end

##==About Cache Key
# Rails.cache.exist?('speed')         # => false
# Rails.cache.read('speed')           # => nil
# Rails.cache.write('speed', 'fast!') # => true
# Rails.cache.exist?('speed')         # => true
# Rails.cache.read('speed')           # => "fast!"