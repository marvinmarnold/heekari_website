class PrelaunchContactsController < ApplicationController
  def create
    PrelaunchContact.create(email: params[:email])
  end
end
