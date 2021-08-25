module Api
  module V1
    class CompaniesController < Api::V1::ApiController
      before_action :authenticate_user!, except: %i[index show]

      def show
        @company = Company.find_by(id: params[:id])
      end

      def index
        @companies = Company.all
        render :index
      end

      def create
        @company = Company.new(company_params)
        if @company.save
          render :show
        else
          render json: { errors: job.errors }, status: :internal_server_error
        end
      end




      private
      def company_params
        params.require(:company).permit(:company_name, :company_website_url, :profile_description)
      end
    end
  end
end
