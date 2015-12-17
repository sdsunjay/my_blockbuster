class RatingsController < ApplicationController
  def new
    @page_title = 'Add New Rating'
    @rating = Rating.new
  end

  def create
    @rating = Rating.create(rating_params)
  
    if @rating.save
        flash[:notice] = "Rating Created"
        redirect_to ratings_path
    else
        flash[:alert] = "Rating Not Created"
        render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
      @rating = Rating.find(params[:id])

    if  @rating.destroy
        flash[:notice] = "Rating Deleted"
        redirect_to ratings_path
    else
        flash[:alert] = "Rating Not Deleted"
        render 'destroy'
    end
  end

  def index
    @ratings = Rating.all
  end

  def show
      @rating = Rating.find(params[:id])
  end
  private
    def rating_params
        params.require(:rating).permit(:rating)
    end
end
