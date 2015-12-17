class ActorsController < ApplicationController
  def new
    @page_title = 'Add New Actor'
    @actor = Actor.new
  end

  def create
    @actor = Actor.create(actor_params)
  
    if @actor.save
        flash[:notice] = "Actor Created"
        redirect_to actors_path
    else
        flash[:alert] = "Actor Not Created"
        render 'new'
    end
  end

  def update
      @actor = Actor.find(params[:id])
      if @actor.update(actor_params)
          flash[:notice] = "Actor Updated"
          redirect_to :action => 'show', :id => @actor
      else
          flash[:alert] = "Actor Not Updated"
          render :action => 'edit'
      end
  end

  def edit
      @actor = Actor.find(params[:id])
  end


  def destroy
      @actor = Actor.find(params[:id])

    if  @actor.destroy
        flash[:notice] = "Actor Removed"
        redirect_to actors_path
    else
        flash[:alert] = "Actor Not Removed"
        render 'destroy'
    end
  end

  def index
      @actors = Actor.all
  end

  def show
      @actor = Actor.find(params[:id])
      @actors = Actor.all
      @movies = @actor.movies
      @genres = Genre.all
  end
  
  private
    def actor_params
        params.require(:actor).permit(:first_name,:last_name)
    end
end
