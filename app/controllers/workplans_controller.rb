class WorkplansController < ApplicationController
  before_action :set_workplan, only: %i[ show update destroy ]

  # GET /workplans
  def index
    @workplans = Workplan.all

    render json: @workplans
  end

  # GET /workplans/1
  def show
    render json: @workplan
  end

  # POST /workplans
  def create
    @workplan = Workplan.new(workplan_params)

    if @workplan.save
      render json: @workplan, status: :created, location: @workplan
    else
      render json: @workplan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workplans/1
  def update
    if @workplan.update(workplan_params)
      render json: @workplan
    else
      render json: @workplan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workplans/1
  def destroy
    @workplan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workplan
      @workplan = Workplan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workplan_params
      params.require(:workplan).permit(:name, :workplan_category_id, :status)
    end
end
