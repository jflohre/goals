def full_title(page_title)
  base_title = "Goals"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end