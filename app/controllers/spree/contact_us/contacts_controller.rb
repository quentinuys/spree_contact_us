class Spree::ContactUs::ContactsController < Spree::StoreController

  helper "spree/products"
  def create
    @contact = params[:contact_us_contact]
    GeneralMailer.contact_us(@contact["email"], @contact["message"]).deliver_now!
    redirect_to(spree.root_path, :notice => Spree.t('contact_us.notices.success'))
  end

  def new
    @contact = Spree::ContactUs::Contact.new
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

  private

  def accurate_title
    Spree.t(:contact_us_title)
  end

end
