module Api::V1
  class RepliesController < ApplicationController

    def index
      replies = Reply.find_by(comment_id: params[:comment_id])
      render json: { status: 'SUCCESS', message: 'loaded replies', data: replies }
    end

  end
end
