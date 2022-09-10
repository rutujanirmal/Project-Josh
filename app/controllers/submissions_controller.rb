class SubmissionsController < ApplicationController

  def index
    @submission = Submission.select("id","subject","batch","details","deadline","teacher_id")
    if @submission.present?
      render status: 200, json: @submission
    else
      render status: 200, json: {msg: "No submission data present. Use /create_submission"}
    end
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save!
      render json: 'New Submission has been Added!'
    else
      render status: 400 , json: {error: "Unable to add new submission"}
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:subject,:batch,:details,:deadline,:teacher_id)
  end
  
end
