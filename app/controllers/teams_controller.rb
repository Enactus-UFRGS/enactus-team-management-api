class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save then
      render "show"
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :enactus_id)
  end
end
