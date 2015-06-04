class FormController < ApplicationController
  before_action :authenticate_user!

  def edit
  	
  end
  
  def update
	current_user.update_attributes(form_params)
	
  end

  def form_params
      params.require(:form).permit(:name, :last_name, :phone, :birthday )
    end

end
