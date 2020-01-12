module Api::V1
  class CommentsController < ApplicationController
    def show 
      comment = Comment.find(params[:id]) 
      render json: comment, include: [:replies] 
    end
  end
end 

