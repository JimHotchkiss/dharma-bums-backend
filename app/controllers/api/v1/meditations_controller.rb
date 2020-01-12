module Api::V1 
  class MeditationsController < ApplicationController
    def index 
      meditations = Meditation.all 
      render json: { status: 'SUCCESS', message: 'loaded meditations', data: meditations } 
    end 

    def show 
      meditation = Meditation.find(params[:id]) 
      render json: meditation, include: [:comments] 
    end 
  end
end 

