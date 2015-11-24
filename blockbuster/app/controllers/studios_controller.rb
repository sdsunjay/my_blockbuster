class StudiosController < ApplicationController
  def new
    @page_title = 'Add New Studio'
    @studio = Studio.new
  end

  def create
    @studio = Studio.create(studio_params)
  
    if @studio.save
        flash[:notice] = "Studio Created"
        redirect_to studios_path
    else
        flash[:alert] = "Studio Not Created"
        render 'new'
    end
  end

  def update
      @studio = Studio.find(params[:id])
      if @studio.update(studio_params)
          flash[:notice] = "Studio Updated"
          redirect_to :action => 'show', :id => @studio
      else
          flash[:alert] = "Studio Not Updated"
          render :action => 'edit'
      end
  end

  def edit
      @studio = Studio.find(params[:id])
  end


  def destroy
      @studio = Studio.find(params[:id])

    if  @studio.destroy
        flash[:notice] = "Studio Removed"
        redirect_to studios_path
    else
        flash[:alert] = "Studio Not Removed"
        render 'destroy'
    end
  end

  def index
      @studios = Studio.all
  end

  def show
      @studio = Studio.find(params[:id])
      @studios = Studio.all
      @movies = @studio.movies
      @genres = Genre.all
  end

  private
    def studio_params
        params.require(:studio).permit(:name)
    end
end
