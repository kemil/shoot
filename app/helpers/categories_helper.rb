module CategoriesHelper
  def add_photo_link(form_builder)
    output = image_tag('add.png', :size => '16x16')
    output += link_to_function 'add another photo', nil, :id => "add_photos_link" do |page|
      form_builder.fields_for :photos, @category.photos.build, :child_index => 'REPLACE_ME' do |f|
        page << "$('#photo_fields').append('#{escape_javascript(render( :partial => 'photo_fields', :locals => { :photo_form => f }))}'.replace(/REPLACE_ME/g, new Date().getTime()))"
      end
    end
    return output
  end
  
  def remove_photo_link(form_builder)
    if form_builder.object.new_record?
      link_to_function(image_tag('fail.png', :size => "16x16") + 'Remove', "$(this).parent('.photo').remove();")
    else
      form_builder.hidden_field(:_delete) + 
      link_to_function(image_tag('fail.png', :size => "16x16") + 'Remove', "if (confirm('Are you sure?')) { $(this).parent('.photo').hide(); $(this).prev('input').attr('value', 1) }")
    end
  end
end
