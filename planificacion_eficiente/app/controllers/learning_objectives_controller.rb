class LearningObjectivesController < ApplicationController
  before_action :set_learning_objective, only: [:show, :edit, :update, :destroy]

  # GET /learning_objectives
  # GET /learning_objectives.json
  def index
    @learning_objectives = LearningObjective.all
  end

  # GET /learning_objectives/1
  # GET /learning_objectives/1.json
  def show
  end

  # GET /learning_objectives/new
  def new
    @learning_objective = LearningObjective.new
  end

  # GET /learning_objectives/1/edit
  def edit
  end

  # POST /learning_objectives
  # POST /learning_objectives.json
  def create
    @learning_objective = LearningObjective.new(learning_objective_params)

    respond_to do |format|
      if @learning_objective.save
        format.html { redirect_to @learning_objective, notice: 'Learning objective was successfully created.' }
        format.json { render :show, status: :created, location: @learning_objective }
      else
        format.html { render :new }
        format.json { render json: @learning_objective.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learning_objectives/1
  # PATCH/PUT /learning_objectives/1.json
  def update
    respond_to do |format|
      if @learning_objective.update(learning_objective_params)
        format.html { redirect_to @learning_objective, notice: 'Learning objective was successfully updated.' }
        format.json { render :show, status: :ok, location: @learning_objective }
      else
        format.html { render :edit }
        format.json { render json: @learning_objective.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learning_objectives/1
  # DELETE /learning_objectives/1.json
  def destroy
    @learning_objective.destroy
    respond_to do |format|
      format.html { redirect_to learning_objectives_url, notice: 'Learning objective was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learning_objective
      @learning_objective = LearningObjective.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learning_objective_params
      params.require(:learning_objective).permit(:name)
    end
end
