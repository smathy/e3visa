module ApplicationHelper
  def company_name
    "Bought in the USA, Inc."
  end

  def contact_email
    mail_to 'sinead@e3visa.me', nil, :encode => 'javascript'
  end
end
