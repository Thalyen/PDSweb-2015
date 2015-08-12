class AdminsController < ApplicationController
    before_action :sessao, except: [:create, :new]
    layout "area_administrativa"

    def index
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
            flash[:error] = "Usuário ou Senha inválidos!"
            redirect_to action: "new"
        end
    end

    def destroy
        session[:logged] = false
        flash[:notice] = "Você fez logout com sucesso."
        redirect_to action: "new"
    end

    private

    def sessao
        unless session[:logged]
            flash[:error] = "Área restrita."
            redirect_to admin_sign_in_path
        end
    end
end
