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

    def bill
        respond_to do |format|
          format.pdf do
            render pdf: '請求書', # 出力されるpdfのファイル名
                   layout: 'application', # レイアウトファイル
                   encording: 'UTF-8'
          end
        end
      end
end



    private
    def contracr_params
        params.require(:contract).permit(:name, :e_mail, :address, :drawing)
    end