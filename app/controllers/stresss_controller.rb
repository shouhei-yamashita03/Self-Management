class StresssController < ApplicationController
  before_action :set_stress, only: [:show, :edit, :update, :destroy]

  def index
    @stress = Stress.new
    @latest_stress_sheet = Stress.last
  end

  def show
  end

  def create
    @stress = Stress.new(stress_params)
    @stress.user_id = current_user.id
    if @stress.save
      redirect_to stresss_path(@stress), notice: "ストレスチェックシートを登録しました。"
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @stress.update(stress_params)
      redirect_to stresss_path(@stress), notice: "ストレスチェックシートを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @stress.destroy
    redirect_to stresss_index_path, notice: "ストレスチェックシートを削除しました。"
  end
  
  private

  def set_stress
    @stress = Stress.find(params[:id])
  end

  def stress_params
    params.require(:stress).permit(:stress_response, :reason_for_yes, :reason_for_no, :stress_comment, :task_response, :task_response_plan, :stress_response_sleep, :stress_response_exercise, :task_comment, :task_reason_for_yes, :task_reason_for_no, :stress_reason_for_yes, :stress_reason_for_no, :stress_reason_yes, :stress_reason_no)
  end
end
