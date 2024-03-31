class StresssController < ApplicationController

  def index
    @stress = Stress.new
  end

  def show
    @stress = Stress.find(params[:id])
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
    @stress = Stress.find(params[:id])
  end

  def update
    @stress = Stress.find(params[:id])
    if @stress.update(stress_params)
      redirect_to stresss_path(@stress), notice: "ストレスチェックシートを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @stress = Stress.find(params[:id])
    @stress.destroy
    redirect_to stresss_index_path, notice: "ストレスチェックシートを削除しました。"
  end
  
  private
    def stress_params
      params.require(:stress).permit(:stress_response, :reason_for_yes, :reason_for_no, :stress_comment, :task_response, :task_response_plan, :stress_response_sleep, :stress_response_exercise, :task_comment, :task_reason_for_yes, :task_reason_for_no, :stress_reason_for_yes, :stress_reason_for_no, :stress_reason_yes, :stress_reason_no)
    end
end
