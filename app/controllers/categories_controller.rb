class CategoriesController < ApplicationController
    def show
        @categories = Category.find(params[:id])
        @memos = Memo.where(category_id:params[:id])
    end

    def edit
        @memo = Memo.find(params[:id])
    end
end
