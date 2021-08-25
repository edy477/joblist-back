module Api
  module V1
    class JobTypesController < Api::V1::ApiController
      before_action :authenticate_user!, except: [:index]
      include ActAsApiRequest
      def index
        @job_types = JobType.all
        render :index
      end

      def create
        @job_types = JobType.new(job_type_params)
        if @job_types.save
          render :show, status: :ok
        end
      end


      private

      def job_type_params
        params(:job_type).require(:job_type)
      end
    end
  end
end
