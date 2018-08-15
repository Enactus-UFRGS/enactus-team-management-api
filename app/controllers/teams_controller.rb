class TeamsController < ApplicationController
  before_action :set_team, only: [:show]

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Product was successfully created.' }
        format.json { render json: @team, status: :created, location: @team }
      else
        format.html { render action: "new" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :enactus_id)
  end
end
