class Api::V1::FollowsController < ApplicationController
    before_action :find_follow, only: [:show]
    

    def index 
        @follows = Follow.where(user_id:current_user.id)
        render 'api/v1/follows/index'
    end

    def show
        render(partial: 'api/v1/follows/show', formats: [:json], locale: [:en], handlers: [:jbuilder])
    end

    def create
        @follow = Follow.create(follow_params)
        render(partial: 'api/v1/follows/show', formats: [:json], locale: [:en], handlers: [:jbuilder])
    end

    def destroy
        @follow = Follow.find_by(api_artist_id: params[:id])
        @follow.destroy!
        render(partial: 'api/v1/follows/show', formats: [:json], locale: [:en], handlers: [:jbuilder])
    end

    private

    def follow_params
        params.require(:follow).permit(:user_id, :api_artist_id, :large_image, :medium_image, :small_image, :artist_name)
    end

    def find_follow
        @follow = Follow.find(params[:id])
    end

end
