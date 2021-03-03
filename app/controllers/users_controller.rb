class UsersController < ApplicationController
    before_action :set_user

    def index
        redirect_to root_path
    end

    def show
        @gifs = @user.gifs.includes(:tags, :user).sorted
        render 'gifs/index'
    end

    private

    def set_user
        @user = User.find_by(params[:id])
    end

end