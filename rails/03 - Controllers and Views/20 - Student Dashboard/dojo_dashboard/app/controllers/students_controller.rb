class StudentsController < ApplicationController
  def index
    @dojo = Dojo.find(params[:dojo_id])
    @students = @dojo.students
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
    @student = @dojo.students.new
    @dojos = Dojo.all
  end

  def create
    @dojo = Dojo.find(params[:dojo_id])
    @student = @dojo.students.new(student_params)
    if @student.save
      redirect_to "/dojos/#{@student.dojo_id}"
    else
      @dojos = Dojo.all
      # Rails 8 (Turbo) needs this status, or the page with the errors won't show
      render "new", status: :unprocessable_entity
    end
  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = @dojo.students.find(params[:id])
    @classmates = @dojo.students.where.not(id: @student.id)
  end

  def edit
    @dojo = Dojo.find(params[:dojo_id])
    @student = @dojo.students.find(params[:id])
    @dojos = Dojo.all
  end

  def update
    @dojo = Dojo.find(params[:dojo_id])
    @student = @dojo.students.find(params[:id])
    if @student.update(student_params)
      redirect_to "/dojos/#{@student.dojo_id}/students/#{@student.id}"
    else
      @dojos = Dojo.all
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @dojo = Dojo.find(params[:dojo_id])
    @student = @dojo.students.find(params[:id])
    @student.destroy
    redirect_to "/dojos/#{@dojo.id}"
  end

  private
    def student_params
      params.expect(student: [:first_name, :last_name, :email, :dojo_id])
    end
end
