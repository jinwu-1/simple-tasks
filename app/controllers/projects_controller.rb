class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.create(project_params)
        if @project.valid?
            redirect_to project_path(@project)
        else
            flash[:errors] = @project.errors.full_messages
            redirect_to user_path(@project.user)
        end
    end

    def edit
        @project = Project.find(params[:id])
    end

    def update
        @project = Project.find(params[:id])
        @project.update(project_params)

        redirect_to project_path(@project)
    end

    def destroy
        @project = Project.find(params[:id])
        @user = @project.user
        @project.destroy
        redirect_to user_path(@user)
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :id)
    end

end
