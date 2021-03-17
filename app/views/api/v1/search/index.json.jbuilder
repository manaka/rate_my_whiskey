json.items do
  json.array!(@whiskeys) do |item|
    json.title item.title
    json.description item.description
    json.scores do
      json.array!(item.scores) do |score|
        json.name score.score_type.name
        json.score score.score
      end

    end
  end
end
