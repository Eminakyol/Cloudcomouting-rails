json.data do
    json.array!(@categories) do |category|
        json.id category.id
        json.name category.name
        json.image_url category.image_url
    end
end
