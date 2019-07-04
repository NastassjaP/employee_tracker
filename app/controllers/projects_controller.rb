class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def edit
    @project=Project.find(params[:id])
  end

  def update
    @project=Project.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end

  def new
    @project=Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to @project
  end

  def show
    @project=Project.find(params[:id])
    @employees=@project.employees.all
  end


  def destroy
    @project=Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def add
    @project=Project.find(params[:id])
    @employee=Employee.find(params[:project][:employee_id])
    @employee.update(:project_id=>@project.id)
    redirect_to @project
  end

  private
  def project_params
    params.require(:project).permit(:name,:status,:employee_id,:project_id)
  end


end
