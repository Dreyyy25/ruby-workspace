class StudentsController < ApplicationController
  def index
    @dojo = DojoBranch.find(params[:dojo_id])
    @students = @dojo.students.all
  end

  def show
    @student = DojoBranch.find(params[:dojo_id]).students.find(params[:student_id])
  end

  def edit
    @student = DojoBranch.find(params[:dojo_id]).students.find(params[:student_id])
  end

  def update
    @student = DojoBranch.find(params[:dojo_id]).students.find(params[:student_id])
    if @student.update(student_params)
      redirect_to "/dojos/#{@student[:dojo_id]}/students/#{@student[:id]}"
    else 
      render "edit", status: :unprocessable_content
    end
  end


  def new
    @student = Student.new
    @dojo_id = params[:dojo_id]
  end

  def create
    @dojo = DojoBranch.find(params[:dojo_id])
    @student = @dojo.students.new(student_params)
    if @student.save
      redirect_to "/dojos/#{@student[:dojo_id]}"
    else
      @dojo_id = params[:dojo_id]
      render "new", status: :unprocessable_content
    end
  end

  def destroy 
    @student = DojoBranch.find(params[:dojo_id]).students.find(params[:student_id])
    @student.destroy!
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  private 
  def student_params
    params.expect(student: [:first_name, :last_name, :email, :dojo_id])
  end
end
