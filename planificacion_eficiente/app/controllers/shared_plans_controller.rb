class SharedPlansController < ApplicationController
  before_action :set_shared_plan, only: [:show, :edit, :update, :destroy]

  # GET /shared_plans
  # GET /shared_plans.json
  def index
    @shared_plans = SharedPlan.all
  end

  # GET /shared_plans/1
  # GET /shared_plans/1.json
  def show
  end

  # GET /shared_plans/new
  def new
    @shared_plan = SharedPlan.new
  end

  # GET /shared_plans/1/edit
  def edit
  end

  # POST /shared_plans
  # POST /shared_plans.json
  def create
    @shared_plan = SharedPlan.new(shared_plan_params)

    respond_to do |format|
      if @shared_plan.save
        format.html { redirect_to @shared_plan, notice: 'Shared plan was successfully created.' }
        format.json { render :show, status: :created, location: @shared_plan }
      else
        format.html { render :new }
        format.json { render json: @shared_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_plans/1
  # PATCH/PUT /shared_plans/1.json
  def update
    respond_to do |format|
      if @shared_plan.update(shared_plan_params)
        format.html { redirect_to @shared_plan, notice: 'Shared plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_plan }
      else
        format.html { render :edit }
        format.json { render json: @shared_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_plans/1
  # DELETE /shared_plans/1.json
  def destroy
    @shared_plan.destroy
    respond_to do |format|
      format.html { redirect_to shared_plans_url, notice: 'Shared plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_plan
      @shared_plan = SharedPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_plan_params
      params.require(:shared_plan).permit(:plan_id, :user_id)
    end
end
