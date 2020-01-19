class Api::V1::VotesController < ApplicationController
    skip_before_action :authorized

    def index
        @votes = Vote.all.select { |vote| vote.user_id == current_user.id }
    end

    def search
        @votes = Vote.search_votes(search_params[:api_artist_id], search_params[:album_name])
        if @votes.nil? 
            render json: { message: "no votes have been cast for these tracks yet. Vote away!" }
        else
            render 'api/v1/votes/search'
        end
    end

    def create
        @vote = Vote.create(vote_params)
    end

    def delete
        vote = Vote.find(params[:id])
        vote.destroy!
    end

    private

    def search_params
        params.require(:vote).permit(:api_artist_id, :album_name)
    end

    def vote_params
        params.require(:vote).permit(:user_id, :api_artist_id, :artist_name, :api_song_id, :song_name, :api_album_id, :album_name)
    end

end
