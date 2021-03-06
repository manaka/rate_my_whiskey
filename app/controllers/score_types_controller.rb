class ScoreTypesController < ApplicationController
  before_action :set_score_type, only: %i[ show edit update destroy ]

  # GET /score_types or /score_types.json
  def index
    @score_types = ScoreType.all
  end

  # GET /score_types/1 or /score_types/1.json
  def show
  end

  # GET /score_types/new
  def new
    @score_type = ScoreType.new
  end

  # GET /score_types/1/edit
  def edit
  end

  # POST /score_types or /score_types.json
  def create
    @score_type = ScoreType.new(score_type_params)

    respond_to do |format|
      if @score_type.save
        format.html { redirect_to @score_type, notice: "Score type was successfully created." }
        format.json { render :show, status: :created, location: @score_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @score_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_types/1 or /score_types/1.json
  def update
    respond_to do |format|
      if @score_type.update(score_type_params)
        format.html { redirect_to @score_type, notice: "Score type was successfully updated." }
        format.json { render :show, status: :ok, location: @score_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @score_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_types/1 or /score_types/1.json
  def destroy
    @score_type.destroy
    respond_to do |format|
      format.html { redirect_to score_types_url, notice: "Score type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_type
      @score_type = ScoreType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def score_type_params
      params.require(:score_type).permit(:name)
    end
end
