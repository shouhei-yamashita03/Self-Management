class HealthsController < ApplicationController
  before_action :set_health, only: [:show, :edit, :update]

  def index
    @healths = Health.all
  end
  
  def new
    @health = Health.new
  end

  def show
  end

  def edit
  end

  def update
    if @health.update(health_params)
      redirect_to healths_path, notice: 'ヘルスが正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @health = Health.find_by(id: params[:id])
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

  private

  def set_health
    @health = Health.find(params[:id])
  end

  def health_params
    params.require(:health).permit(:health_title, :wake_up_time_at, :bedtime_at, :stature, :body_weight, :health_detail, :health_comment, :start_time).merge(user_id: current_user.id)
  end
end
