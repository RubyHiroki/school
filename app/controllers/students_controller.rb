class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
       redirect_to students_path, notice: "#{@student.name}を登録しました"
    else
       render action: :new
    end
  end

  def edit
    @student = find_student_by_id
  end

  def update
    @student = find_student_by_id
    if @student.update(student_params)
       redirect_to students_path, notice: "#{@student.name}を更新しました"
    else
       render action: :edit
    end
  end

  def destroy
    @student = find_student_by_id
    @student.destroy
    redirect_to students_path, notice: "#{@student.name}を削除しました"
  end

  private
  def student_params
    params.require(:student).permit(:name, :number, :subject_id)
  end

  def find_student_by_id
    Student.find(params[:id])
  end
end
