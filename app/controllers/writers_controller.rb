class WritersController < ApplicationController
  def new
    @page_title = 'Add New Writer'
    @writer = Writer.new
  end

  def create
    @writer = Writer.create(writer_params)
  
    if @writer.save
        flash[:notice] = "Writer Created"
        redirect_to writers_path
    else
        flash[:alert] = "Writer Not Created"
        render 'new'
    end
  end
  def update
      @writer = Writer.find(params[:id])
      if @writer.update(writer_params)
          flash[:notice] = "Writer Updated"
          redirect_to :action => 'show', :id => @writer
      else
          flash[:alert] = "Writer Not Updated"
          render :action => 'edit'
      end
  end

  def edit
      @writer = Writer.find(params[:id])
  end

  def destroy
      @writer = Writer.find(params[:id])

    if  @writer.destroy
        flash[:notice] = "Writer Removed"
        redirect_to writers_path
    else
        flash[:alert] = "Writer Not Removed"
        render 'destroy'
    end
  end

  def index
      @writers = Writer.all
  end

  def show
      @writer = Writer.find(params[:id])
      @writers = Writer.all
      @movies = @writer.movies
      @genres = Genre.all
  end
  private
    def writer_params
        params.require(:writer).permit(:first_name,:last_name)
    end
end
