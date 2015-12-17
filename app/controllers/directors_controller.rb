class DirectorsController < ApplicationController
  def new
    @page_title = 'Add New Director'
    @director = Director.new
  end

  def create
    @director = Director.create(director_params)
  
    if @director.save
        flash[:notice] = "Director Created"
        redirect_to directors_path
    else
        flash[:alert] = "Director Not Created"
        render 'new'
    end
  end

  def update
      @director = Director.find(params[:id])
      if @director.update(director_params)
          flash[:notice] = "Director Updated"
          redirect_to :action => 'show', :id => @director
      else
          flash[:alert] = "Director Not Updated"
          render :action => 'edit'
      end
  end

  def edit
      @director = Director.find(params[:id])
  end


  def destroy
      @director = Director.find(params[:id])

    if  @director.destroy
        flash[:notice] = "Director Removed"
        redirect_to directors_path
    else
        flash[:alert] = "Director Not Removed"
        render 'destroy'
    end
  end

  def index
      @directors = Director.all
  end

  def show
      @director = Director.find(params[:id])
      @directors = Director.all
      @movies = @director.movies
      @genres = Genre.all
  end
  
  private
    def director_params
        params.require(:director).permit(:first_name,:last_name)
    end
end
