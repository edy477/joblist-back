module Api
  module V1
    class JobTypesController < Api::V1::ApiController
      before_action :authenticate_user!, :except => [:index]
      include ActAsApiRequest
      def index
        @job_types = JobType.all
        render :index
      end


      private
      def job_type_params
        params(:job_type).require(:job_type)

      end
    end
  end
end