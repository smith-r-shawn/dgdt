class ModelsController < ApplicationController
  def index
    @models = Model.all
  end

  def show
    @model = Model.find(params[:id])
  end

  def new
    @model = Model.new
  end

  def edit
    @model = Model.find(params[:id])
  end

  def create
    @model = Model.new(make_params)

    if @model.save
      redirect_to @model
    else
      render 'new'
    end
  end

  def update
    @model = Model.find(params[:id])

    if @model.update(make_params)
      redirect_to @model
    else
      render 'edit'
    end
  end

  def destroy
    @model = Model.find(params[:id])
    @model.destroy

    redirect_to models_path
  end

  private
    def make_params
      params.require(:model).permit(:name, :disc_type_id, :make_id, :model, :stability, :speed, :glide, :turn, :fade)
    end
end
