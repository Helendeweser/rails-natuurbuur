require "open-uri"

Solution.destroy_all
User.destroy_all

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198800/1._Square_meter_garden_ni4mkd.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370701/1._Square_meter_garden_ewafdp.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/squaare_meter_garden3_ivkf8w.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712826/square_meter_garden2_tz7lux.jpg")


solution = Solution.new(
  title: "Square meter garden",
  intro: "Of course you can grow fresh greens without a garden! Do you have a terrace or balcony? Then a square-meter garden is the solution for you.",
  explanation: "You need a container on legs, measuring 1.2 m by 1.2 m approximately. In it you plant fruit, different vegetables or herbs. You divide your container into grid squares of 30 cm by 30 cm and put one type of plant in each. So you really garden, but on a small area and very intensively.

  The name square-meter garden is actually a bit of a misnomer. Your container is never exactly a square meter and can perfectly have a different shape. The most important thing is that you respect the grid squares of 30 cm by 30 cm. Is your balcony very small? No problem! Then you choose for example a container of 30 cm by 90 cm. You can still plant three kinds of goodies in there with ease!

  Gardening in your square meter garden works really well. No one steps on the soil, so it stays loose. As a result, it holds water easier and the roots of your crops get more oxygen. A microbiological environment is created in your mini-garden, ideal for plant growth. Because you plant your fruits, vegetables and herbs close together, you'll have much more harvest per surface area. Be sure to choose plenty of different varieties, matter of avoiding too much of the same.

  Because your small-garden soil dries and warms up faster, you can start planting at the first sign of spring sunshine. Tomatoes, peppers or eggplants, for example, feel best in warmer soil.

  In ordinary vegetable gardens, you also water the empty strips of soil. This is by no means the case with your little garden. Less water consumption: a not unpleasant advantage. Because your crops are close together - well each in their own grid area - the extra shade ensures that the water evaporates less quickly because of the sun.

  Vegetable gardening in ideal conditions is perfectly possible, and that just on your terrace or balcony!",
  price: 200,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Health", "Well-being", "Food production"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198803/2._Square_meter_garden_on_the_ground_jesbgt.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370701/2._Square_meter_garden_ground_uwsgzh.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/squaare_meter_garden3_ivkf8w.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678802118/square_garden_ground4_rsnbob.jpg")

solution = Solution.new(
  title: "Square meter garden (ground)",
  intro: "What do you do with a small, vacant patch of garden? Nothing like picking your own fruits and vegetables there, right?",
  explanation: "You need a container, 1.2 m by 1.2 m approximately. In it you plant different vegetables, fruits or herbs. You divide your box into grid squares of 30 cm by 30 cm and put one type of plant in each. So you are really gardening, but on a small area and very intensively.

  The name square-meter garden is actually a bit of a misnomer. Your container is never exactly a square meter and can perfectly have a different shape. The important thing is that you respect the 30 cm by 30 cm grid squares.

  Gardening in your square-meter garden works really well. No one steps on the soil there, so it stays loose. As a result, it holds water easier and the roots of your crops get more oxygen. A microbiological environment is created in your mini-garden, ideal for plant growth.

  Because you plant your vegetables, fruits and herbs close together, you'll have much more harvest per surface area. Be sure to choose plenty of different varieties, matter of avoiding too much of the same.

  Because your small garden soil dries and warms up faster, you can start planting as soon as the first spring sun comes out.

  In regular vegetable gardens, you also water the empty strips of soil. This is certainly not the case with your garden. Less water consumption: a not insignificant advantage. Because your crops are close together - well each in their own grid area - the extra shade ensures that the water evaporates less quickly because of the sun.

  Vegetable gardening in ideal conditions is perfectly possible, and that just in a container in your garden!",
  price: 135,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Health", "Well-being", "Food production"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198803/3._Fruit_tree_xtj2cr.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370702/3._Fruit_tree_uv2kvj.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712821/fruit_tree1_gamoyb.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712821/fruit_tree2_cs6xos.jpg")

solution = Solution.new(
  title: "Fruit tree",
  intro: "All that you plant yourself, you plant better. And doesn't fruit from your own tree taste more delicious than anything else?",
  explanation: "Espalier trees are trees whose branches are guided
    in a certain direction. Their shape does not occur in nature, you model here. You do this by tying the branches to a frame.

    Here you can read all about an espaliered tree with fruit which you put against a wall. The wall between you and your neighbour, for example, or that of your carpool or just the wall of your own house. This type of espalier branches (branches growing sideways) already low to the ground. Do count on about 4 years before your wall is completely covered.

    If you lead the branches apart, they will see more sunlight and grow fruit faster. By pruning them a certain way, your espalier tree will also get more fruit per season than the same unguided tree. Preferably place it against a wall; that warmer environment promotes the ripening of its fruit.

    You can easily plant several types of fruit trees in a small area because they take up less space than unguided versions. This is top for pollination!

    In terms of shape, you have quite a few choices. Will you go for a U-shaped palmette? A double U-shaped one, or just a horizontal one? One with angled branches or a fan is also possible. Here we discuss the U-shape.",
  price: 40,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Health", "Well-being", "Energy use", "Property value", "Food production"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198806/4._Espalier_k49o2i.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370701/4._Espalier_zjuxqb.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712827/espalier_tree1_ahwxpn.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712827/espalier_tree2_lrb6tr.jpg")

solution = Solution.new(
  title: "Espalier",
  intro: "Want a little more privacy in your garden? Then plant an espalier tree! In one move, you'll also improve the air quality and biodiversity in your neighbourhood.",
  explanation: "Espaliers are trees whose branches are guided in a certain direction. Their shape does not occur in nature, man models here. This is done by tying the branches to a frame. The trees come in storey or screen form.

  A storey form has tight horizontal lines, where you can still see through. You prune the tree to close to the frame with pruning shears.

  Trees with a screen shape are more densely overgrown, you can't see through here. You only prune the outside - with an electric hedge trimmer - like a hedge.

  There are freshly trained and pre-trained espalier trees. The first you buy young and you have to train them yourself. A lot of work. The pre-guided version has already been trained by the grower. You keep its shape by tying up its branches very occasionally and by pruning every two years. We recommend option two.

  Espaliers protect perfectly from full sun or prying eyes.",
  price: 100,
  category: ["Garden - green"],
  difficulty: "Medium",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Health", "Well-being", "Energy use", "Property value"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198802/5._Climate_tree_gvduxh.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370701/5._Climate_tree_jhsve6.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712824/climate_tree1_il30xe.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678717383/climate_tree2_m804ql.jpg")

solution = Solution.new(
  title: "Climate tree",
  intro: "Bringing coolness and improving air quality are the absolute strengths of a climate tree. So planting your own tree really brings you very close to your goal of helping nature.",
  explanation: "When we say that a tree is incredibly good for the climate, we're not bringing you a scoop. But have you ever considered what it does for the environment? Cooling and improving air quality are its absolute strengths.

  The cooling is on the one hand the result of the shade created by the tree. In addition, it captures sunlight, converts that energy into water vapor, and that leads to higher humidity. Of course, the size of the tree plays a role here; the larger its crown size and leaves, the more benefits to you and our climate.",
  price: 25,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Bye, bye sound", "Health", "Well-being", "Energy use", "Property value"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198801/6._Roof_tree_gxbfpt.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370701/6._Roof_tree_eemvxk.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712823/roof_tree1_wwhjhf.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678717382/roof_tree2_c6nqaq.jpg")

solution = Solution.new(
  title: "Roof tree",
  intro: "Did you know that on a hot summer day it gets up to 15 degrees cooler under a roof tree than in the flat sun? Plant your own green umbrella soon and reduce not only your own warming but also that of the earth.",
  explanation: "Do you know espaliers? Whether your answer is yes or no; here you will find everything you need to know about them. Their branches are guided in a certain direction and many types of trees can serve as espaliers. You have them in different shapes and models: one that looks like a hedge on a trunk, another with fruits against a wall or - as you will read in a moment - an espalier that as a natural parasol surpasses any plastic version.

  Roof tree, it is called, or also parasol tree. It is guided in a horizontal plane; blissful to sit under it in hot weather! Did you know that on a hot summer day it gets up to 15 degrees cooler under your tree than in the flat sun! And if you have a city garden, you'll probably be happy with some extra shielding from the eyes of your upstairs neighbours.

  When you purchase such a tree, it already comes with a horizontal frame made of wires or wood. This frame guides the branches. Depending on what kind of tree you choose, you do have to bring out the pruning shears once or twice a year to maintain its shape. Compared to the free-standing espalier tree (see elsewhere in the catalogue), guiding a roof tree yourself is a bit more difficult. It is best to buy one that has already been pre-guided.",
  price: 140,
  category: ["Garden - green"],
  difficulty: "Medium",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Health", "Well-being", "Energy use", "Property value"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198802/7._Rainwater_pond_t5li2p.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370701/7._Rainwater_pond_nto453.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678725204/rainwater_pond4_kf1ulj.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794358/rainwater_pond5_btqfqp.jpg")

solution = Solution.new(
  title: "Rainwater pond",
  intro: "Few forms of greenery contain as many species of life per square meter as ponds. Dragonflies lay eggs in them, birds come to drink and hedgehogs look for snails.",
  explanation: "Your own rainwater pond: how fun is that! Rainwater ponds temporarily collect rainwater and discharge it in a delayed manner. Unlike an ordinary garden pond, the rainwater version - up to 30 cm - has varying water levels. Plants keep your pond beautiful at both high and low water levels. Compared to a bioswale, a rainwater pond is much deeper and stores a lot more water.

  Your rainwater pond is covered with pond liner, which keeps a continuous layer of water in it.

  Note: you need quite a bit of space to build one. Don't have that? Then a mini pond is a great alternative. You can find this solution elsewhere in the catalogue.",
  price: 260,
  category: ["Garden - blue"],
  difficulty: "Medium",
  advantages: ["Water balance", "Water quality", "Heat stress", "Biodiversity", "Drought resistance"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198800/8._Mini_pond_l7ypur.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370702/8._Mini_pond_frq35w.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712823/minipond1_lbjbkf.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794357/moinipond3_kuonuu.jpg")

solution = Solution.new(
  title: "Mini pond",
  intro: "A private spot to let your thoughts flow undisturbed: don't we all want that? All you need is a tub, a zinc tub or half a wine barrel.",
  explanation: "If you do like a little life in the water, a mini pond is probably your thing. Dragonflies, frogs or boatmen, and even birds: they all find their way to such a swimming or drinking pool. The sight of water is soothing. Fun for your kids to play with, and a welcome cool down for young and old during hot summers.

  Don't have a large garden or only a terrace or balcony? Even then you can have a lot of fun with a mini pond. All you need is a tub, a zinc tub or half a wine barrel.",
  price: 50,
  category: ["Balcony/terrace"],
  difficulty: "Easy",
  advantages: ["Biodiversity"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198802/9._Bioswale_gfi4fs.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370702/9._Bioswale_tmrpiy.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712826/bioswale1_jpnv3d.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794355/bioswale4_ybo8yt.jpg")

solution = Solution.new(
  title: "Bioswale",
  intro: "A bioswale collects rainwater locally, allows it to infiltrate into the soil of your garden and thus relieves the sewer system. Less chance of flooding and your garden can suddenly cope better with drought.",
  explanation: "A bioswale is a lowered area in your garden that collects rainwater, which then slowly seeps into the soil.

  It can be a lowered piece with only grass, but just as easily a lowering that you create yourself with plants. Attention, attention: the plants must be able to withstand both wet and dry weather, because your bioswale will be dry in dry periods. A bioswale is shallow and therefore fits easily into any garden.

  Does your soil consist of sandy soil? Ideal! It allows water to pass through. Do you have a loamy or clay soil? Or do you just want to collect more rainwater? Then add a trunk at the bottom of your bioswale. You fill that with gravel, lava rocks or baked clay pellets. These are coarse materials that help the water seep into the soil even better.

  The rainwater your bioswale collects comes from your roof. To do that, you disconnect your downspout and make a gutter to direct all that wetness to the bioswale in your garden.

  The fact that your soil stays nice and moist in the summer is suddenly a nice bonus!",
  price: 90,
  category: ["Garden - blue"],
  difficulty: "Medium",
  advantages: ["Water balance", "Water quality", "Heat stress", "Soil quality", "Biodiversity", "Drought resistance"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198806/10._Micro_forest_i8fam3.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370703/10._Micro_forest_z7g1nq.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712825/microforest1_ijzeru.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794355/microforest2_do89yf.jpg")

solution = Solution.new(
  title: "Micro forest",
  intro: "A forest in your garden too crazy for words? No way! For a micro-model, you barely need 6 m².",
  explanation: "A microforest fits right into the philosophy of the protected concept of 'Tiny Forest', devised by an Indian engineer. He drew on the work of a Japanese man who specialized in restoring natural vegetation and old-growth forests. The engineer brought the Japanese man's idea to the city.

  And you are now bringing it to your garden. With a free 6-square-meter plot, you can already get started and soon enjoy a mix of trees, shrubs and herbs. Choose native plants because they attract more insects, pollinators, birds and butterflies than exotic ones. They provide food, offer a place to reproduce and thus also provide food for animals higher up the chain (who in turn eat those insects, for example).",
  price: 200,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Water balance", "Heat stress", "Air quality", "Soil quality", "Biodiversity", "Bye, bye sound", "Health", "Well-being", "Property value"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198803/11._Balcony_green_ucgade.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370703/11._Green_Balcony_jmh1iq.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712826/balcony_green1_g75fdl.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794357/balcony_green4_ulr8bx.png")

solution = Solution.new(
  title: "Balcony green",
  intro: "No garden but have a balcony or terrace? You'll turn that into a vegetable oasis in no time with all the climate benefits.",
  explanation: "You definitely don't need a garden to be surrounded by greenery! Even on your balcony or terrace you can create your own piece of nature with trees, shrubs and herbs.

  All you need are a few large pots and a sturdy balcony. Do you prefer to keep it more modest and light? Then hanging baskets and/or smaller pots are the solution for you.",
  price: 200,
  category: ["Balcony/terrace"],
  difficulty: "Easy",
  advantages: ["Heat stress", "Air quality", "Biodiversity", "Health", "Well-being"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198806/12._Branch_rill_nrs7cy.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370703/12._Branch_rill_xl98bo.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/branch_rill6_m3mmpj.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794357/branch_rill5_tygpu8.jpg")

solution = Solution.new(
  title: "Branch rill",
  intro: "Did your pruning work over the past few months provide you with a lot of wood? With all those branches, you'll make a beautiful wooden fence and create a popular spot for flora and fauna.",
  explanation: "Do you know a branch line? That's an accumulation of prunings - between poles or thick branches - through which you weave some thinner branches. Its height, width and length are entirely up to you. In the summer, you can also throw your mowed grass between them.

  A branch trellis is ideal as a partition, for example to hide your garbage cans behind. What's more, it offers many advantages for plants and animals.",
  price: 0,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Biodiversity"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198805/13._Willow_hut_wqtmgs.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370704/12._Willow_tree_zlx5f8.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712821/willow_hut1_j3ulg0.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712823/willow_hut2_rjst65.png")

solution = Solution.new(
  title: "Willow hut",
  intro: "How about an extra dash of nature in your yard? A willow hut is a 100% natural playground for your kids. Fun to build with the whole family and a nice picnic area to boot!",
  explanation: "A willow hut looks really handsome. The willow branches - which are thin branches - stick into the ground on several sides, forming an arch each time. The ends of those branches take root over time and so the branches stay nice and long. Every spring you see new leaves appear and the enclosure grows more and more dense. The more willow branches, the better your shelter.

  Large or small willow hut: that's entirely up to you. Ditto for the shape. Do you like the shape of a tunnel or do you prefer the igloo model? Anything goes! We will tell you more about a circular model: 3 meters in diameter and 2 meters high.",
  price: 100,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Biodiversity", "Health", "Well-being"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198805/14._Blue_roof_kunz0r.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370704/14._Blue_roof_ofcbc8.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794358/blue_roof5_w9nlaa.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712821/blue_roof2_l7axl8.jpg")

solution = Solution.new(
  title: "Blue roof",
  intro: "Does your house or carport have a flat roof? If you collect the rainwater there, you reduce the pressure on the sewerage system during heavy rainfall. No more flooding in your street any time soon!",
  explanation: "Extreme rainstorms cause a sudden overload of the sewer system. Not infrequently resulting in flooding, unfortunately. A blue roof - or retention roof - offers solutions. It largely keeps up with the rainwater during such showers by discharging it only very gradually. That way you avoid sudden overloading of the sewer system.

  For that gradual drainage, you need two openings, one small and one large. The small one sits low against the roof surface, providing a slow and gradual drainage of water. The large opening prevents the roof itself from overflowing. If it fills up completely, the excess rainwater flows away immediately through this emergency outlet. You determine the height of the large opening based on how much water your roof can handle.

  Most flat roofs easily support 100 kg/m². If you know that water weighs 10 kg/m², there should be a maximum of 10 cm of water on your blue roof.

  Attention, attention: a blue roof requires your roof to be completely level, otherwise all the water will accumulate on one side.

  If you don't like to see the water drain to the sewer, then a drain to your garden or reuse at home - after filtering then - are also options.",
  price: 500,
  category: ["Roof"],
  difficulty: "Difficult",
  advantages: ["Water balance", "Heat stress", "Energy use"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."


image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198807/15._Green_flat_roof_rsgd7j.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370704/15._Green_flat_roof_fmuyah.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/green_flat_roof1_zmmflr.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/green_flat_roof2_svuiqp.jpg")

solution = Solution.new(
  title: "Green flat roof",
  intro: "Turn your gray roof into a green roof and you have the green weapon in your hands in the fight against global warming.",
  explanation: "Your roof is your green weapon in your fight against global warming! Ideal for climate adaptation, as it's called.

  An extensive green roof weighs quite little. That is exactly why it is an ideal match with both renovated and new roofs. Most flat roofs easily tolerate 100 kg/m², which is fine for an extensive green roof.

  Mosses, succulents (Sedum) and other herbaceous species prefer to grow here. These plants stay low, cover the ground and require little maintenance. More than that, it develops independently and is resistant to sun, wind and drought.

  Is your roof really completely flat (0°)? Then a slightly thicker drainage layer helps prevent puddles. And that's important, because the roots of your plants shouldn't be in water all the time. That stunts growth or worse, ends up with dead plants.",
  price: 800,
  category: ["Roof"],
  difficulty: "Difficult",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Bye, bye sound", "Health", "Well-being", "Energy use", "Lifespan roof", "Property value"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198809/16._Green_sloping_roof_gc5pz8.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370704/16._Green_flat_roof_ljpzhv.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/green_sloping_roof6_lf0stv.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/green_sloping_roof4_eirjoh.jpg")

solution = Solution.new(
  title: "Green sloping roof",
  intro: "Do you have a flat to slightly sloped roof (0.6° - 15°)? Make it green! The benefits to you and your environment are great!",
  explanation: "Your roof is your green weapon in your fight against global warming! Ideal for climate adaptation, as it's called.

  An extensive green roof weighs quite little. This is exactly why it is an ideal match with both renovated and new roofs. Most new construction roofs easily tolerate 100 kg/m², which is fine for an extensive green roof.

  Mosses, succulents (Sedum) and other herbaceous species prefer to grow here. These plants stay low, cover the ground and require little maintenance. More than that, it develops independently and is resistant to sun, wind and drought.

  The extensive green roof can be installed on both a flat (0.6°) and sloping roof up to 15°.",
  price: 850,
  category: ["Roof"],
  difficulty: "Difficult",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Bye, bye sound", "Health", "Well-being", "Energy use", "Lifespan roof", "Property value"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."

image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198809/17._Self-attaching_climbing_plant_dzonrj.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370704/17._Self-attaching_climbing_plant_kfpue5.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712822/climbing_plant_attaching1_xiphkx.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794358/self_att_climbing_plant3_zug8ox.png")

solution6 = Solution.new(
  title: "Self-attaching climbing plant",
  intro: "A self-attaching climbing plant will naturally climb up your wall and in the summer will lower the façade temperature by up to 8° Celsius.",
  explanation: "Your facade likes different types of greenery. A climbing plant is a very good option. But before you choose which one to use, check which one is best for your facade.

  • How many hours of sunlight does it get per day?
  • Do you like a climbing plant growing directly against your facade?
  • Or do you prefer not to? Then choose a non-self-attaching one (see elsewhere in the catalogue).
  • How high should the plant grow?
  • Should it also look fresh and green in winter?
  Read here in advance everything you need to know about a soil-bound and self-attaching creeper.

  With the soil-bound creeper, you plant the roots directly into the ground. This may require you to remove a few tiles from the surface - the sidewalk, or something.

  A self-attaching one finds its way up without climbing help.

  The benefits of a climbing plant are worth it! Studies show that such a plant with an average leaf area index covering a 17-square-meter facade captures the same amount of particulate matter as an average 25-year-old urban tree! In summer, that same climbing plant reduces room temperature by 4°C and wall temperature by 8°C!",
  price: 20,
  category: ["Facade"],
  difficulty: "Easy",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Bye, bye sound", "Health", "Well-being", "Energy use", "Lifespan facade"]
)

solution6.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution6.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution6.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution6.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution6.save!
puts "Creating solution #{solution6.id}..."


image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198808/18._Non-self-attaching_climbing_plant_e2yvxc.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370704/18._Self-attaching_climbing_plant_xjzm9x.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794355/non_atta_climbing_plant2_geznmz.png")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712828/climbing_plant1_kr8isv.jpg")

solution = Solution.new(
  title: "Non-self-attaching climbing plant",
  intro: "Studies show that a climber with a leaf area index covering a 17m² facade captures the same amount of particulate matter as an average 25-year-old urban tree!",
  explanation: "Your facade likes different types of greenery. A climbing plant is a very good option. But before you choose which one to use, check which one is best for your facade.

  • How many hours of sunlight does it get per day?
  • Do you like your creeper off the wall?
  • Or do you prefer it against the wall? Then choose a self-attaching creeper (see elsewhere in the catalogue).
  • How high should the plant grow?
  • Should it look fresh and green even in winter?

  Read everything you need to know about soil-bound and non-self-attaching climbers here.

  With the soil-bound creeper, you plant the roots directly into the ground. You may then have to remove some tiles from the surface - the sidewalk, or something like that.

  A non-self-attaching one finds its way up only with climbing help.

  The benefits of a climbing plant are worth it! Studies show that such a plant with an average leaf area index covering a facade of 17 m² captures the same amount of particulate matter as an average 25-year-old urban tree! In summer, that same climbing plant reduces room temperature by 4°C and wall temperature by 8°C!",
  price: 40,
  category: ["Facade"],
  difficulty: "Easy",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Bye, bye sound", "Health", "Well-being", "Energy use", "Lifespan facade"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."


image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198808/19._Hedge_jvgjpq.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370704/19._Hedge_vwvr9j.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794355/hedge5_agw1jf.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794355/hedge4_jyl31d.jpg")

solution = Solution.new(
  title: "Hedge",
  intro: "What could be more natural and beautiful than a hedge to safeguard your private moments? You hide your trash cans behind it as much as it makes the animals in your garden happy or protects you from strong winds.",
  explanation: "A walled garden is inaccessible to animals. But with a natural fence like your hedge, you give critters - such as hedgehogs - safe passage between different green areas.

  If your hedge borders others or gardens and groves, the passage of insects, birds, reptiles, amphibians and mammals ensures healthy populations.",
  price: 60,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Water balance", "Heat stress", "Air quality", "Biodiversity", "Health", "Well-being"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."



image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198811/20._Permeable_pavement_zwtder.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370705/20._Permeable_pavement_tana4x.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712826/permeable_pavement1_e1r3z8.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794357/permeable_pavement_coyoqu.jpg")

solution = Solution.new(
  title: "Permeable pavement",
  intro: "You want a paved surface for (part of) your patio or garden, but you don't want to harm the environment? There is a sympathetic solution!",
  explanation: "Whichever way you look at it, every garden needs some paving (at some point). For your patio, because you would rather not see your chairs or table sink into the grass. For a path, to keep your feet dry in the morning dew. Or for your driveway, to neatly park your two- or four-wheeler(s).

  The basic rule is: the sum of all your paved surfaces does not exceed 40% of your garden area. And as with a lot of things, the less hardiness, the better.

  Because ... paving unfortunately has two major disadvantages. Your garden heats up more in the summer. Paved surfaces, such as asphalt or clinkers, absorb more sun than green surfaces. They 'store' the heat and release it at night, raising the temperature in your yard. Furthermore, most paved areas do not allow rainwater to pass through to the ground. They are completely sealed and send rainwater to the sewer system. During very intense showers, the sewer system can become overloaded. Flooding in the streets and also in your garden is then not unthinkable.

  Fortunately, there are many alternatives. The permeable paving; here the water seeps directly through the material itself. Or the water-permeable kind; here the water runs between the joints or specially made openings. A combination of grass and paving is also possible.

  Here you can read more about a water-level paving. The main advantage of this is that it collects rainwater locally instead of placing a burden on the sewer system. You lay them with wide joints, which you fill with a fine granulate.

  The rainwater flows smoothly through this into the subsoil.

  Attention: this paving only belongs on substrates that are well-drained. And then sandy soil or loamy sandy soil are perfect candidates.",
  price: 1200,
  category: ["Pavement"],
  difficulty: "Difficult",
  advantages: ["Water balance", "Drought resistance"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."




image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678199371/21._Grey_to_green_saiams.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370705/21._Grey_to_green_gttwke.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794357/grey_to_green4_pq4cts.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712822/grey_to_green2_iakcd3.jpg")

solution = Solution.new(
  title: "Grey to green",
  intro: "Flanders is one of the most paved places in Europe. And your driveway and terrace are also culprits. Maybe you could do without a few bricks and tiles? You get a green view and a cooler garden as a result!",
  explanation: "Climate change never comes with good news; more drought, brighter heat waves and more intense rainfall.

  Flanders is in a particularly bad light when it comes to paved surfaces. We may not always realize it, but our driveways and terraces are also contributing heavily to this. And that has major consequences. Asphalt and clinkers absorb more sun than the green varieties, and do not allow rainwater to pass through to the surface. Pot tight, they sit, sending rainwater straight to the sewer system.

  Add these two things together and voilà, there are the risks already: increased risk of flooding, heat stress, parched soils, less carbon storage in soil and through plants, and less biodiversity.

  Fortunately: if we transform our soil into a true sponge, we reduce the dangers enormously. And uh, how exactly do we do that?

  By softening on a large scale so that rainwater can seep into the soil locally.

  By (among other things) planting more trees and shrubs. Planting provides natural shade, reduces heat stress and ensures that the soil stays moist longer and is more resistant to drought.

  Take a walk around your home. Where would a little less hard ground certainly not be an inconvenience? Narrow the path to your front door, perhaps? Or park your car on two 'tracks' instead of a fully paved area?

  By the way, did you know that the sum of all your paved surfaces can legally be no more than 40% of your garden area? But of course, less is even better!

  Is paving here and there indispensable? Then take a look at the permeable or water-leveling options. With the former, rainwater runs directly through the material; the latter allows it to seep into the ground through wide joints or openings.",
  price: 500,
  category: ["Pavement"],
  difficulty: "Medium",
  advantages: ["Water balance", "Water quality", "Heat stress", "Air quality", "Soil quality", "Biodiversity", "Health", "Well-being", "Property value", "Drought resistance"]
)

solution.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution.save!
puts "Creating solution #{solution.id}..."



image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678199257/22._Car_sharing_qoj8i6.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370705/22._Car_sharing_n6mh6f.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794355/car_sharing5_njiq3l.png")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/car_sharing4_fmizyx.png")

solution1 = Solution.new(
  title: "Car sharing",
  intro: "The concept of car sharing is simple: you use a car when you need it. If you don't need to leave your house, someone else can get behind the wheel. Did you know that this way one shared car replaces up to ten others?",
  explanation: "In our country, traffic emissions top the list of climate policy challenges. In 2019, it was guilty of nearly 25% of total emissions. If we take a closer look at the transportation sector, passenger transport accounts for more than half of these high figures.

  Flanders wants to reduce total CO2 emissions by 40% by 2030. The use of more sustainable cars must increase, and our car use itself must decrease. And tadaa, that's where shared mobility comes in.

  It's not something you think about every day, but a private car sits idle about 96% of the time. Yep, 96%; that's about 23 hours a day! All those parking lots take up a whopping 24,000 acres of our public space. That's pretty much the entire territory of Antwerp, including the port and all. Surely such a huge area could be used ten times better for green spaces, housing and other things?

  You use a shared car when you need it. If you don't drive it, someone else will. One car sharing can easily replace 5 to 10 private cars. The resulting environmental, social and economic benefits can only make you happy.

  Does this sound like ecological music to your ears? Ah, then we have two options for you. You go directly to existing car-sharing providers in your neighbourhood.

  They are on the rise, even in smaller communities. Still none in your area? Then you can gather your neighbours, friends, family or colleagues and share one or more private cars. And don't worry; there are simple car-sharing platforms that will make your administration a whole lot easier.

  By the way, shared cars come in all shapes and sizes. For a move you use a van, for an appointment in the city a smaller electric car, for a family visit with your children a monovolume. The type of travel is also flexible. Some organizations focus more on trips of a day or less; with others you can easily leave for several weeks or longer.",
  price: 0,
  category: ["Street"],
  difficulty: "Medium",
  advantages: ["Water balance", "Heat stress", "Air quality", "Bye, bye sound", "Health", "Well-being"]
)

solution1.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution1.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution1.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution1.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution1.save!
puts "Creating solution #{solution1.id}..."




image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678198810/23._Heat_pump_llmmnh.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370705/23._Heat_pump_jwgmo7.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794357/heat_pump3_w6gibe.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712828/heat_pump2_ax5lov.jpg")

solution2 = Solution.new(
  title: "Heat pump",
  intro: "With a heat pump, you get your domestic heat from nature. Ground, air or water: they are all suitable suppliers.",
  explanation: "There is a mass of heat stored in the ground, water and air - even in winter. Thank you for that, sunshine. It would be a shame if we don't make the best use of what nature so generously gives us, right?

  Classic heating systems get their energy from (fossil) fuels or electricity. A heat pump (HP) finds three quarters of environmentally friendly heating resources for free and for nothing in its environment. The other fourth the pump gets via electricity from the grid or through renewable energy such as solar panels.

  A HP consists of a network of tubes filled with coolant. This boils at very low temperatures - even below zero(!) - causing it to evaporate and turn into gas. The heat from outside (or rather cold, because yes, a freezing temperature is not exactly what you call warm) enters the pump via a suction fan or along a second network of pipes that extract heat from the ground.

  That heat vaporizes the coolant after which the (meanwhile) refrigerant gas is sent through a compressor. This then compresses the gas so hard that it becomes very hot (read: 45 to 55°C), giving off heat to your home's heating system. Because the gas gives off its own heat and then cools back down, it becomes liquid again; the refrigerant goes through the whole cycle again.

  A HP works best if your home is well insulated with floor, wall or ceiling heating. Why? You'll find out a little further.

  A water pump is expensive. But fortunately, in Flanders you get premiums for it and above all: you get double the return on your investment!

  There are 5 different heat pump systems; you can read all about them on the next page.",
  price: 3000,
  category: ["Roof"],
  difficulty: "Difficult",
  advantages: ["Air quality", "Energy use", "Property value"]
)

solution2.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution2.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution2.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution2.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")

solution2.save!
puts "Creating solution #{solution2.id}..."



image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678199256/24._Mow_less_v4tv95.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370705/24._Mow_less_mru8gv.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712822/mow_less1_eoaxwj.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678717383/mow_less2_ncwyu0.jpg")

solution3 = Solution.new(
  title: "Mow less",
  intro: "SOS. Bees, butterflies and other insects desperately need our help.",
  explanation: "Scientists are speaking loud & clear: if we continue as we are today, there won't be an insect crawling or flying around in 100 years. And we more than desperately need them as basic suppliers of our food. Strange as it may sound: without insects, our food chain collapses like a house of cards.

  Bees, in particular, are indispensable. Much of our food crops depend on their pollination. Think away the bees, and fewer, misshapen, smaller or even no fruits remain.

  However, there is a very simple way to guarantee them a bright future. Mow less. Letting your grass go wild a little more often is the cheapest and easiest way to healthy and balanced biodiversity in your garden. You will finally give your flowers and other plants a chance to continue growing, instead of constantly decapitating them. You don't even have to plant additional seeds to do so; numerous little flowers will emerge on their own through natural pollination.

  You might not believe it, but if you don't mow your lawn every week every week, you will attract up to 10 times more bees. And extra insects attract more birds. All positive for the biodiversity factor. A German study shows that those mowed lawns contain a maximum of 3 insect species; in an unmowed garden you can easily find between 13 and 25!

  Mowing less, does that mean the whole of your garden becomes half a jungle? Of course not. You can perfectly create pathways, keep the edges of your lawn short or just let some circles or strips grow wild. Choosing different grass heights is a really smart move. This creates multiple habitats; short grass provides food, long grass provides shelter and the growth of host plants.

  Interesting know-it-all: an Argentine grassland scored a world record in terms of number of habitat types per m². That was a whopping 89! It nicely demonstrates that even your patch of garden, no matter how small, can play a firm leading role in increasing the biodiversity of your environment.",
  price: 0,
  category: ["Garden - green"],
  difficulty: "Easy",
  advantages: ["Water balance", "Biodiversity", "Energy use", "Drought resistance"]
)

solution3.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution3.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution3.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution3.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution3.save!
puts "Creating solution #{solution3.id}..."



image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678199254/25._Roof_insulation_yje396.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370706/25._Roof_insulation_lxn8sq.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712824/insulation_roof_u5o8eu.jpg")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678717383/insulation_roof2_hwpbz6.jpg")

solution4 = Solution.new(
  title: "Roof insulation",
  intro: "Did you know that most heat is lost through your roof? And if you address this problem properly, you can save up to 40% per year!",
  explanation: "Whether you spend time at home, the gym, the supermarket or a shopping mall, it's nice and warm in the winter and often air-conditioned in the summer. Keeping things warm and cool, the lights, the operation of appliances; it takes a lot of energy to do that. That comes mostly from fossil fuels. Unfortunately, this story causes a lot of emissions of greenhouse gases in Belgium.

  If we take a look at our own home, more than 60% of our energy goes to heating it. The rest is for your refrigerator and freezer, lighting, washing and drying machines, cooking, hot water and entertainment.

  We want to see those percentages fall mercilessly, of course. Insulate is the magic word here. It's almost standard in new construction these days, but older homes often still prove a sticking point.

  The biggest energy waster is your poorly or non-insulated roof. Secondly, your exterior walls cause a lot of heat loss, followed by your windows and then your floor.

  Insulating your roof has been compulsory since 2020 for all (rental) houses that were connected to the electricity grid before 2006. So get to work!

  It is best to get a specialist to do this for you, but we can tell you what to look out for.

  Do you already feel the benefits? Then perhaps a heat pump is the next step for you.",
  price: 1500,
  category: ["Roof"],
  difficulty: "Difficult",
  advantages: ["Air quality", "Bye, bye sound", "Energy use", "Lifespan roof", "Property value"]
)

solution4.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution4.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution4.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution4.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution4.save!
puts "Creating solution #{solution4.id}..."


image1 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678199255/26._Rainwater_barrel_ueimsi.png")
image2 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678370706/26._Rainwater_barrel_hxpobg.png")
image3 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794358/rain_barrel4_hpkghy.png")
image4 = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712826/barrel2_q30bp4.jpg")

solution5 = Solution.new(
  title: "Rainwater barrel",
  intro: "A rainwater barrel captures water during heavy rains, reducing the amount flowing into the sewer system and reducing the risk of flooding in your street.",
  explanation: "Despite the fact that quite a bit of rain falls from the sky in our country, we still regularly experience extended periods of drought during the summer. Sometimes even resulting in a ban on watering.

  Your rain barrel provides a (admittedly limited) supply of rainwater during these dry periods to water your garden. For your patio or facade garden, this may be enough to cover a few weeks. For a larger garden, 1 rain barrel will not always suffice during several dry weeks. Still, the rain barrel helps raise awareness about our rainwater use!

  Did you know that plants are happier with rainwater instead of tap water? Tap water contains quite a bit of calcium and most plants don't like that. Rainwater, on the other hand, is much softer and thus better for watering your garden.

  Furthermore, your collected rainwater is not only useful for your plants, you can also use it to wash your car or bike!

  Today, you have numerous forms to choose from. There are rain barrels shaped like flower pots, authentic wine barrels, pitchers, raindrops with integrated watering cans, and so on. So which rainwater barrel you choose depends on your taste, but also on where you want your rainwater barrel (garden, sidewalk, balcony,...) and how much water you want to collect in it (sizes range from 50 to as much as 1000 liters!).",
  price: 80,
  category: ["Garden - blue"],
  difficulty: "Easy",
  advantages: ["Water balance", "Energy use", "Drought resistance"]
)

solution5.photos.attach(io: image1, filename: "Image 1", content_type: "image/png")
solution5.photos.attach(io: image2, filename: "Image 2", content_type: "image/png")
solution5.photos.attach(io: image3, filename: "Image 3", content_type: "image/png")
solution5.photos.attach(io: image4, filename: "Image 4", content_type: "image/png")
solution5.save!
puts "Creating solution #{solution5.id}..."



user1 = User.new(
  email: "lewagon@hotmail.com",
  password: "123456",
  username: "Le Wagon"
)

user1.save!
puts "Creating user #{user1.id}..."

user2 = User.new(
  email: "laraparson@hotmail.com",
  password: "123456",
  username: "Lara parson"
)

user2.save!
puts "Creating user #{user2.id}..."

user3 = User.new(
  email: "pierreboileau@hotmail.com",
  password: "123456",
  username: "Pierre Boileau"
)

user3.save!
puts "Creating user #{user3.id}..."

user4 = User.new(
  email: "henristubbe@hotmail.com",
  password: "123456",
  username: "Henri Stubbe"
)

user4.save!
puts "Creating user #{user4.id}..."

user5 = User.new(
  email: "ellamiller@hotmail.com",
  password: "123456",
  username: "Ella Miller"
)

user5.save!
puts "Creating user #{user5.id}..."



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794356/car_sharing4_fmizyx.png")
experience = Experience.new(
  content: "Really liked this solution. I recommend it!",
  rating: 4.5,
  user_id: user1.id,
  solution_id: solution1.id
)

experience.photo.attach(io: image, filename: "Image", content_type: "image/png")
experience.save!
puts "Creating experience #{experience.id}..."

image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712826/barrel2_q30bp4.jpg")
experience = Experience.new(
  content: "Very clear instructions! We installed it together with the kids.",
  rating: 4.8,
  user_id: user4.id,
  solution_id: solution5.id
)

experience.photo.attach(io: image, filename: "Image", content_type: "image/png")
experience.save!
puts "Creating experience #{experience.id}..."

image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678717383/mow_less2_ncwyu0.jpg")
experience = Experience.new(
  content: "Really liked this solution. I recommend it!",
  rating: 4.4,
  user_id: user5.id,
  solution_id: solution3.id
)

experience.photo.attach(io: image, filename: "Image", content_type: "image/png")
experience.save!
puts "Creating experience #{experience.id}..."

image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678712824/insulation_roof_u5o8eu.jpg")
experience = Experience.new(
  content: "A bit hard to implement...",
  rating: 3.0,
  user_id: user2.id,
  solution_id: solution4.id
)

experience.photo.attach(io: image, filename: "Image", content_type: "image/png")
experience.save!
puts "Creating experience #{experience.id}..."

image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1678794358/self_att_climbing_plant3_zug8ox.png")
experience = Experience.new(
  content: "My facade looks a lot prettier now!",
  rating: 3.5,
  user_id: user4.id,
  solution_id: solution6.id
)

experience.photo.attach(io: image, filename: "Image", content_type: "image/png")
experience.save!
puts "Creating experience #{experience.id}..."






like = Like.new(
  user_id: user1.id,
  solution_id: solution2.id
)

like.save!
puts "Creating like #{like.id}..."


like = Like.new(
  user_id: user2.id,
  solution_id: solution4.id
)

like.save!
puts "Creating like #{like.id}..."


like = Like.new(
  user_id: user5.id,
  solution_id: solution2.id
)

like.save!
puts "Creating like #{like.id}..."


like = Like.new(
  user_id: user2.id,
  solution_id: solution5.id
)

like.save!
puts "Creating like #{like.id}..."


like = Like.new(
  user_id: user1.id,
  solution_id: solution5.id
)

like.save!
puts "Creating like #{like.id}..."


like = Like.new(
  user_id: user3.id,
  solution_id: solution6.id
)

like.save!
puts "Creating like #{like.id}..."


like = Like.new(
  user_id: user1.id,
  solution_id: solution6.id
)

like.save!
puts "Creating like #{like.id}..."




# favourite = Favourite.new(
#   user_id: user1.id,
#   solution_id: solution5.id
# )

# favourite.save!
# puts "Creating favourite #{favourite.id}..."
