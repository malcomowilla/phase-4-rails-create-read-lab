class PlantsController < ApplicationController

    def index
    plants = Plant.all
    render json: plants
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create
        create_plant = Plant.create(params_creation)
        render json: create_plant, status: :created
    end

        private
    def params_creation
        params.permit(:name, :image, :price)
    end
end
