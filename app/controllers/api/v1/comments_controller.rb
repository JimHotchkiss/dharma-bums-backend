module Api::V1
  class CommentsController < ApplicationController

    def index
      comments = Comment.find_by(meditation_id: params[:meditation_id])
      render json: { status: 'SUCCESS', message: 'loaded comments', data: comments }

    end

    def show
      comment = Comment.find(params[:meditation_id])
      render json: comment, include: [:replies]
    end
  end
end
