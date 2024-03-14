class HomesController < ApplicationController
  def index
    @tasks = Task.all
    @healths = Health.all
    @reports = Report.all
  end
end
