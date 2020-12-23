class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def create
    employee = Employee.new(employee_params)
    if employee.save
      redirect_to employee
    else
      render :new
    end
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.where(id: params[:id]).first
  end

  def show
    @employee = Employee.where(id: params[:id]).first
  end

  def update
    @employee = Employee.where(id: params[:id]).first

    if @employee.update(employee_params)
      redirect_to @employee
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.where(id: params[:id]).first
    @employee.destroy
    redirect_to root_path
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email_id, :phone_number, :address)
  end
end