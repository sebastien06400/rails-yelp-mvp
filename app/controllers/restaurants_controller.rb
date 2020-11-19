class RestaurantsController < ApplicationController

    def index 
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def create
        
        @restaurant = Restaurant.new(restaurants_params)
        @restaurant.save 
        redirect_to restaurants_path
    
    end

    def new
        @restaurant = Restaurant.new
    end


    def home

    end
    
    def update 
        
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(restaurant_params)
        redirect_to restaurants_path(@restaurant)
    end


    private 
    def restaurants_params
        params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end 


end
