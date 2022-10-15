class DogsController < ApplicationController
    def index
        dogs = Dog.all
        render json: dogs
    end

    def show
        dog = Dog.find(params[:id])
        render json: dog
    end 
    def create
        dog = @current_user.dogs.create!(cocktail_params)
        render json: dog, status: :created
    end

    def destroy
        dog = Dog.find(params[:id])
        dog.destroy
        head :no_content
    end

    private
    def dog_params
        params.permit(:name, :image, :description)
    end
end
