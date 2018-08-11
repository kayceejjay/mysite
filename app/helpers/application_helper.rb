module ApplicationHelper

  def full_title(page_title = '')
    base_title = "TechHandie Corp."
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def google_fonts
      'https://fonts.googleapis.com/css?family=Arvo:400,700|Black+Han+Sans|Cookie|Cute+Font|Do+Hyeon|Fjalla+One|Gaegu:300,400,700|Gamja+Flower|Great+Vibes|Gugi|Roboto|Satisfy'
  end
  
  def html_link(href, rel, type)
    "<link href='#{href}' rel='#{rel}' type='#{type}'/>"
  end

  def tel_to(text)
    groups = text.to_s.scan(/(?:^\+)?\d+/)
    if groups.size > 1 && groups[0][0] == '+'
      # remove leading 0 in area code if this is an international number
      groups[1] = groups[1][1..-1] if groups[1][0] == '0'
      groups.delete_at(1) if groups[1].size == 0 # remove if it was only a 0
    end
    link_to text, "tel:#{groups.join '-'}"
  end
  
end

