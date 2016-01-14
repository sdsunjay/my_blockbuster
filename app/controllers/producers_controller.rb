class ProducersController < ApplicationController
  def new
    @page_title = 'Add New Producer'
    @producer = Producer.new
  end

  def create
    @producer = Producer.create(producer_params)
  
    if @producer.save
        flash[:notice] = "Producer Created"
        redirect_to producers_path
    else
        flash[:alert] = "Producer Not Created"
        render 'new'
    end
  end

  def update
      @producer = Producer.find(params[:id])
      if @producer.update(producer_params)
          flash[:notice] = "Producer Updated"
          redirect_to :action => 'show', :id => @producer
      else
          flash[:alert] = "Producer Not Updated"
          render :action => 'edit'
      end
  end

  def edit
      @producer = Producer.find(params[:id])
  end


  def destroy
      @producer = Producer.find(params[:id])

    if  @producer.destroy
        flash[:notice] = "Producer Removed"
        redirect_to producers_path
    else
        flash[:alert] = "Producer Not Removed"
        render 'destroy'
    end
  end

  def index
      @producers = Producer.all
  end

  def show
      @producer = Producer.find(params[:id])
      @producers = Producer.all
      @movies = @producer.movies
      @genres = Genre.all
  end
  private
    def producer_params
        params.require(:producer).permit(:first_name,:last_name)
    end
end
