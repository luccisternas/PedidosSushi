class FrecuentesController < ApplicationController
  before_action :set_frecuente, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]

  respond_to :html

  def index
    @frecuentes = Frecuente.all
    respond_with(@frecuentes)
  end

  def show
    respond_with(@frecuente)
  end

  def new
    @frecuente = Frecuente.new
    respond_with(@frecuente)
  end

  def edit
  end

  def create
    @frecuente = Frecuente.new(frecuente_params)
    @frecuente.save
    respond_with(@frecuente)
  end

  def update
    @frecuente.update(frecuente_params)
    respond_with(@frecuente)
  end

  def destroy
    @frecuente.destroy
    respond_with(@frecuente)
  end

  private
    def set_frecuente
      @frecuente = Frecuente.find(params[:id])
    end

    def frecuente_params
      params.require(:frecuente).permit(:email, :cliente_id)
    end
end
