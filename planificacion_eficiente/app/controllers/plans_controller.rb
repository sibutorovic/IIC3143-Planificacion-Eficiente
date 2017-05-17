class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  # GET /plans
  # GET /plans.json
  def index
    @plans = Plan.all
  end

  # GET /plans/1
  # GET /plans/1.json
  def show

    @unit_plans = @plan.unit_plans
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "pdf",
          #:disposition => "inline",
          :template => "plans/show.pdf.erb",
          :layout => "pdf_layout.pdf.erb"
        end
    end
  end

  # GET /plans/new
  def new
    @plan = Plan.new
    @grades = ['Pre-Kinder','Kinder','Primero Básico','Segundo Básico',
      'Tercero Básico','Cuarto Básico','Quinto Básico','Sexto Básico',
    'Séptimo Básico','Octavo Básico','Primero Medio','Segundo Medio',
  'Tercero Medio','Cuarto Medio']
    @subjects = ['Matemáticas','Lenguaje y Comunicación','Historia',
      'Educación Física','Música']
    @unit_plans = UnitPlan.all


  end

  # GET /plans/1/edit
  def edit
  end

  # POST /plans
  # POST /plans.json
  def create
    @plan = Plan.new(plan_params)
    unit_plans = params["plan"]["unit_plans"]
    unit_plans_objs = UnitPlan.where(id: unit_plans)
    unit_plans_objs.each do |l|
      @plan.unit_plans << l
    end


    respond_to do |format|
      if @plan.save
        format.html { redirect_to @plan, notice: 'Plan was successfully created.' }
        format.json { render :show, status: :created, location: @plan }
      else
        format.html { render :new }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plans/1
  # PATCH/PUT /plans/1.json
  def update
    respond_to do |format|
      if @plan.update(plan_params)
        format.html { redirect_to @plan, notice: 'Plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan }
      else
        format.html { render :edit }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plans/1
  # DELETE /plans/1.json
  def destroy
    @plan.destroy
    respond_to do |format|
      format.html { redirect_to plans_url, notice: 'Plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      @plan = Plan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_params
      params.require(:plan).permit(:grade, :subject, :year, :total_hours)
    end
end
