#encoding: utf-8
class HomeController < ApplicationController
  include ApplicationHelper
  
  def index
  	@pages = Page.all
  end

end
