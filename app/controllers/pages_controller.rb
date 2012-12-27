#encoding: utf-8
class PagesController < ApplicationController
  before_filter :authenticate_admin_user!, :except => [:index, :show, :en]
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.paginate(:page => params[:page] || 1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page =   Page.find_by_id(params[:id]) 
    @page ||= Page.last 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

end