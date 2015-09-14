class OwnsController < ApplicationController
  def index
    @owns = Own.all
  end

  def show
    @own = Own.find(params[:id])
  end

  def new
    @own = Own.new
  end

  def edit
    @own = Own.find(params[:id])
  end

  def create
    @own = Own.new(own_params)

    if @own.save
      redirect_to owns_path
    else
      render 'new'
    end
  end

  def update
    @own = Own.find(params[:id])

    if @own.update(own_params)
      redirect_to owns_path
    else
      render 'edit'
    end
  end

  def destroy
    @own = Own.find(params[:id])
    @own.destroy

    redirect_to owns_path
  end

  private
    def own_params
      params.require(:own).permit(:model_id, :person_id, :inventory)
    end


end
