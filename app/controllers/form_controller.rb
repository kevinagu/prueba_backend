class FormController < ApplicationController
  before_action :authenticate_user!

  def show
    render "profile"
  end

  def edit
  	
  end
  
  def update
	 current_user.update_attributes(form_params)
	 render "profile"
  end

  def form_params
      params.require(:user).permit(:name, :last_name, :phone, :birthday)

  end

end
