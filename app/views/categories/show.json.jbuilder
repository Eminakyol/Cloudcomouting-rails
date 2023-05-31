json.data do
    json.id @category.id
    json.name @category.name
    json.image_url @category.image_url
    json.items @items do |item|
        json.id item.id
        json.name item.name
        json.description item.description
        json.image_url item.image_url
        json.price item.price
    end
end
