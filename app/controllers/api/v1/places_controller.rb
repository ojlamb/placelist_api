module Api
  module V1
    class PlacesController < ApplicationController
      before_action :set_place, only: [:show, :update, :destroy]

      # GET /places
      def index
        @places = Place.all

        render json: @places
      end

      # GET /places/1
      def show
        render json: @place
      end

      # POST /places
      def create
        @place = Place.new(place_params)
        if @place.save
          render json: @place, status: :created
        else
          render json: @place.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /places/1
      def update
        if @place.update(place_params)
          render json: @place
        else
          render json: @place.errors, status: :unprocessable_entity
        end
      end

      # DELETE /places/1
      def destroy
        @place.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_place
          @place = Place.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def place_params
          params.require(:place).permit(:name, :address, :description,:long_name, :upvotes, :category, :lat, :lon).merge(user_id: @current_user.id)
        end
    end
  end
end
