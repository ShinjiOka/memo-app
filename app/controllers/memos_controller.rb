class MemosController < ApplicationController
    def index
        @memos = Memo.all
    end

    def new

    end

    def create
        memo = Memo.new(title:params[:title], body:params[:body])
        if memo.save
            redirect_to root_path
        else
            render new_path
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
        memo.save
        redirect_to root_path
    end
    
end
