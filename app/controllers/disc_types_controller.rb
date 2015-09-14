class DiscTypesController < ApplicationController
  def index
    @disc_types = DiscType.all
  end

  def show
    @disc_type = DiscType.find(params[:id])
  end

  def new
    @disc_type = DiscType.new
  end

  def edit
    @disc_type = DiscType.find(params[:id])
  end

  def create
    @disc_type = DiscType.new(disc_type_params)

    if @disc_type.save
      redirect_to @disc_type
    else
      render 'new'
    end
  end

  def update
    @disc_type = Disc_type.find(params[:id])

    if @disc_type.update(disc_type_params)
      redirect_to @disc_type
    else
      render 'edit'
    end
  end

  def destroy
    @disc_type = DiscType.find(params[:id])
    @disc_type.destroy

    redirect_to disc_types_path
  end

  private
    def disc_type_params
      params.require(:disc_type).permit(:name)
    end

end
