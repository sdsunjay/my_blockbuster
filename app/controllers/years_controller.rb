class YearsController < ApplicationController
  def new
    @page_title = 'Add New Year'
    @year = Year.new
  end

  def create
    @year = Year.create(year_params)
  
    if @year.save
        flash[:notice] = "Year Created"
        redirect_to years_path
    else
        flash[:alert] = "Year Not Created"
        render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
      @years = Year.all
  end

  def show
      @year = Year.find(params[:id])
  end
  private
    def year_params
        params.require(:year).permit(:year)
    end
end
