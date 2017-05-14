class UnitPlansController < ApplicationController
  before_action :set_unit_plan, only: [:show, :edit, :update, :destroy]

  # GET /unit_plans
  # GET /unit_plans.json
  def index
    @unit_plans = UnitPlan.all
  end

  # GET /unit_plans/1
  # GET /unit_plans/1.json
  def show
  end

  # GET /unit_plans/new
  def new
    @unit_plan = UnitPlan.new
    @previous_learnings = PreviousLearning.all
  end

  # GET /unit_plans/1/edit
  def edit
  end

  # POST /unit_plans
  # POST /unit_plans.json
  def create
    @unit_plan = UnitPlan.new(unit_plan_params)

    respond_to do |format|
      if @unit_plan.save
        format.html { render :json =>@unit_plan, notice: 'Unit plan was successfully created.' }
        format.json { render :show, status: :created, location: @unit_plan }
      else
        format.html { render :new }
        format.json { render json: @unit_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_plans/1
  # PATCH/PUT /unit_plans/1.json
  def update
    respond_to do |format|
      if @unit_plan.update(unit_plan_params)
        format.html { redirect_to @unit_plan, notice: 'Unit plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_plan }
      else
        format.html { render :edit }
        format.json { render json: @unit_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_plans/1
  # DELETE /unit_plans/1.json
  def destroy
    @unit_plan.destroy
    respond_to do |format|
      format.html { redirect_to unit_plans_url, notice: 'Unit plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_plan
      @unit_plan = UnitPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_plan_params
      params.require(:unit_plan).permit(:title, :total_hours_unit, :objective, :previous_learnings)
    end
end
