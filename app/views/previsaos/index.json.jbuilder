json.array!(@previsaos) do |previsao|
  json.extract! previsao, :id, :previsao, :ativo, :subsubcategoria_id
  json.url previsao_url(previsao, format: :json)
end
