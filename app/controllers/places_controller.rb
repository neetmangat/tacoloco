class PlacesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    include Pagy::Backend

    def index
        @pagy, @places = pagy(Place.all, page: params[:page], items: 5)
    end

    def new
        @place = Place.new 
    end

    def show
        @place = Place.find(params[:id])
        @comment = Comment.new 
        @photo = Photo.new 
    end

    def edit
        @place = Place.find(params[:id])

        if @place.user != current_user
            return render plain: 'Not Allowed', status: :forbidden
        end
    end

    def update
        @place = Place.find(params[:id])
        if @place.user != current_user
            return render plain: 'Not Allowed', status: :forbidden
        end

        @place.update_attributes(place_params)
        if @place.valid?
            redirect_to place_path(@place)
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @place = Place.find(params[:id])
        if @place.user != current_user
            return render plain: 'Not Allowed', status: :forbidden
        end

        @place.destroy
        redirect_to root_path
    end

    def create
        @place = current_user.places.create(place_params)
        if @place.valid?
            redirect_to place_path(@place)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def place_params
        params.require(:place).permit(:name, :description, :address)
    
    end
    

end
