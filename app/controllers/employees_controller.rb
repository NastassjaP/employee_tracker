class EmployeesController < ApplicationController
def index
  @division=Division.find(params[:division_id])
  @employees=@division.employees.all
end

def new
  @division=Division.find(params[:division_id])
  @employee=@division.employees.new
end

def create
  @division=Division.find(params[:division_id])
  @employee=@division.employees.create(employee_params)
  redirect_to @division
end

def destroy
    @division = Division.find(params[:division_id])
    @employee = @division.employees.find(params[:id])
    @employee.destroy
    redirect_to @division
  end

  def edit
    @employee=Employee.find(params[:id])
    @division = @employee.division_id
  end

  def update
    @employee=Employee.find(params[:id])
    @division = @employee.division_id
    @employee.update(employee_params)
    redirect_to @division
  end


private
def employee_params
  params.require(:employee).permit(:employee_name,:division_id,:project_id)
end
end
