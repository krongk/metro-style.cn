#encoding: utf-8
class PagesController < ApplicationController
  before_filter :authenticate_admin_user!, :except => [:index, :show, :en]
  caches_page :index, :show
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all.sort{|a, b| [a.data_row, a.data_col] <=> [b.data_row, b.data_col] }.paginate(:per_page => 16, :page => params[:page] || 1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    if params[:id] =~ /^\d+$/
      @page =   Page.find_by_id(params[:id]) 
    else
      @page = Page.find_by_path_name(params[:id])
    end
    @page ||= Page.first 

    case @page.path_name
    when 'metro_icons'
      return redirect_to "/metro_icons"
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

end