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
        @task = Task.create(task_params)
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)

        redirect_to task_path(@task)
    end

    private

    def task_params
        params.require(:task).permit(:name, :description, :status)
    end

end
