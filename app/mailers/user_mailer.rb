class UserMailer < ApplicationMailer
    def sample_email()
        @user = Info.order("updated_at DESC").first
        mail(to: "aayushhumagain23@gmail.com", subject: "Mail From Portfolio")
    end
end
