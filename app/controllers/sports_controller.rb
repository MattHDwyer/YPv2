class SportsController < ApplicationController
  before_action :set_sport, only: [:show, :edit, :update, :destroy]

  # GET /sports
  # GET /sports.json

  def select
  
  end

  def select_save
    redirect_to '/select'
  end

  def index
    puts "HERE"
    # raise
    puts params
    if params[:season] == "both"
      @sports = Sport.all
    elsif params[:season] == "summer"
      @sports = Sport.where(season: Season.find(1))
    elsif params[:season] == "winter"
      @sports = Sport.where(season: Season.find(2))
    end
    puts "GOT TO HERE"
    render :index

    # @sports = Sport.all

    # @winter_sports = []
    # @summer_sports = []
   

    # @sports.each do |sport| 
    #   if sport.season[:id] == 2
    #       @winter_sports << sport
    #   elsif
    #      sport.season[:id] == 1
    #       @summer_sports << sport
    #   end
    # end 
    #new variable (@season) when selected 
  end

  # def change_season
  #   if params[:season] == "Summer"
  #     @flag = "Summer"
  #   elsif params[:season] == "Winter"
  #     @flag = "Winter"
  #   end

  #   p params

  #   redirect_to '/sports'

  # end

  # GET /sports/1
  # GET /sports/1.json
  def show
  end

  # GET /sports/new
  def new
    @sport = Sport.new
    authorize(Coach)
  end

  # GET /sports/1/edit
  def edit
    authorize(Coach)
  end

  # POST /sports
  # POST /sports.json
  def create
    @sport = Sport.new(sport_params)

    respond_to do |format|
      if @sport.save
        format.html { redirect_to @sport, notice: 'Sport was successfully created.' }
        format.json { render :show, status: :created, location: @sport }
      else
        format.html { render :new }
        format.json { render json: @sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sports/1
  # PATCH/PUT /sports/1.json
  def update
    respond_to do |format|
      if @sport.update(sport_params)
        format.html { redirect_to @sport, notice: 'Sport was successfully updated.' }
        format.json { render :show, status: :ok, location: @sport }
      else
        format.html { render :edit }
        format.json { render json: @sport.errors, status: :unprocessable_entity }
      end
    end
    authorize(Coach)
  end

  # DELETE /sports/1
  # DELETE /sports/1.json
  def destroy
    @sport.destroy
    respond_to do |format|
      format.html { redirect_to sports_url, notice: 'Sport was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize(Coach)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport
      @sport = Sport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sport_params
      params.require(:sport).permit(:name, :season_id, :gender)
    end

end
