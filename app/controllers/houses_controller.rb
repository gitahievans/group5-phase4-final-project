class HousesController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
wrap_parameters format: []    

    def index 
        house = House.all
        render json: house
    end

    def create 
        house = House.create!(house_params)
        render json: house, status: :created
    end

    private 

    def house_params 
        params.permit(:location, :description, :tenant_id, :landlord_id, :image)
    end

    def render_record_invalid 
        render json: {error: "Validation Error"}, status: :unprocessable_entity
    end
end
