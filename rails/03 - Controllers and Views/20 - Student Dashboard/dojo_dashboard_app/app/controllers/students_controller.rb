class StudentsController < ApplicationController
  before_action :set_dojo
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = @dojo.students
  end

  def new
    @student = @dojo.students.build
  end

  def create
    @student = @dojo.students.build(student_params)

    if @student.save
      flash[:notice] = "Student successfully created!"
      redirect_to dojo_path(@dojo)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @dojo and @student set by before_actions
  end

  def edit
    # @dojo and @student set by before_actions
  end

  def update
    if @student.update(student_params)
      flash[:notice] = "Student successfully updated!"
      redirect_to dojo_student_path(@dojo, @student)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy
    flash[:notice] = "Student successfully deleted!"
    redirect_to dojo_path(@dojo)
  end

  private

  def set_dojo
    @dojo = Dojo.find(params[:dojo_id])
  end

  def set_student
    @student = @dojo.students.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email)
  end
end