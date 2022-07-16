class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
    end

    def new
    end

    def create
        @category = Category.new(category_params)

        if @category.save
            render json: @category.to_json
        else
            redirect_to :new
        end
    end


    private
    def category_params
        params.permit(:name)
    end
end