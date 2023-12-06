class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_stripe_key 

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :password, :dob])
    end

    private 
    def set_stripe_key
      Stripe.api_key = "sk_test_51OGO4mICIuTjDUZ9x5GSZ4azSYOs3xQFH2Q0Ss7eW8vzYanECyFkP0BZmOSRDyhjFsZKSPvDyGu1htNtCjHNEaq200s9Dmp7UQ"
    end 
end
