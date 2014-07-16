def fingerings_html( f_hash ) 
  html_output = ""
  f_hash.each do |name, other| 
    html_output << render('note', { raw_note_name: name, note_label: name.nota_bella })
  end
  html_output
end
