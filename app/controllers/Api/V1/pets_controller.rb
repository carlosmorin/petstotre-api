# frozen_string_literal: true

module Api
  module V1
    # Pets Controller
    class PetsController < ApplicationController
      before_action :set_pet, only: %i[show update destroy]

      # GET /pets
      def index
        limit = params[:limit].present? ? params[:limit] : 100
        @pets = Pet.all.limit(limit)
        filter_by_category if params[:category].present?
        render json: @pets
      end

      # GET /pets/1
      def show
        render json: @pet
      end

      # POST /pets
      def create
        @pet = Pet.new(pet_params)

        if @pet.save
          render json: @pet, status: :created, location: @pet
        else
          render json: @pet.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /pets/1
      def update
        if @pet.update(pet_params)
          render json: @pet
        else
          render json: @pet.errors, status: :unprocessable_entity
        end
      end

      # DELETE /pets/1
      def destroy
        @pet.destroy
      end

      private

      def set_pet
        @pet = Pet.find(params[:id])
      end

      def pet_params
        params.require(:pet).permit(:name, :tag, :status, :category_id)
      end
    end
  end
end
