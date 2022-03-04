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
        redirect_to root_path
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
            redirect_to root_path
        end
    end
end
