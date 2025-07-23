class ScoresController < ApplicationController
  before_action :set_score, only: %i[ show update destroy ]

  # GET /scores
  def index
    response.headers["Access-Control-Allow-Origin"] = "http://localhost:5173"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, PUT, PATCH, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email"

    if params[:workout_id]
      @scores = Score.where(workout_id: params[:workout_id])
    else
      @scores = Score.all
    end

    render json: @scores
  end

  # GET /scores/1
  def show
    response.headers["Access-Control-Allow-Origin"] = "http://localhost:5173"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, PUT, PATCH, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email"

    render json: @score
  end

  # POST /scores
  def create
    response.headers["Access-Control-Allow-Origin"] = "http://localhost:5173"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, PUT, PATCH, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email"

    @score = Score.new(score_params)

    if @score.save
      render json: @score, status: :created, location: @score
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scores/1
  def update
    response.headers["Access-Control-Allow-Origin"] = "http://localhost:5173"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, PUT, PATCH, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email"

    if @score.update(score_params)
      render json: @score
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end


  # OPTIONS /scores or /scores/:id
  def options
    response.headers["Access-Control-Allow-Origin"] = "http://localhost:5173"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, PUT, PATCH, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email"
    head :ok
  end

  # DELETE /scores/1
  def destroy
    @score.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def score_params
      params.expect(score: [ :workout_id, :athlete_id, :score ])
    end
end
