class TeachersController < ApplicationController

  def index
    @teachers = Teacher.select("id","teacher_name","email")
    if @teachers.present?
      render status: 200, json: @teachers
    else
      render status: 200, json: {msg: "No teachers data present. Use /create_teacher"}
    end
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save!
      render json: 'New Teacher has been Added!'
    else
      render status: 400 , json: {error: "Unable to add new teacher"}
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:teacher_name, :email)
  end

end
