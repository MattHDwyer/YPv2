class ActiveSquadsController < ApplicationController
  before_action :set_active_squad, only: [:show, :edit, :update, :destroy]

  # GET /active_squads
  # GET /active_squads.json
  def index
    @active_squads = ActiveSquad.all
  end

  # GET /active_squads/1
  # GET /active_squads/1.json
  def show
  end

  # GET /active_squads/new
  def new
    @active_squad = ActiveSquad.new
  end

  # GET /active_squads/1/edit
  def edit
  end

  # POST /active_squads
  # POST /active_squads.json
  def create
    @active_squad = ActiveSquad.new(active_squad_params)

    respond_to do |format|
      if @active_squad.save
        format.html { redirect_to @active_squad, notice: 'Active squad was successfully created.' }
        format.json { render :show, status: :created, location: @active_squad }
      else
        format.html { render :new }
        format.json { render json: @active_squad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /active_squads/1
  # PATCH/PUT /active_squads/1.json
  def update
    respond_to do |format|
      if @active_squad.update(active_squad_params)
        format.html { redirect_to @active_squad, notice: 'Active squad was successfully updated.' }
        format.json { render :show, status: :ok, location: @active_squad }
      else
        format.html { render :edit }
        format.json { render json: @active_squad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /active_squads/1
  # DELETE /active_squads/1.json
  def destroy
    @active_squad.destroy
    respond_to do |format|
      format.html { redirect_to active_squads_url, notice: 'Active squad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_squad
      @active_squad = ActiveSquad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_squad_params
      params.require(:active_squad).permit(:team_id, :student_id)
    end
end
