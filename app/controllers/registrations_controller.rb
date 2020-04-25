class RegistrationsController < Devise::RegistrationsController
    def sign_up_params
        params.require(:user).permit(
            :email,
            :password,
            :password_confirmation,
            :username,
            :firstname,
            :lastname,
            :article
        )
    end

    def account_update_params
        params.require(user).permit(
            :email,
            :password,
            :password_confirmation,
            :current_password,
            :username,
            :firstname,
            :lastname
        )
    end
end