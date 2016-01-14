class MoviesController < ApplicationController
  def new
    @page_title = 'Add Movie'
    @movie = Movie.new
    @genre = Genre.new
    @director = Director.new
    @studio = Studio.new
    @actor = Actor.new
  end

  def create
    @movie = Movie.create(movie_params)
#movie.categorizations.create(movie_params)
    if @movie.save
        flash[:notice] = "Movie Created"
        redirect_to movies_path
    else
        flash[:alert] = "Movie Not Created"
        render 'new'
    end
  end

  def update
      @movie = Movie.find(params[:id])
      if @movie.update(movie_params)
          flash[:notice] = "Movie Updated"
          redirect_to :action => 'show', :id => @movie
      else
          flash[:alert] = "Movie Not Updated"
          render :action => 'edit'
      end
  end

  def edit
      @movie = Movie.find(params[:id])
  end

  def destroy
      @movie = Movie.find(params[:id])

    if @movie.destroy
        flash[:notice] = "Movie Removed"
        redirect_to movies_path
    else
        flash[:alert] = "Movie Not Removed"
        render 'destroy'
    end
  end

  def index
      @genres = Genre.all
      if params[:query].present?
          @movies = Movie.search(params[:query], page: params[:page])
      else
          @movies = Movie.all
      end
  end

  def autocomplete
      render json: Movie.search(params[:query], autocomplete: true, limit: 10).map(&:title)
  end

  def show
      @movie = Movie.find(params[:id])
      @genres = @movie.genres
  end
      private
      def movie_params
          params.require(:movie).permit(:title, :plot, :release_date, :runtime, :coverpath, :duration, :link, :genre_ids, :director_id, :rating_id, :studio_id, :producer_id, :writer_id, :year_id, :star_rating_id)
      end
  end
