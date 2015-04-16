json.array!(@get_started_pdfs) do |get_started_pdf|
  json.extract! get_started_pdf, :id, :title, :content
  json.url get_started_pdf_url(get_started_pdf, format: :json)
end
