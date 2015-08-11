class AdminsController < ApplicationController
    # skip_before_filter :verify_authenticity_token

    def index
        if session[:logged]
            render layout: "area_administrativa"
        else
            flash[:notice] = "Área restrita."
            redirect_to action: "new"
        end
    end

    def show
    end

    def new
        render layout: "area_administrativa_login"
    end

    def create
        params[:user] ||= 'none' 
        params[:password] ||= 'none' 

        if (params[:user] == 'admin' && params[:password] == '12345')
            session[:logged] = true
            redirect_to action: "index"
        else
            flash[:notice] = "Usuário ou Senha inválidos"
            redirect_to action: "new"
        end
    end

    def destroy
        session[:logged] = false
        redirect_to action: "new"
    end
end
