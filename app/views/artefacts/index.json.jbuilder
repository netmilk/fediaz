json.array!(@artefacts) do |artefact|
  json.extract! artefact, :id, :name, :location, :technique, :team, :description
  json.url artefact_url(artefact, format: :json)
end
