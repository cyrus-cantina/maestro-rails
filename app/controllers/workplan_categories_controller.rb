class WorkplanCategoriesController < ApplicationController
  before_action :set_workplan_category, only: %i[ show update destroy ]

  # GET /workplan_categories
  def index
    @workplan_categories = WorkplanCategory.all

    render json: @workplan_categories
  end

  # GET /workplan_categories/1
  def show
    render json: @workplan_category
  end

  # POST /workplan_categories
  def create
    @workplan_category = WorkplanCategory.new(workplan_category_params)

    if @workplan_category.save
      render json: @workplan_category, status: :created, location: @workplan_category
    else
      render json: @workplan_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workplan_categories/1
  def update
    if @workplan_category.update(workplan_category_params)
      render json: @workplan_category
    else
      render json: @workplan_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workplan_categories/1
  def destroy
    @workplan_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workplan_category
      @workplan_category = WorkplanCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workplan_category_params
      params.require(:workplan_category).permit(:name)
    end
end
