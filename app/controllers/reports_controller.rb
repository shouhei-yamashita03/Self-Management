class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update]
  
  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end
  
  def show
  end

  def edit
  end

  def update
    if @report.update(report_params)
      redirect_to reports_path, notice: 'PDCAが正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @report = Report.find_by(id: params[:id])
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

  private

  def set_report
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:report_title, :report_detail, :report_comment, :start_time).merge(user_id: current_user.id)
  end
end
