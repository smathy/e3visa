module ApplicationHelper
  def company_name
    "Bought in the USA, Inc."
  end

  def contact_email
    mail_to 'sinead@e3visa.me', nil, :encode => 'javascript'
  end

  def google_checkout button=nil
    button = button.nil? ? "https://checkout.google.com/buttons/buy.gif?merchant_id=625302981979048&amp;w=117&amp;h=48&amp;style=white&amp;variant=text&amp;loc=en_US" : "/assets/" + button
    f = <<-EOI
      <form action="https://checkout.google.com/api/checkout/v2/checkoutForm/Merchant/625302981979048" id="BB_BuyButtonForm" method="post" name="BB_BuyButtonForm" target="_top">
        <input name="item_name_1" type="hidden" value="Moving to the USA"/>
        <input name="item_description_1" type="hidden" value="The ultimate guidebook that will lead you through all the steps, hand in hand, to live permanently in the United States."/>
        <input name="item_quantity_1" type="hidden" value="1"/>
        <input name="item_price_1" type="hidden" value="37.99"/>
        <input name="item_currency_1" type="hidden" value="USD"/>
        <input name="shopping-cart.items.item-1.digital-content.url" type="hidden" value="http://e3visa.me/2NJPr7HPDLKuePJWAkYr.pdf"/>
        <input name="_charset_" type="hidden" value="utf-8"/>
        <div style="text-align:center">
        <input type="image" src="#{button}">
        </div>
      </form>
    EOI
    f.html_safe
  end

  def letter_date
    Time.now.strftime '%A, %B %d'
  end

  def book_title
    "“Moving to the USA”"
  end
end
