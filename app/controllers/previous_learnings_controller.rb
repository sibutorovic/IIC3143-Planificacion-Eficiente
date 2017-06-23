class PreviousLearningsController < ApplicationController
  before_action :set_previous_learning, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /previous_learnings
  # GET /previous_learnings.json
  def index
    @previous_learnings = PreviousLearning.all
  end

  # GET /previous_learnings/1
  # GET /previous_learnings/1.json
  def show
  end

  # GET /previous_learnings/new
  def new
    @previous_learning = PreviousLearning.new
  end

  # GET /previous_learnings/1/edit
  def edit
  end

  # POST /previous_learnings
  # POST /previous_learnings.json
  def create
    @previous_learning = PreviousLearning.new(previous_learning_params)
    raise @previous_learning.inspect
    respond_to do |format|
      if @previous_learning.save
        format.html { redirect_to @previous_learning, notice: 'Previous learning was successfully created.' }
        format.json { render json: @previous_learning, status: :created, location: @previous_learning }
      else
        format.html { render :new }
        format.json { render json: @previous_learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /previous_learnings/1
  # PATCH/PUT /previous_learnings/1.json
  def update
    respond_to do |format|
      if @previous_learning.update(previous_learning_params)
        format.html { redirect_to @previous_learning, notice: 'Previous learning was successfully updated.' }
        format.json { render :show, status: :ok, location: @previous_learning }
      else
        format.html { render :edit }
        format.json { render json: @previous_learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /previous_learnings/1
  # DELETE /previous_learnings/1.json
  def destroy
    @previous_learning.destroy
    respond_to do |format|
      format.html { redirect_to previous_learnings_url, notice: 'Previous learning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_previous_learning
      @previous_learning = PreviousLearning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def previous_learning_params
      params.require(:previous_learning).permit(:title, :content, :generic_activity, :achievement_indicator, :estimated_time)
    end
end
