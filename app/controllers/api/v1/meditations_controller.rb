module Api::V1 
  class MeditationsController < ApplicationController
    def index 
      meditations = Meditation.all 
      render json: MeditationSerializer.new(meditations) 
    end 

    def create 
      meditation = Meditation.new(meditation_params)
      if meditation.save
        render json: meditation
      else 
        render json: {error: 'Error creating meditation group'} 
      end 
    end 

    def show 
      meditation = Meditation.find(params[:id]) 
      render json: MeditationSerializer.new(meditation)
    end 

    def destroy 
      meditation = Meditation.find(params[:id])
      meditation.destroy
    end 

    def update
      meditation = Meditation.find(params[:id])
      meditation.update(theme: params[:meditation][:theme], duration: params[:meditation][:duration], organizer: [:meditation][:organizer])
      meditation.save
      render json: meditation
    end 

    private 

    def meditation_params
      params.require(:meditation).permit(:theme, :duration, :organizer)
    end 
  end
end 

