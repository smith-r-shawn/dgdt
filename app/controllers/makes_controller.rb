class MakesController < ApplicationController
  def index
    @makes = Make.all
  end

  def show
    @make = Make.find(params[:id])
  end

  def new
    @make = Make.new
  end

  def edit
    @make = Make.find(params[:id])
  end

  def create
    @make = Make.new(make_params)

    if @make.save
      redirect_to @make
    else
      render 'new'
    end
  end

  def update
    @make = Make.find(params[:id])

    if @make.update(make_params)
      redirect_to @make
    else
      render 'edit'
    end
  end

  def destroy
    @make = Make.find(params[:id])
    @make.destroy

    redirect_to makes_path
  end

  private
    def make_params
      params.require(:make).permit(:name, :logo_url)
    end

end
