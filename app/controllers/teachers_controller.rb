class TeachersController < ApplicationController

  def index
    @teachers = Teacher.select("id","teacher_name","email")
    if @teachers.present?
      render status: 200, json: @teachers
    else
      render status: 200, json: {msg: "No teachers data present. Use /create_teacher"}
    end
  end

end
