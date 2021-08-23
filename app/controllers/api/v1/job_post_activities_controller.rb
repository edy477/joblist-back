module Api
  module V1
class JobPostActivitiesController < Api::V1::ApiController
  before_action :authenticate_user!, :except => [:index,:show]
  def index
    if params[:user_id]
      @jobs_applications= User.find(params[:user_id]).job_post_activities
      render :index
      else
        @jobs_applications = JobPostActivity.all

    end

    def crate
      @job_application = JobPostActivity.new(job_post_activities_params)
      if @job_application.save
        render :show
      end

    end

    private
    def job_post_activities_params
      params.require(:job_post_activity).permit(:user_id,:job_post_id,:apply_date)
    end
  end
  end
  end
  end