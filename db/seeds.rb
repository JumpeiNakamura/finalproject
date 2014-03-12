# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
user_list = [       { :first_name => "Wooil",
                      :last_name => "Shin",
                      :email => "wshin20@kellogg.northwestern.edu",
                      :password => "W",
                      :zipcode => 10219,
                      :prf_category_id => 1,
                      :prf_product_id => 1,
                      },
                    { :first_name => "Dylan",
                      :last_name => "Jeon",
                      :email => "dylan@dylan.northwestern.edu",
                      :password => "D",
                      :zipcode => 10219,
                      :prf_category_id => 2,
                      :prf_product_id => 1,
                      },
                    { :first_name => "Jumpei",
                      :last_name => "Nakamura",
                      :email => "jumpei@jumpei.northwestern.edu",
                      :password => "J",
                      :zipcode => 10219,
                      :prf_category_id => 1,
                      :prf_product_id => 2,
                      },
                    # { :first_name => "Jeff",
                    #   :last_name => "Cohen",
                    #   :email => "jazzyjeff@j.northwestern.edu",
                    #   :password => "qwer1234",
                    #   :zipcode => 60219,
                    #   :prf_category_id => 1,
                    #   :prf_product_id => 4,
                    #   },
                    # { :first_name => "Brian",
                    #   :last_name => "Eng",
                    #   :email => "brian@northwestern.edu",
                    #   :password => "1111",
                    #   :zipcode => 10219,
                    #   :prf_category_id => 2,
                    #   :prf_product_id => 3,
                    #   }
                    ]

  user_list.each do |user_list|
   u = User.new
   u.first_name = user_list[:first_name]
   u.last_name = user_list[:last_name]
   u.email = user_list[:email]
   u.password = user_list[:password]
   u.zipcode = user_list[:zipcode]
   u.prf_category_id = user_list[:prf_category_id]
   u.prf_product_id = user_list[:prf_product_id]
   u. save
  end

puts "There are now #{User.count} users in the database."



# ["Jumpei", "Dylan", "Woo"].each do |name|
#  u = User.new
#  u.first_name = name
#  u.password = "hockey"
#  u.save
# end






Category.destroy_all
category_list = [   { :name => "Tablet",
                      },
                    { :name => "Cellphone",
                      },
                    { :name => "Other",
                      },
                    ]

category_list.each do |category_list|
   c = Category.new
   c.name = category_list[:name]
   c. save
  end

puts "There are now #{Category.count} categories in the database."


Product.destroy_all
product_list = [   { :name => "Nexus 7",
                     :category_id => 1,
                      },
                   { :name => "Kindle Fire HDX",
                     :category_id => 1,
                      },
                   { :name => "Samsung Galaxy Tab",
                     :category_id => 1,
                      },
                   { :name => "iPhone 4",
                     :category_id => 2,
                      },
                   { :name => "Samsung Galaxy S",
                     :category_id => 2,
                      },
                   { :name => "Motorola MOTOLUXE XT615",
                     :category_id => 2,
                      },
                   { :name => "Garmin nüvi 40LM",
                     :category_id => 3,
                      },
                    ]

product_list.each do |product_list|
  p = Product.new
  p.name = product_list[:name]
  p.category_id = product_list[:category_id]
  p.save
end

puts "There are now #{Product.count} products in the database."

Deal.destroy_all

deal_list = [       { :name => "Google Nexus 7 Tablet (7-Inch, 32GB, Black) by ASUS (2013)",
                      :original_price => 269,
                      :deal_price => 239,
                      :product_id => 1,
                      :category_id => 1,
                      :image_url => 'http://ecx.images-amazon.com/images/I/31rWhdb1fXL.jpg',
                      :description => "World's sharpest 7 tablet screen (323 ppi). Powerful battery, up to 9 hrs of active use. Quad-core speed and performance, 2GB RAMs with Android 4.3.",
                      :link => "http://google.com"
                    },
                    { :name => "Kindle Fire HDX 7 Tablet",
                      :original_price => 269,
                      :deal_price => 239,
                      :product_id => 2,
                      :category_id => 1,
                      :image_url => 'http://cdn.androidcommunity.com/wp-content/uploads/2013/09/KindleFireHDX89Vertical-796x1024.jpg',
                      :description => "World sharpest 7 tablet screen (323 ppi). Powerful battery, up to 9 hrs of active use. Quad-core speed and performance, 2GB RAMs with Android 4.3.",
                      :link => "http://google.com"
                    },

                    { :name => "Samsung Galaxy Tab 3 lite",
                      :original_price => 260,
                      :deal_price => 200,
                      :product_id => 5,
                      :category_id => 1,
                      :image_url => 'http://ecx.images-amazon.com/images/I/41rTQCo5K5L._SY355_.jpg',
                      :description => "Weight 3g, 850/1900 Whitensity (323 PPI)",
                      :link => "http://google.com"
                    },

                    { :name => "APPLE iPhone 4 16GB, CDMA version,2011",
                      :original_price => 214,
                      :deal_price => 120,
                      :product_id => 1,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/41eVAfYDANL._SL500_AA300_.jpg',
                      :description => "Size 16 GB, CDMA Verizon phone only, does NOT have a SIM card",
                      :link => "http://google.com"
                    },
                    # { :name => "Blackberry Z10 16GB Unlocked GSM Phone with BlackBerry 10 OS",
                    #   :original_price => 270,
                    #   :deal_price => 200,
                    #   :product_id => 2,
                    #   # :category_id => 2,
                    #   :image_url => 'http://ecx.images-amazon.com/images/I/31hvQYvzokL._AA160_.jpg',
                    #   :description => "Dual-Core Processor, 4.2 Touchscreen, 8MP Camera, Secondary 2MP Camera",
                    #   :link => "http://google.com"
                    # },
                    { :name => "Blackberry Torch 9860 Phone",
                      :original_price => 137,
                      :deal_price => 130,
                      :product_id => 3,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/41G5JYQ%2BRsL._AA160_.jpg',
                      :description => "4GB Internal Memory, Blackberry OS 7, 3G and 5MP Camera",
                      :link => "http://google.com"
                    },
                    { :name => "Samsung Galaxy S DUOS S7562 GSM Phone ",
                      :original_price => 244,
                      :deal_price => 200,
                      :product_id => 4,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/51%2Bsi3hm8LL._SX385_.jpg',
                      :description => "Dual SIM, Android 4.0 OS4, Touchscreen, GPS",
                      :link => "http://google.com"
                    },
                    { :name => "Motorola MOTOLUXE XT615 GSM Phone ",
                      :original_price => 199,
                      :deal_price => 180,
                      :product_id => 5,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/512%2BzQfSV7L._AA160_.jpg',
                      :description => "Touchscreen, Android 2.3 OS, 8MP",
                      :link => "http://google.com"
                    },
                    { :name => "Garmin nüvi 40LM 4.3-Inch Portable GPS Navigator",
                      :original_price => 89,
                      :deal_price => 80,
                      :product_id => 1,
                      :category_id => 3,
                      :image_url => 'http://ecx.images-amazon.com/images/I/512nvv9FmeL._AA160_.jpg',
                      :description => "Lifetime maps, data cards: microSD,Speed limit indicator",
                      :link => "http://google.com"
                    }  ]


  deal_list.each do |deal|
   d = Deal.new
   d.name = deal[:name]
   d.original_price = deal[:original_price]
   d.deal_price = deal[:deal_price]
   d.product_id = deal[:product_id]
   d.category_id = deal[:category_id]
   d.image_url = deal[:image_url]
   d.description = deal[:description]
   d.link = deal[:link]
   d. save
  end

puts "There are now #{Deal.count} deals in the catalog."

Review.destroy_all

review = [       { :title => "Amazing!",
                   :deal_id => 1,
                   :user_id => 1,
                   :comment => "Thanks OP. I love this product." ,
                   :rating => 5,
                },
                 { :title => "Woooooow!",
                   :deal_id => 2,
                   :user_id => 2,
                   :comment => "Thanks, I bought this for my wife. She really likes it." ,
                   :rating => 4,
                },
                 { :title => "OMG!!!",
                   :deal_id => 2,
                   :user_id => 3,
                   :comment => "This product is amazing!!! Thanks OP." ,
                   :rating => 5,
                }  ]

  review.each do |review|
   r = Review.new
   r.title = review[:title]
   r.deal_id = review[:deal_id]
   r.user_id = review[:user_id]
   r.comment = review[:comment]
   r.rating = review[:rating]
   r.save
  end

puts "There are now #{Review.count} reviews in the catalog."


Location.destroy_all

location = [     { :latitude => 42.054155,
                   :longitude => -87.676685,
                   :address => "Kellogg School of Management",
                   :description => "Best School!" ,
                   :title => "Kellogg",
                },
                 { :latitude => 42.021090,
                   :longitude => -87.706906,
                   :address => "Best Buy",
                   :description => "Best Buy" ,
                   :title => "Best Buy",
                } ]

  location.each do |location|
   l = Location.new
   l.latitude = location[:latitude]
   l.longitude = location[:longitude]
   l.address = location[:address]
   l.description = location[:description]
   l.title = location[:title]
   l.save
  end

puts "There are now #{Location.count} locations in the catalog."

