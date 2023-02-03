class PetsittersController < ApplicationController
  before_action :set_petsitter, only: %i[ show update destroy ]

  # GET /petsitters
  def index
    @petsitters = Petsitter.all

    render json: @petsitters
  end

  # GET /petsitters/1
  def show
    render json: @petsitter
  end

  # POST /petsitters
  def create
    @petsitter = Petsitter.new(petsitter_params)

    if @petsitter.save
      render json: @petsitter, status: :created, location: @petsitter
    else
      render json: @petsitter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /petsitters/1
  def update
    if @petsitter.update(petsitter_params)
      render json: @petsitter
    else
      render json: @petsitter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /petsitters/1
  def destroy
    @petsitter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petsitter
      @petsitter = Petsitter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def petsitter_params
      params.require(:petsitter).permit(:first_name, :last_name, :email)
    end
end
