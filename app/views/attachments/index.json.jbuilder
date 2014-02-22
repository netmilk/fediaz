json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :name, :asset, :weight
  json.url attachment_url(attachment, format: :json)
end
