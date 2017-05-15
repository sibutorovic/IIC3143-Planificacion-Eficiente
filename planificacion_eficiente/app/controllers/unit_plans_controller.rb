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
    @learning_objectives = LearningObjective.all
    @abilities = Ability.all
    @attitudes = Attitude.all

    @previous_learning = PreviousLearning.new
    @attitude = Attitude.new
    @ability = Ability.new
    @learning_objective = LearningObjective.new
  end

  # GET /unit_plans/1/edit
  def edit
    @previous_learnings = PreviousLearning.all
    @learning_objectives = LearningObjective.all
    @attitudes = Attitude.all
    @abilities = Ability.all


  end

  # POST /unit_plans
  # POST /unit_plans.json
  def create
    learning_objectives =  params["unit_plan"]["learning_objectives"]
    abilities = params["unit_plan"]["abilities"]
    attitudes = params["unit_plan"]["attitudes"]
    previous_learnings = params["unit_plan"]["previous_learnings"]

    learn_objectives_objs= LearningObjective.where(id: learning_objectives)
    abilities_objs = Ability.where(id: abilities)
    attitude_objs = Attitude.where(id: attitudes)
    previous_learnings_objs = PreviousLearning.where(id: previous_learnings)

    unit_plan_params_new = unit_plan_params.slice(:title, :total_hours_unit, :objective)
    @unit_plan = UnitPlan.new(unit_plan_params_new)

    learn_objectives_objs.each do |l|
      @unit_plan.learning_objectives << l
    end

    abilities_objs.each do |a|
      @unit_plan.abilities << a
    end

    attitude_objs.each do |at|
      @unit_plan.attitudes << at
    end

    previous_learnings_objs.each do |prev|
      @unit_plan.previous_learnings << prev
    end

    respond_to do |format|
      if @unit_plan.save
        format.html {redirect_to @unit_plan, notice: 'Unit plan was successfully created.' }
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
    raise unit_plan_params.inspect
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
      params.require(:unit_plan).permit(:title, :total_hours_unit, :objective, :previous_learnings, :attitudes, :abilities,
      :learning_objectives)
    end
end
