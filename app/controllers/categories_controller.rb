class CategoriesController < ApplicationController
    def show
        @categories = Category.find(params[:id])
        @memos = Memo.where(category_id:params[:id])
    end

    def destroy
        memo = Memo.find(params[:id])
        memo.destroy
        redirect_to controller: :categories, action: :show, id: memo.category_id
    end
    
    def edit
        @memo = Memo.find(params[:id])
    end

    def update
        memo = Memo.find(params[:id])
        memo.title = params[:title]
        memo.body = params[:body]
        memo.category_id = params[:select_id]
        if memo.save
            redirect_to controller: :categories, action: :show, id: memo.category_id
        end
    end
end
