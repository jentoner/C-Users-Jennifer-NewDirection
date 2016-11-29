class ContactAboutController < ApplicationController
  def index
  end

  def show
    page_id = params[:id]
    @page = contact_about.find(page_id)
  end
  # The associated view will load
end
