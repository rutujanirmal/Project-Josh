class StudentsController < ApplicationController
  
  def index
    @students = Student.select("id","student_name","year","roll_no","batch")
    if @students.present?
      render status: 200, json: @students
    else
      render status: 200, json: {msg: "No students data present. Use /create_student"}
    end
  end
  
end
