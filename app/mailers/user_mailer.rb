class UserMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'

    def welcime_email
        @user = params[:user]
        @order = params[:order]
        mail(to: @user.email, subject: 'Order Confirmation: Order #' + @order.id.to_s)

    end
end
