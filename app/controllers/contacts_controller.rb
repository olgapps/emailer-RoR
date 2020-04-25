class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)

        if @contact.save
            redirect_to root_path
            name= params[:contact][:name]
            email=params[:contact][:email]
            message=params[:contact][:message]
            ContactMailer.contact_email(name, email, message).deliver
            flash[:success]="thanks for message"
        else
            redirect_to pages_contact_path
            flash[:danger]="there is a problem. please fill all the fields"
        end
    end

    private
    def contact_params
        params.require(:contact).permit(:name, :email, :message)
    end
end