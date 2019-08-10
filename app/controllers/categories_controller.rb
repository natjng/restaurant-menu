class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update]

    def new
        @category = Category.new
    end

    private

    def set_category
        @category = Category.find_by(id: params[:id])
    end
end
