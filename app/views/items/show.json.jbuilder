json.data do
    json.id @item.id
    json.name @item.name
    json.description @item.description
    json.image_url @item.image_url
    json.price @item.price
end
