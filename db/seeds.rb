ProductCategory.delete_all
bikes = ProductCategory.create! name: "bikes"
ebikes = ProductCategory.create! name: "e-bikes"
ProductCategory.create! name: "kids bikes & accessories"
ProductCategory.create! name: "parts"
ProductCategory.create! name: "bikes accessories"
ProductCategory.create! name: "clothing & shoes"

Product.delete_all
Product.create! id: 1, name: "Gazelle Paris C7 HMB", price: 1999, active: true, product_category: bikes
Product.create! id: 2, name: "Gazelle Espirit HFB", price: 1200, active: true, product_category: ebikes
Product.create! id: 3, name: "Simplex Amsterdam Heren fiets", price: 900, active: true, product_category: ebikes

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

