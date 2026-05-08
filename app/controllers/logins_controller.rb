class LoginsController < ApplicationController
    def new
    end

    def create
       user=User.find_by(email: params[:email])
       if user&.authenticate(params[:password])
        session[:user_id]=user.id
        redirect_to users_path, notice:"ログインに成功しました。"
       else
        flash.now[:alert]="ログインに失敗しました"
        render "new", status: :unprocessable_entity
       end

    end

end
