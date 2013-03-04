class ContactsController < ApplicationController
  # GET /contacts/new
   # GET /contacts/new.xml
   def new
     @contact = Contact.new
     @guide = params[:guide] || false

     respond_to do |format|
       format.html # new.html.erb
       format.js
       format.xml  { render :xml => @contact }
     end
   end

   # POST /contacts
   # POST /contacts.xml
   def create
     @contact = Contact.new(params[:contact])
     @guide = params[:guide] || false

     respond_to do |format|
       if @contact.save
         if @guide
           email = ContactMailer.deliver_guide_notice(@contact)
           confirm = ContactMailer.deliver_guide_email(@contact)
         else
           email = ContactMailer.deliver_contact_form(@contact)
           confirm = ContactMailer.deliver_confirmation(@contact)
         end
         @contact = Contact.new
         format.html { redirect_to(new_contact_path) }
         format.js
         format.xml  { render :xml => @contact, :status => :created, :location => @contact }
       else
         format.html { render :action => "new" }
         format.js { render :template => 'contacts/errors' }
         format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
       end
     end
   end
end
