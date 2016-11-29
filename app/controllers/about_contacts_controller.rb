# About Contact Controller
class AboutContactsController < InheritedResources::Base
  def index
    @about_contacts = AboutContact.all
  end

  def show
    @about_contact = AboutContact.find(params[:id])
  end

  private

  def about_contact_params
    params.require(:about_contact).permit(:title, :content)
  end
end
