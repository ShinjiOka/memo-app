class MemosController < ApplicationController
    def index
        @memos = Memo.all
    end

    def new

    end

    def create
        memo = Memo.new(title:params[:title], body:params[:body], category_id:params[:id])
        if memo.save
            redirect_to root_path
        else
            redirect_to new_path
        end
    end
    
    def destroy
        memo = Memo.find(params[:id])
        memo.destroy
        if (action_name == "index")
            redirect_to root_path
        else (action_name == "show")
            redirect_to controller: :categories, action: :show, id: memo.category_id
        end
    end
    
    def edit
        @memo = Memo.find(params[:id])
    end
    
    def update
        memo = Memo.find(params[:id])
        memo.title = params[:title]
        memo.body = params[:body]
        memo.category_id = params[:select_id]
        memo.save
        if (controller_path == "memos" && action_name == "edit")
            redirect_to root_path
        else (controller_path == "categories" && action_name == "edit")
            redirect_to controller: :categories, action: :show, id: memo.category_id
        end
    end
end
