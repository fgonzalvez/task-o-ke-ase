class TasksController < ApplicationController
  def new

  end

  def create
    @task = Task.new(post_params)
  
    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit 
    @task = Task.find(params[:id])
  end
  
  def index
    @tasks = Task.all
  end

  def update
    @task = Task.find(params[:id])
     
    if @task.update_attributes(params[:task])
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private
    def post_params
      params.require(:task).permit(:title, :text)
    end
end
