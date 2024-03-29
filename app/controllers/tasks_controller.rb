class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new 
  end

 
  def create
    @task = Task.new(task_params)
    @task.save
  
      # no need for app/views/restaurants/create.html.erb
    redirect_to tasks_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to tasks_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path(@task)
  end
  
  private
  
    def task_params
      params.require(:task).permit(:title, :details)
    end

end
# fffffffffffffffffffff
