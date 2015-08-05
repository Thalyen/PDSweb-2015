class LancamentosContabeisController < ApplicationController

	def index
		# @lancamentos_contabeis = LancamentoContabil.all
		@lancamentos_contabeis = LancamentoContabil.group(:periodo).count
	end

	def show
		@lancamento_contabil = LancamentoContabil.find(params[:id])
	end

	def new
		@lancamento_contabil = LancamentoContabil.new
	end

	def edit
		@lancamento_contabil = LancamentoContabil.find(params[:id])
	end

	def create
		@lancamento_contabil = LancamentoContabil.new(lancamento_contabil_params)

		# captação do período
		@lancamento_contabil.periodo=Time.now.strftime("%Y%m")

		if @lancamento_contabil.save
			redirect_to @lancamento_contabil
		else
			render 'new'
		end
		# render plain: params[:lancamento_contabil]
	end

	def update
		@lancamento_contabil = LancamentoContabil.find(params[:id])

		if @lancamento_contabil.update(lancamento_contabil_params)
		 	redirect_to @lancamento_contabil
		else
		 	render 'edit'
		end	
	end

	def destroy
		@lancamento_contabil = LancamentoContabil.find(params[:id])
		@lancamento_contabil.destroy

		redirect_to lancamentos_contabeis_path
	end

	def no_periodo
		@periodo = params[:periodo]
		@lancamentos_contabeis = LancamentoContabil.where(periodo: @periodo)
	end

	private
                                                   
	def lancamento_contabil_params
		params.require(:lancamento_contabil).permit(:titulo, :valor, :tipo, :descricao, :periodo)
	end
end
