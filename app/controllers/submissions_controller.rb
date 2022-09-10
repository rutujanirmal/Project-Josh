class SubmissionsController < ApplicationController

  def index
    @submission = Submission.select("id","subject","batch","details","deadline","teacher_id")
    if @submission.present?
      render status: 200, json: @submission
    else
      render status: 200, json: {msg: "No submission data present. Use /create_submission"}
    end
  end
  
end
