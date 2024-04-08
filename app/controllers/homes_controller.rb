class HomesController < ApplicationController
  def index
    @tasks = Task.all
    @healths = Health.all
    @reports = Report.all
    # 今日のタスクとヘルスのデータ
    @today_tasks = Task.where("DATE(start_time) = ?", Date.today)
    @today_healths = Health.where("DATE(start_time) = ?", Date.today)
    
    # 前日のタスクとヘルスのデータ
    @yesterday_tasks = Task.where("DATE(start_time) = ?", Date.yesterday)
    @yesterday_healths = Health.where("DATE(start_time) = ?", Date.yesterday)
  end
end
