class ContractController < ApplicationController

    def index
        
    end 

    def new
        @contract=Contract.new
    end


    def create
        @contract=Contract.create(contracr_params)
        if @contract.save
            UserMailer.with(user: @contract).send_contract.deliver_later
            redirect_to("/")

        end
    end

    private
    def contracr_params
        params.require(:contract).permit(:name, :e_mail, :address, :drawing)
    end
end
