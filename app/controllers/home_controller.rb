#encoding: utf-8
class HomeController < ApplicationController
  include ApplicationHelper
  
  def index
  	@pages = Page.all.sort{|a, b| [a.data_row, a.data_col] <=> [b.data_row, b.data_col] }.paginate(:per_page => 24, :page => params[:page] || 1)
  end

  def metro_icons
  	@icon_dictionary = {}
    root = File.join(Rails.root, 'public', 'Metro Icons')
    Dir.foreach(root) do |path|
      next if path =~ /^[.]+$/
      @icon_dictionary[path] = []
      root_icons = File.join(Rails.root, 'public', 'Metro Icons', path, '*.png')
      Dir.glob(root_icons) do |icon|
      	@icon_dictionary[path] << icon.sub(/^.*\/public\//, '/')
      end
    end
  end
end
