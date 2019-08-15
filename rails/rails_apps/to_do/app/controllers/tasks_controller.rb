class TasksController < ApplicationController
  def index
   p  @Tasks = Task.all
  end

  def new
    p @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
      puts @task.errors.full_messages
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
    redirect_to :back
  end

  def complete
    @task = Task.find(params[:id])
    @task.update_attribute(:completed, params[:completed])
    redirect_to task_path
  end

  private

  def task_params
    #whitelisting parameters
    params.require(:task).permit(:title, :details, :completed)
  end

end
