class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end
  
  def show
    @report = Report.find(params[:id])
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    if @report.update(report_params)
      redirect_to reports_path, notice: 'PDCAが正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @report.destroy
    redirect_to reports_path, notice: 'PDCAが正常に削除されました。'
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to reports_path, notice: 'PDCAが正常に作成されました。'
    else
      render :new
    end
  end

  def report_params
    params.require(:report).permit(:report_title, :report_name, :report_detail, :report_comment, :start_time).merge(user_id: current_user.id)
  end
end
