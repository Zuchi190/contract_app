class ContractController < ApplicationController

    def index
        
    end 

    def new
        @contract=Contract.new
    end


    def create
        Contract.create(contracr_params)
        redirect_to("/")
    end

    private
    def contracr_params
        params.require(:contract).permit(:name, :e_mail, :address, :drawing)
    end
end
