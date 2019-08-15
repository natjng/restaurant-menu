class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update]

    def show
        category_dne_or_not_users
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to @category
        else
            render :new
        end
    end

    def edit
        category_dne_or_not_users
    end

    def update
        if @category.update(category_params)
            redirect_to @category
        else
            render :edit
        end
    end

    private

    def set_category
        @category = Category.find_by(id: params[:id])
    end

    def category_params
        params.require(:category).permit(:name)
    end

    def category_dne_or_not_users
        if @category.nil?
            redirect_to categories_path, alert: "Category not found."
        elsif current_user.categories.uniq.none?(@category)
            redirect_to categories_path, alert: "😢It looks like you don't have access to this page."
        end
    end
end
