class HousesController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
wrap_parameters format: []    

    def index 
        house = House.all
        render json: house
    end

    def create 
        house = House.create!(house_params)
        if house 
            render json: house, status: :created
        end
    end

    def update 
        house = House.find(params[:id])
        if house 
            house.update!(house_params)
            render json: house, status: :updated
        end
    end

    def destroy 
        house = House.find(params[:id])
        if house
            house.destroy
            head :no_content
    end
    
    private 

    def house_params 
        params.permit(:location, :description, :tenant_id, :landlord_id, :image)
    end

    def record_not_found 
        render json: {error: "House not found"}, status: :not_found
    end

    def render_record_invalid 
        render json: {error: "Validation Error"}, status: :unprocessable_entity
    end
end
