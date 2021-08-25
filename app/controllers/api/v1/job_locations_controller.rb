module Api
  module V1
    class JobLocationsController < Api::V1::ApiController
      def index
        @job_locations = JobLocation.all
      end

      def create
        @job_location =  JobLocation.new(job_locations_parameters)

        if @job_location.save

        end
      end

      private

      def job_locations_parameters
        params.require(:job_location).permit(:city, :country, :state, :street_address, :zip)
      end
    end
  end
end
