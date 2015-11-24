class GenresController < ApplicationController
  def new
    @page_title = 'Add New Genre'
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
  
    if @genre.save
        flash[:notice] = "Genre Created"
        redirect_to genres_path
    else
        flash[:alert] = "Genre Not Created"
        render 'new'
    end
  end

  def update
      @genre = Genre.find(params[:id])
      if @genre.update(genre_params)
          flash[:notice] = "Genre Updated"
          redirect_to :action => 'show', :id => @genre
      else
          flash[:alert] = "Genre Not Updated"
          render :action => 'edit'
      end
  end

  def edit
      @genre = Genre.find(params[:id])
  end


  def destroy
      @genre = Genre.find(params[:id])

    if  @genre.destroy
        flash[:notice] = "Genre Removed"
        redirect_to genres_path
    else
        flash[:alert] = "Genre Not Removed"
        render 'destroy'
    end
  end

  def index
      @genres = Genre.all
  end

  def show 
      @genre = Genre.find(params[:id])
      @genres = Genre.all
      @movies = @genre.movies
  end
  private
  def genre_params
      params.require(:genre).permit(:name)
  end
end
