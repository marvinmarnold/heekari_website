class PrelaunchContactsController < ApplicationController
  def create
  #   redirect_to root_url
  #   binding.pry
    @prelaunch_contact = PrelaunchContact.new(prelaunch_contact_params)

    respond_to do |format|
      if @prelaunch_contact.save
        format.html { redirect_to root_path, notice: "Success"}
      else
        format.html { render 'prelaunch_contacts/new' }
      end
    end
  end

  def new
    @prelaunch_contact = PrelaunchContact.new
  end

  def index
    @prelaunch_contacts = PrelaunchContact.all
  end

private

  # Never trust parameters from the scary internet, only allow the white list through.
  def prelaunch_contact_params
    params.require(:prelaunch_contact).permit(
      :email
    )
  end
end
