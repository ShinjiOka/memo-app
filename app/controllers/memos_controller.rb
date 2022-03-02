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
    
end
