class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
       redirect_to subjects_path, notice: "#{@subject.department}を登録しました"
    else
       render action: :new
    end
  end

  def new
    @subject = Subject.new
  end

  def edit
    @subject = find_subject_by_id
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = find_subject_by_id
    if @subject.update(subject_params)
       redirect_to subjects_path, notice: "#{@subject.department}を更新しました"
    else
       render action: :edit
    end
  end

  def destroy
    @subject = find_subject_by_id
    @subject.destroy
    redirect_to subjects_path, notice: "#{@subject.department}を削除しました"
  end

  private
  def subject_params
    params.require(:subject).permit(:department, :content, :teacher)
  end

  def find_subject_by_id
    Subject.find(params[:id])
  end
end
