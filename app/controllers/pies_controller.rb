class PiesController < ApplicationController
  before_action :set_pie, only: [:show, :update, :destroy]

  # GET /pies
  def index
    @pies = Pie.all

    render json: @pies, except: [:created_at, :updated_at]
  end

  # GET /pies/1
  def show
    render json: @pie, except: [:created_at, :updated_at]
  end

  # POST /pies
  def create
    
    @pie = Pie.new(pie_params)

    if params["pie"]["pieces"]
      @pie.pieces = params["pie"]["pieces"]
    end

    if @pie.save
      render json: @pie, status: :created, location: @pie
    else
      render json: @pie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pies/1
  def update
    if @pie.update(pie_params)
      render json: @pie
    else
      render json: @pie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pies/1
  def destroy
    @pie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pie
      @pie = Pie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pie_params
      pp = params.require(:pie).permit(:id, :title, :pieces, :chunks, :user_id, :created_at, :updated_at)

      if params["pie"]["chunks"]
        pp["chunks"] = params["pie"]["chunks"]
      end

      if params["pie"]["chunks"]
        pp["pieces"] = params["pie"]["pieces"]
      end
      
      pp
    end
end
