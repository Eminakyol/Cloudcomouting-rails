# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

[{name: "Fast Food", image_url: "https://cdn.yemek.com/mnresize/940/940/uploads/2016/05/ev-yapimi-hamburger.jpg"},
    {name: "Main Courses", image_url: "https://cdn.getiryemek.com/restaurants/1672302514154_1125x522.jpeg"},
    {name: "Hot Drinks", image_url: "https://i.lezzet.com.tr/images-xxlarge-recipe/turk-kahvesi-37f3e57b-4f17-427f-a1f5-d1775c861dd6.jpg"},
    {name: "Cold Drinks", image_url: "https://cdn.yemek.com/mncrop/940/625/uploads/2019/06/kirazli-buzlu-cay-yeni-kapak.jpg"},
    {name: "Breakfast", image_url: "https://firsat.me/img/20.06.12_23.38.50_545x340_1.png"},
    {name: "Desserts", image_url: "https://www.tarifdefteri.org/wp-content/uploads/2022/05/Sadece-10-Dakikada-Az-Malzemeli-Tatli-Tarifi.jpg"},
    {name: "Salads", image_url: "https://bagisiklik.com/wp-content/uploads/salad.jpg"}].each do |category|
    Category.create(category)
end

[
    { name: "Hamburger", price: 15.0, description: "Delicious hamburger with juicy beef patty", image_url: "https://cdn.yemek.com/mnresize/940/940/uploads/2016/05/ev-yapimi-hamburger.jpg", category_id: 1 },
    { name: "Pizza", price: 17.0, description: "Classic cheese pizza with a thin crust", image_url: "https://cdn.yemek.com/mncrop/600/315/uploads/2017/01/ev-usulu-pizza-yeni.jpg", category_id: 1 },
    { name: "Stuffed Vine Leaves", price: 20.0, description: "Traditional stuffed vine leaves with rice and herbs", image_url: "https://cdn.yemek.com/mnresize/1250/833/uploads/2015/09/patlican-dolma-one-cikan-yeni.jpg", category_id: 2 },
    { name: "Boiled Meat", price: 25.0, description: "Tender boiled meat served with vegetables", image_url: "https://cdn.yemek.com/mnresize/1250/833/uploads/2023/01/kemikli-et-haslama-sunum.jpg", category_id: 2 },
    { name: "Tea", price: 5.0, description: "Refreshing Turkish tea served in traditional glasses", image_url: "https://cdn.yemek.com/mncrop/940/625/uploads/2015/04/turkiyede-cay-kulturu22.jpg", category_id: 3 },
    { name: "Turkish Coffee", price: 7.0, description: "Rich and aromatic Turkish coffee prepared in a cezve", image_url: "https://static.ticimax.cloud/36552/uploads/urunresimleri/buyuk/turk-kahvesi--kahve-8b75.png", category_id: 3 },
    { name: "Cola", price: 8.0, description: "Refreshing cola soda drink", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbU0BXnSTlZPkL_NmgUX7TvH_2epYQK29WGw&usqp=CAU", category_id: 4 },
    { name: "Fanta", price: 8.0, description: "Orange-flavored Fanta soda drink", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpnABJATZJ0icpUwI3AsVSJxvaaUlrbJN3FQ&usqp=CAU", category_id: 4 },
    { name: "Traditional Breakfast", price: 15.0, description: "Assortment of traditional Turkish breakfast items", image_url: "https://firsat.me/img/20.06.12_23.38.50_545x340_1.png", category_id: 5 },
    { name: "Scrambled Eggs with Tomatoes", price: 15.0, description: "Delicious scrambled eggs with tomatoes, peppers, and onions", image_url: "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/soganli-menemen-yeni.jpg", category_id: 5 },
    { name: "Russian Salad", price: 15.0, description: "Classic Russian salad with potatoes, carrots, peas, and mayonnaise", image_url: "https://cdn.yemek.com/mncrop/940/625/uploads/2016/06/amerikan-salatasi-yemekcom.jpg", category_id: 7 },
    { name: "Caesar Salad", price: 15.0, description: "Fresh Caesar salad with romaine lettuce, croutons, Parmesan cheese, and Caesar dressing", image_url: "https://i20.haber7.net/resize/1300x788//haber/haber7/photos/2022/49/sezar_salatasi_nereden_geliyor_en_kolay_sezar_salatasi_nasil_yapilir_1670575716_3469.jpg", category_id: 7 },
    { name: "Waffle", price: 15.0, description: "Delicious waffle topped with syrup, fruits, and whipped cream", image_url: "https://cdn.yemek.com/mnresize/1250/833/uploads/2022/02/firinda-pratik-waffle-tarifi-mutfakyusufu.jpg", category_id: 6 },
    { name: "Şöbiyet", price: 15.0, description: "Traditional Turkish pastry filled with cream and pistachios", image_url: "https://im.haberturk.com/2020/04/01/ver1585743444/2631874_414x414.jpg", category_id: 6 },
    { name: "Profiterole", price: 15.0, description: "Classic French pastry filled with cream and topped with chocolate sauce", image_url: "https://cdn.yemek.com/mnresize/940/940/uploads/2014/11/profiterol-yemekcom2.jpg", category_id: 6 },
    { name: "Chocolate Soufflé", price: 15.0, description: "Decadent chocolate soufflé with a molten center", image_url: "https://i4.hurimg.com/i/hurriyet/75/750x422/5c370abe0f25440ee07ea224.jpg", category_id: 6 }
].each do |product|
    Item.create(product)
end


