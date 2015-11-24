class ActorsController < ApplicationController
  def new
    @page_title = 'Add Actor'
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
  end

  def edit
  end

  def destroy
      @actor = Actor.find(params[:id])

    if  @actor.destroy
        flash[:notice] = "Actor Deleted"
        redirect_to actors_path
    else
        flash[:alert] = "Actor Not Deleted"
        render 'destroy'
    end
  end

  def index
    @actors = Actor.all
  end

  def show
      @actor = actor.find(params[:id])
  end
  private
    def actor_params
        params.require(:actor).permit(:first_name, :last_name)
    end
end
