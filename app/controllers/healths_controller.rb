class HealthsController < ApplicationController

  def index
    @healths = Health.all
  end
  
  def new
    @health = Health.new
  end

  def show
    @health = Health.find(params[:id])
  end

  def edit
    @health = Health.find(params[:id])
  end

  def update
    @health = Health.find(params[:id])
    if @health.update(health_params)
      redirect_to healths_path, notice: 'ヘルスが正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @health.destroy
    redirect_to healths_path, notice: 'ヘルスが正常に削除されました。'
  end

  def create
    @health = Health.new(health_params)
    if @health.save
      redirect_to healths_path, notice: 'ヘルスが正常に作成されました。'
    else
      render :new
    end
  end

  def health_params
    params.require(:health).permit(:health_title, :health_name, :wake_up_time_at, :bedtime_at, :stature, :body_weight, :health_detail, :health_comment, :start_time).merge(user_id: current_user.id)
  end
end
