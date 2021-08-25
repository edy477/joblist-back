module Api
  module V1
    class JobsController < Api::V1::ApiController
      before_action :authenticate_user!, except: %i[index show]

      def show
        @job = Job.find_by(id: params[:id])
      end

      def new
        @job = Job.new
      end

      # needs refactoring
      def index
        if params[:company_id]
          @jobs = Company.find(params[:company_id]).jobs
          render :index, status: :ok
        elsif params[:job_type_id]
          @jobs = Company.find(params[:job_type_id]).jobs
          render :index, status: :ok
        else
          @jobs = Job.all
          render :index, status: :ok
        end
      end

      def create
        @job = Job.new(job_params)
        if @job.save
          render :show, status: :ok
        else
          render json: { errors: job.errors }, status: :internal_server_error
        end
      end

      def update
        @job = Job.find_by(id: params[:id])

        if @job.update_attributes(job_params)
          render :show
        else
          render json: { errors: { job: ['error'] } }, status: :internal_server_error
        end
      end

      def destroy
        @job = Job.find_by(id: params[:id])
        @job.destroy
        render json: {}
      end

      private

      def job_params
        params.require(:job).permit(:job_description, :job_type_id, :company_id, :job_location_id,
                                    :is_active)
      end
    end
  end
end
