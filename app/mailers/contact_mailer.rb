class ContactMailer < ActionMailer::Base
    default to: "olg262@gmail.com"

    def contact_email(name, email, message)
        @name=name
        @emial=email
        @message=message

        mail(from: email, subject: 'olga Contact Form Message')
    end
    
end