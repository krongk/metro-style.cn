#encoding: utf-8
class HomeController < ApplicationController
  include ApplicationHelper
  
  def index
  	@pages = Page.all.sort{|a, b| [a.data_row, a.data_col] <=> [b.data_row, b.data_col] }.paginate(:per_page => 24, :page => params[:page] || 1)
  end

end
