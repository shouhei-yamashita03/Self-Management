class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end
  
  def show
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: 'タスクが正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    redirect_to tasks_path, notice: 'タスクが正常に削除されました。'
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: 'タスクが正常に作成されました。'
    else
      render :new
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:task_title, :task_detail, :task_comment, :start_time).merge(user_id: current_user.id)
  end
end
