class PagesController < InheritedResources::Base
  before_filter :authenticate_admin_user!, only: [:new, :create, :edit, :save]
  caches_page :index, :show
  before_filter(only: [:index, :show]) { @page_caching = true }
  cache_sweeper :page_sweeper

  def edit
    @page = Page.find(params[:id]) 
  end

  def show 
    @page = Page.find(params[:id])
  end 

  def update
    @page = Page.find_by_id(params[:id])
    if @page.update_attributes(params[:page])
      flash[:success] = "Page updated"
      redirect_to @page
    else
      render 'edit'
    end
  
  end


end
