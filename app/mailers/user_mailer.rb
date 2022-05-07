class UserMailer < ApplicationMailer
    def send_contract
        @user=params[:user]
        mail(to: "katogen190@gmail.com", subject: '【ソガトラ】誓約書のご送付')
      end
end
