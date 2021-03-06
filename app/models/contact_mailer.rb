class ContactMailer < ActionMailer::Base
  
  def contact_form(contact)
    subject    'contact from eikonphotographer.com'
    recipients 'studio@eikonphotographer.com'
    from       "#{contact.name} <#{contact.email}>"
    sent_on    Time.now
    
    body       :contact => contact
  end
  
  def confirmation(contact)
    subject    'message confirmation from eikonphotographer.com'
    recipients "#{contact.name} <#{contact.email}>"
    from       "eikon photo <studio@eikonphotographer.com>"
    sent_on    Time.now
    
    body       :contact => contact
  end
  
  def guide_notice(contact)
    subject    "check list sent to #{contact.name} at #{contact.email}"
    recipients 'studio@eikonphotographer.com'
    from       "eikonphotographer.com <studio@eikonphotographer.com>"
    sent_on    Time.now
    
    body       :contact => contact
  end
  
  def guide_email(contact)
    subject    'Wedding Photography check list - from Eikon Photography'
    recipients "#{contact.name} <#{contact.email}>"
    from       "eikon photo <studio@eikonphotographer.com>"
    sent_on    Time.now
    
    body       :contact => contact
  end

end
