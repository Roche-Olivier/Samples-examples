
--|| ====================================||--
--|| NO 1.1||--
INSERT INTO public."unit_of_measures_types"(
	"unit_of_measures_types_id", "name", "description", "active")
	VALUES 
    (-2, '--NA--', 'Not Applicable', '1'),
    (-1, '-None-', 'None', '1'),
    (1, 'Liquid volume', 'Liquid volume of an item', '1'),
    (2, 'Volume', 'Volume of a measurement', '1'),
    (3, 'Weight', 'Weight of a measurement', '1'),
    (4, 'Length', 'length of an item', '1'),
    (5, 'Power', 'Power', '1'),
    (6, 'Liquid per volumn', 'Power', '1');


--|| NO 1.2||--
INSERT INTO public."unit_of_measures"(
	"unit_of_measures_id","unit_of_measures_types_id", "name", "description", "active")
	VALUES 
    (-2, -2,'--NA--', 'Not Applicable', '1'),
    (-1, -1,'-None-', 'None', '1'),
    (1, 1,'ml', 'Millilitre', '1'),
    (2, 1,'l', 'Litre', '1'),
    (3, 1,'kl', 'kilolitre', '1'),
    (4, 2,'dm³', 'Cubic decimeter is a volume measurement unit.', '1'),
    (5, 2,'m³', 'Cubic meter is a volume measurement unit.', '1'),
    (6, 3,'mg', 'Milligram', '1'),
    (7, 3,'g', 'Gram', '1'),
    (8, 3,'kg', 'Kilogram', '1'),
    (9, 4,'mm', 'Millimeter', '1'),
    (10, 4,'cm', 'Centimeter', '1'),
    (11, 4,'m', 'Meter', '1'),
    (12, 5,'W', 'Watts', '1'),
    (13, 6,'ml/l', 'Millilitre per litre', '1');
--|| NO 2.1||--
INSERT INTO public."external_company_types"(
	"external_company_types_id", "name", "description", "active")
	VALUES 
    (-2,'NA', 'Not Applicable', '1'),
    (-1,'None', 'None', '1'),
    (1,'Brand', 'A branded company', '1'),
    (2,'Nursery', 'A Nursery', '1'),
    (3,'Seeds', 'Seeds', '1'),
    (4,'Hydroponic Shop', 'Hydroponics specific shop', '1');
--|| NO 2.2||--
INSERT INTO public."external_companies"(
	"external_companies_id","external_company_types_id", "name", "description", "active")
	VALUES 
    (-2, -2,'NA', 'Not Applicable', '1'),
    (-1, -1,'None', 'None', '1'),
    (1, 1,'EHG', 'Easy Grow Hydro', '1'),
    (2, 1,'Ecoterra', 'Ecoterra', '1'),
    (3, 2,'Strawberry pot', 'Strawberry pot', '1'),
    (4, 3,'Nirvana', 'Nirvana', '1'),
    (5, 3,'Dinafem', 'Dinafem', '1'),
    (6, 3,'Humbolt', 'Humbolt', '1'),
    (7, 4,'Greenthumb Hydroponics', 'Greenthumb Hydroponics', '1'),
    (8, 4,'Hydro Cult', 'Hydro Cult', '1');
--|| NO 3.1||--
INSERT INTO public."nutrients_and_additive_types"(
	"nutrients_and_additive_types_id", "name", "description", "active")
	VALUES 
    (-2,'NA', 'Not Applicable', '1'),
    (-1,'None', 'None', '1'),
    (1,'NPK', 'NPK solution', '1'),
    (2,'Humates', 'Humates solution', '1'),
    (3,'Fulvates', 'Fulvates solution', '1'),
    (4,'Tea', 'Tea', '1');
--|| NO 4.1||--
INSERT INTO public."nutrients_and_additives"(
	"nutrients_and_additives_id","nutrients_and_additive_types_id","external_companies_id", "name", "description","hex_color", "active")
	VALUES 
    (-2,-2,-2,'NA', 'Not Applicable', '#FFFFFF','1'),
    (-1,-1,-1,'None', 'None', '#FFFFFF','1'),
    (1,1,1,'EHG Micro', 'EHG Coco micro solution', '#1E5200','1'),
    (2,1,1,'EHG Grow', 'EHG grow solution', '#366A18','1'),
    (3,1,1,'EHG Bloom', 'EHG bloom solution', '#558937','1'),
    (4,1,1,'EHG Ripener', 'EHG ripener solution', '#558937','1'),
    (5,1,7,'NutriPlex Micro', 'NutriPlex Micro solution', '#558937', '1'),
    (6,1,7,'NutriPlex Grow', 'NutriPlex Grow solution', '#558937', '1'),
    (7,1,7,'NutriPlex Bloom', 'NutriPlex Bloom solution', '#558937', '1'),
    (8,3,7,'Cal Mag', 'Cal Mag', '#558937', '1');
--|| NO 5.1||--
INSERT INTO public."container_types"(
	"container_types_id", "name", "description", "active")
	VALUES 
     (-2, 'NA', 'Not Applicable', '1'),
    (-1, 'None', 'None', '1'),
    (1, 'Germination tray', 'Germination tray', '1'),
    (2, 'Growing tray', 'Growing tray', '1'),
    (3, 'Polyethylene plastic bag', 'Polyethylene plastic bag', '1'),
    (4, 'Clay pot', 'Clay pot', '1'),
    (5, 'Plastic pot', 'Plastic pot', '1'),
    (6, 'Metallic pots', 'Metallic pots', '1'),
    (7, 'Hemp pots', 'Hemp pots', '1'),
    (8, 'Polystyrene cup', 'Polystyrene cup', '1'),
    (9, 'Bushel baskets', 'Bushel baskets', '1');
--|| NO 5.2||--
INSERT INTO public."containers"(
	"containers_id","container_types_id", "name", "description","units","unit_of_measures_id","color","shape","image_base_64","active")
	VALUES 
    (-2,-2, 'NA',           'NA',               '0',    -2,     'NA',   'NA',   '',      '1'),
    (-1,-1, 'None',         'None',             '0',    -1,     'None', 'None', '',      '1'),
    ( 1, 5, 'plastic pot',  'plastic pot',     '10',    5,      'red',  'round','data:image/png;base64,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IwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAVc0x/w9/rHA8dWNyBQAAAABJRU5ErkJggg==',   '1');

--|| NO 6.1||--
INSERT INTO public."plant_grow_stages"(
	"plant_grow_stages_id","name", "description", "active")
	VALUES 
    (-2, 'NA', 'Not Applicable', '1'),
    (-1, 'None', 'None', '1'),
    (1, 'Sprout', 'Seed contains ALL the nutrients they need to germinate and grow their first pair of leaves', '1'),
    (2, 'Seedling', 'As roots begin to develop and spread, plants need a boost of quickly absorbed, well-balanced nutrients', '1'),
    (3, 'Vegetative', 'Nitrogen is the most important for plants when their energy is directed into growing stems and foliage', '1'),
    (4, 'Budding', 'Full-grown plants need extra phosphorus during the transition to the blooming stage', '1'),
    (5, 'Flowering', 'Potassium is essential for the development of healthy flowers and fruit', '1'),
    (6, 'Ripening', 'As flowers or fruit reach full maturity, the plants no longer need nutrients - just water.', '1');
    
--|| NO 7.1||--
INSERT INTO public."users"(
	"users_id","name", "description","last_login_date", "active")
	VALUES 
    (1, 'Roach', 'Roachman','1900-01-01 00:00:00', '1'),
    (2, 'Splif', 'Splifford','1900-01-01 00:00:00', '1');

--|| NO 8.1||--
INSERT INTO public."light_types"(
	"light_types_id","name", "description", "active")
	VALUES 
    (-2, 'NA', 'Not Applicable', '1'),
    (-1, 'None', 'None', '1'),
    (1, 'LED tube', 'LED tube', '1'),
    (2, 'LED bulb', 'LED bulb', '1'),
    (3, 'Gavida', 'Gavida', '1'),
    (4, 'CFL', 'CFL', '1'),
    (5, 'HPS', 'HPS', '1'),
    (6, 'MH', 'MH', '1');
    
--|| NO 9.1||--
INSERT INTO public."environment_allocations"(
	"environment_allocations_id","name", "description", "active")
	VALUES 
    (-2, 'NA', 'Not Applicable', '1'),
    (-1, 'None', 'None', '1'),
    (1, 'Indoor', 'Indoor', '1'),
    (2, 'Outdoor', 'Outdoor', '1'),
    (3, 'Growtent', 'Growtent', '1'),
    (4, 'Greenhouse', 'Greenhouse', '1');
    
--|| NO 10.1||--
INSERT INTO public."medium_types"(
	"medium_types_id","name", "description", "active")
	VALUES 
    (-2, 'NA', 'Not Applicable','1'),
    (-1, 'None', 'None','1'),
    (1, 'Rockwool', 'Rockwool is one of the most common growing medias used in hydroponics. Rockwool is a sterile, porous, non degradable medium that is composed primarily of granite and/or limestone which is super heated and melted, then spun into a small threads like cotton candy. The rockwool is then formed into blocks, sheets, cubes, slabs, or flocking. Rockwool sucks up water easily so youll want to be careful not to let it become saturated, or it could suffocate your plants roots, as well as lead to stem rot and root rot. Rockwool should be pH balanced before use. Thats done by soaking it in pH balanced water before use.','1'),
    (2, 'Grow Rock (Hydrocorn)', 'Hydrocorn grow rockGrow rock is a Lightweight Expanded Clay Aggregate (L.E.C.A.), That is a type of clay which is super-fired to create a porous texture. Its heavy enough to provide secure support for your plants, but still light weight. Grow rocks are a non-degradable, sterile growing medium that holds moisture, has a neutral pH, and also will wick up nutrient solution to the root systems of your plants. Hydrocorn grow media is reusable, it can be cleaned, sterilized, then reused again. Although on a large scale, cleaning and sterilizing large amounts of grow rocks can be quite time consuming. Grow rock is one of the most popular growing medium used for hydroponics, and just about every store selling hydroponics supplies carries it.','1'),
    (3, 'Coco Fiber', 'Coco chips hydroponic growing medium"Coco coir" (Coconut fiber) is from the outer husk of coconuts. What was once considered a waste product, is one of the best growing mediums available. Although coco coir is an organic plant material, it breaks down and decomposes very slowly, so it wont provide any nutrients to the plants growing in it, making it perfect for hydroponics. Coco coir is also pH neutral, holds moisture very well, yet still allows for good aeration for the roots. Coco fiber comes in two forms, coco coir (fiber), and coco chips. Their both made of coconut husks, the only difference is the particle size. The coco fiber particle size is about the same as potting soil, while the coco chips particle size is more like small wood chips.','1'),
    (4, 'Perlite', 'Perlite is mainly composed of minerals that are subjected to very high heat, which then expand it like popcorn so it becomes very light weight, porous and absorbent. Perlite has a neutral pH, excellent wicking action, and is very porous. Perlite can by used by itself, or mixed with other types of growing medias. However because perlite is so light that it floats, depending on how you designed your hydroponic system, perlite by itself may not be the best choice of growing media for flood and drain systems. Perlite is widely used in potting soils, and any nursery should carry bags of it. However perlite is sometimes also used as an additive added to cement. You may find it for a better price with the building supplys, and/or at places that sell concrete mixes and mixing supplys. When working with perlite be careful not to get any of the dust in your eyes. Rince it off to wash out the dust, and wet it down before working with it to keep the dust from going airborn. ','1'),
    (5, 'Vermiculite', 'Vermiculite is a silicate mineral that like perlite, expands when exposed to very high heat. As a growing media, vermiculite is quite similar to perlite except that it has a relatively high cation-exchange capacity, meaning it can hold nutrients for later use. Also like the perlite, vermiculite is very light and tends to float. There are different uses and types of vermiculite, so youll want to be sure what you get is intended for horticulture use. The easiest way to be sure is to get it from a nursery. ','1'),
    (6, 'Oasis Cubes', 'Oasis Cubes are similar to Rockwool cubes, and have similar propertys. But oasis cubes are more like the rigid green or white floral foam used by forests to hold the stems in their flower displays. Oasis cubes are an open cell material which means that the cells can absorb water and air. The open cells wick moisture throughout the material, and the roots can easily grow and expand through the open cell structure. While oasis cubes are usually used as starter cubes for hydroponically grown plants, they also have bags you can fill your growing containers with. While oasis cubes are similar to rockwool, Oasis cubes dont become waterlogged as easily as rockwool cubes. Even so dont let it stay in constant contact with the water supply, or youll still have water logging issues. ','1'),
    (7, 'Floral foam', 'Floral foam can be used as a growing media in hydroponics as well, and is similar to the oasis cubes, though the cell size is larger in the floral foam. Depending on the type of hydroponic system your using, and how you designed it, you may notice a couple of problems with using floral foam. First it can crumble easily and that can leave particles in your water. Second youll want to be sure it doesnt get water logged. Floral foam absorbs water easily, so make sure it isnt in constant contact with the water supply.','1'),
    (8, 'Growstone Hydroponic Substrate', 'Growstones are made from recycled glass. They are similar to grow rocks (hydrocorn) but are made of clay and shaped marbles. Growstones are light weight, unevenly shaped, porous, and reusable, they provide good aeration and moisture to the root zone. They have good wicking ability and can wick water up to 4 inches above the water line. So youll want to make sure it has good drainage or is deep enough so it doesnt wick water all the way to the top. Otherwise like with the growing media in any hydroponic system, if the top of the growing media is continually wet, you may have problems with stem rot. While they are made from recycled glass, their not sharp and you wont get cut from it, even if they break.','1'),
    (9, 'River rock', 'River rock is common and easy to find in home improvement stores, as well as even pet supplys stores (with the fish and aquariums). River rock is fairly inexpensive (depending on where you get it from), and comes in many different sizes. River rock is rounded with smooth edges from tumbling down the river. Though manufactured river rock is rounded using large mechanical tumblers, it has the same end result with smooth edges.You can use regular rocks from your back yard in hydroponic systems as well if you dont mind the jagged edges. Just make sure to clean and sanitize them before using it. Just spray all the dirt off of the rock using the jet spray from your hose to clean it, then soak it overnight in bleach water to sanitize it. Then just rinse and use. Though using rock as a growing media is inexpensive and easy, it will get heavy quickly, so you wont want to move it later.  River rocks are not porous, therefor it doesnt hold and retain moisture in the root zone of hydroponic systems. Rock is uneven so it has a lot of air pockets between the rocks so the roots can get plenty of oxygen, but water easily drains down to the bottom. Rock wont wick up moisture either, so you will need to adjust your watering schedules so the roots dont dry out between waterings. You can mix in some coco chips or other growing media that holds moisture with your rock to aid it in holding onto moisture longer.Because of the good drainage propertys of rock, its very good to use to aid in the drainage of other hydroponic growing medias that might otherwise become saturated from sitting in water. A layer of rock at the bottom of the growing container will keep your growing media from sitting in water at the bottom of the container, keeping it from being saturated. ','1'),
    (10, 'Pine shavings', 'Pine shavings are an inexpensive hydroponic growing media as well, and a lot of commercial growers use it. Generally for large scale hydroponic drip irrigation systems. Dont confuse pine shavings with saw dust. Saw dust will become compact and water logged easily. Youll want to make sure your pine shavings were made from kiln dried wood, and does "NOT" contain any chemical fungicides. Kiln dried to burn off all the sap in the wood that is bad for the plants. Most pine shaving products would be kiln dried to begin with.Good source to find pine shavings are pet supply stores. Its used for things like hamster and rabbit bedding. Just make sure to read the package to be sure it doesnt have any chemical additives like fungicides or odor inhibitors. You should be fine if it states its organic. Another good cheep source for pine shavings is at feed stores, its also used as bedding in horse stalls and they sell it by cubic yard. If you have a choice get the largest partial size you can. The larger the air pockets between the shavings, the better aeration to your roots.Pine shavings are a wood product, so they absorb water easily, thus can become water logged easily. So make sure you have good drainage so the shavings dont sit in water. If there is a possibility of it sitting in water, a layer of rocks at the bottom will aid drainage greatly.','1'),
    (11, 'Composted and aged Pine bark', 'Pine bark is one of the first growing medias used in hydroponics. It was generally considered a waste product, but has found uses as a ground mulch, as well as substrate for hydroponicaly grown crops. Pine bark is considered better than other types of tree bark because it resists decomposition better, and has less organic acids that can leach into the nutrient solution than others. Bark is generally referred to as either fresh, composted, or aged.Fresh bark uses up more nitrogen as it begins to decompose, so commercial growers generally compensate by adding extra nitrogen to the nutrient solution. During the composting process, nitrogen is added to the bark, and mixing it in while breaks down. So nitrogen issues are far less of a concern with composted pine bark. Ageing is a similar process, but has less nitrogen added to it, so its better than using fresh bark, but not as easy as the composted bark. Pine bark can be found at places that sell ground mulch, as well as ground mulch for playgrounds.','1'),
    (12, 'Poly (Polyurethane) foam insulation', 'Polly foam is not commonly used in hydroponics, and hydroponics stores dont carry it. But has been used as an alternative to using rockwool or oasis cubes as starter cubes with great results. Polly foam is cheap and easy to find. Any hobby store or place that sells fabrics should carry it. Its most commonly used as furniture foam, and is also referred to as "foam batting." It comes in sheets or rolls of different sizes and thickness.  You can make your own starter cubes for about one penny each using the poly foam if you get the one or two inch thick sheets/rolls and cut them into cubes.','1'),
    (13, 'Water absorbing crystals (water-absorbing polymers)', 'Water absorbing polymer crystals have been around for quite a while, and are used in many industrys. Everything from baby diapers, to the sports industry where they are used in cloth rags they can where on the head or neck to keep cool. They are also used in gardening where the crystals are mixed into the soil to help retain moisture in the soil.  Florists use them in vases to keep flowers fresh, and the colored ones make for a nice decorated display. The crystals expand to many times their size as they soak up water. One pound of the crystals can hold as much as 50 gallons of water. The crystals come in many sizes, everything from a powder, to marble and even golf ball size. Depending on the size of the crystals they can take more than an hour or two to fully absorb. When they are full of water they look and feel like a glob of jello. Once they dry out, they can be stored and reused again over and over. The water absorbing polymer crystals are not a common hydroponic growing media, but like everything else, its growing in popularity. Mostly due to their increased availability. They are quite inexpensive, and reusable. However used  alone by themselves they dont allow the roots to get much oxygen/air. Being like jello they pack together and fill the air pockets. The larger size crystals are better suited for use in hydroponics. The larger size helps retain some of the air pockets between the crystals. Also by mixing some river rock or other similar growing media with the crystals will help increase the air pockets between the crystals. Using the polymer crystals for hydroponics allows for some of the simplest hydroponic system designs. Even on the slimmest of budgets. Simply soaking some water absorbing crystals in nutrient solution, then setting them in a container and placing your seedlings in it, youve got a hydroponically grown plant. You dont need any pumps. Just make sure there are holes in the bottom of your container, and just place your container in nutrient solution once or twice a week to re-hydrate the crystals. You wont find water absorbing polymer crystals in hydroponic shops, but they are easy to find. Because of their popularity, most large nurserys carry them as soil amendments. Also if you do a search for them online, youll fine hundreds of places selling them.','1'),
    (14, 'Sand', 'Sand Is actually a very common growing media used in hydroponics. Its the main growing media used at the Epcot Center Hydroponic Greenhouse in Florida. Mainly for their large hydroponically grown plants and trees. Sand is like rock, just smaller in size. Because the particle size is smaller than regular rock, moisture doesnt drain out as fast. Sand is also commonly mixed with Vermiculite, Perlite, and or coco coir. All help retain moisture as well as help aerate the mix for the roots.When using sand as a growing media you will want to use the largest grain size you can get. That will help increase aeration to the roots by increasing the size of the air pockets between the grains of sand. Mixing Vermiculite, Perlite, and or coco coir with the sand will also help aerate. You will also want to rinse the sand well before use to get as much of the dust particles out of it as you can. One big downside to using sand as a growing media for hydroponics is that it is very heavy.  3-4 gallons of wet sand can weigh up to 50lbs. So you wont want to be moving it once you get it set up. Or use it in a ratio of something like 20%-30% sand and the rest Vermiculite, Perlite, or another type of growing media to reduce weight.','1'),
    (15, 'Rice Hulls', 'Depending on your location, rice hulls may be readily available. Its a byproduct of the rice industry. Even though they are an organic plant material, they break down very slowly like coco coir, making them suitable as a growing media for hydroponics.  Rice hulls are referred to as either fresh, aged, composted and parboiled, or carbonized. Fresh rice hulls are typically avoided as a hydroponic growing media because of the high probability of contaminants such as rice, fungal spores, bacteria, decaying bugs, and weed seeds. Parboiled rice hulls (PRH) is done by stemming and drying the rice hulls after the rice has been milled from them. This kills any spores, bacteria, and microorganisms, leaving a sterile and clean product. Rice hulls are also often used as part of a mix of growing media such as 30%-40% rice hulls and pine bark mix. The overall pH of parboiled and composted rice hulls range from 5.7 to 6.5, which is right in the pH range for most hydroponically grown plants. Fresh and/or composted rice hulls tend to have a high Manganese (Mn) content. But problems with Manganese toxicity can be avoided as long as the pH is above 5. Which is below normal range for hydroponics anyway.','1');

--|| NO 10.2||--
INSERT INTO public."mediums"(
	"mediums_id","medium_types_id", "name", "description","units","unit_of_measures_id","image_base_64", "active")
	VALUES 
    (-2,-2, 'NA',           'NA',            '0',    -2,      '',     '1'),
    (-1,-1, 'None',         'None',        '0',    -1,      '',     '1'),
    ( 1, 3, 'coco',         'coco',        '10',    5,        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQCAYAAAByNR6YAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAYdEVYdFNvZnR3YXJlAHBhaW50Lm5ldCA0LjEuMWMqnEsAAA/dSURBVHhe7d1/rN11fcdxUAbKotnM9seyP0xckN5T8HfYEn8wlzj2i+GmW8w2E5dt2TK3zLhfWZatf2whc8w523NKQX5DgfacW2oFSqECQ9FqEShKbREq0B/8EGVhTkV+fPc9h9Nrb/tqe/umfxxyHu/kkXv7vPee8/389865p997TNM0AAAcRTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECTJqX2qQzANMjRoBJ81KbdAZgesQIMGleapPOAEyPGAEmzdGaT1696GXdweLjWsd3+50TeoPOK7qD4ceZ49uPL/+vKxcdO/7WFzXpDMD0iBFg0ryYuWDtye1C1XlLu1B9uF2ozm+Xq42te9t/72z/vbv92o724+b232taZ/f6M+9bPlj8M+MfL006AzA9YgSYNNXprV70tl6/c3u7RP2gXaKe6w0WN4fWeb71TOuJZf1FZ3dXd145fqgjmnQGYHrECDBpjnSWrV50WrffubJdmp4+cIlauPYxHm59ZMWaxa8aP/SCJp0BmB4xAkyahc7q1ccc2x3M/Fm7FD3+wqtReXE6Et1B5+lev3NXr7/o9eOnOeykMwDTI0aASbOQWTY46RXd/sy/tMvVs2lRejHaJev51j3LZ2dOGz/dISedAZgeMQJMmsPNkiWnv6w7mPnP3qDzvbQgHSXD92ftWj5Y9I7x0x500hmA6REjwKQ51Cyf7by8Xa4+GhaiolOCH329fa67lw1mXjd++jjpDMD0iBFg0hxquv2Z03qDzp59l6AjtWLNm5trP//nzZ3bL2q+sXN9c/+uG8duarY9tK79nh8tWd1+57lev3PV8P1e40s4YNIZgOkRI8CkOdgsvXp409DOTfsuS0fqyg2/2Ty457bmgd2fbW744kebK274teay6395ZNXG9zfbH7qu/b7OAT/X6898cHwZB0w6AzA9YgSYNAebZf3Oh9oFawH3t8quu/3DzTf33NqsueWD8esrb/iN5q7tl8Svdfudr7bP/7PjS5k36QzA9IgRYNKkWT445dXtcrUlLT8LMXyFatdjm5pPrf2FcZv/XquhW+/812bjl//hgD7ULlg/6PU7HxhfzrxJZwCmR4wAkyZNu9yc3ht0vpOWn8vX/0pz1Y3vbZ3VLlLvaZYPTj3gez5398eaDZv+tv38lGb25j9oNm89d/T53q9fuO7tze7HN48ea9+f28fz7ZJ11fhy5k06AzA9YgSYNGmWDWb+pl2w4s1Eh29Qf/zJrc2j3/5q89R3d7Uf72lW3vDrc1/vDjrNN3ZuaC697j3N6o2/2+z+1h3NJdf+0rzHGL7hffPWFfPa/toF69vn3fHW48aXNDfpDMD0iBFg0qRpl6vVaekZ+tLXljWzN//+cAFqzp19Y7Puc3/S3Pfw9XNL1LDfv/PG5uY7/rnZ+dgXm6tv+u15P3/9F/5q9Ob2Fde8dV4Pnu/2F71rfElzk84ATI8YASZNmu6gszUsPCPDhereHbOjz2/Y9NfN3dsvbb7y9QuaHXtuGX9Pp/n8lnOa737v8eay9WfM/dx517yt2dQuZw8/evvoPVp7+yHNziwZX9LcpDMA0yNGgEmz/5zdffWPtcvNkwcsO2PDRemBXRtHr1Ctuul9zcbN/9g89Mjnm2effbq55LoXXsW6c9tFo1szDL/vq/df1bp69Pkd285vLlz3jgMe8+A6q8aXNTfpDMD0iBFg0uw/S1edfGK72Bzybw5etO6dzdYds82Dj9zW3NMuUHu+dWdz745Bc9f2S5vZWz7Y7Nh9c3P+2tPaZeqdzeXrz2guv/6M5oJ1b29/9sD/TXgo3UHn1vFlzU06AzA9YgSYNPvPOZfM/PjhFqyh5bNvaFZv/J1m/Rc+0ly54cy2dUZL1qNPbBm19DNHrvPf48uam3QGYHrECDBp9p/zVr71+F6/81ReeA7ttrvOHr336rzDv4F9Qbr9zprxZc1NOgMwPWIEmDRpeoPO/WnhOZzrbv+LZvtD147/fUpz7po3NctnD7xP1kJ1B51/G1/S3KQzANMjRoBJk6ZdbNalhedQhrdsuP4Lf9ls+trSZnDz7zV333fZ6I8537uj39xyx5LSq1rd/syvji9pbtIZgOkRI8CkSdPtL/6n3kFuNLq/4V3ddz2+ufm/73+7+c5TD4zeg/WtJ7c119z6oWbFmjeP7vY+fFXrjq+fN3rfVnqMpNvvfPeyDW84cXxJc5POAEyPGAEmTZruoHNG65DvwxreouFL9/ba5erLo2Xqos+8a3T/q+EtGy6+9t2j7xkuVMM/qbNizVuaLd9Y2dzT6n/2A+3XDv+/CdsF67rx5cybdAZgesQIMGnStMvVT7cLzra0+AwN787+xJP3NWtv/cPRfbH29uHfJRz+qnD4+fBu75vvPbcZtB+Hr2SNlq2bfqt55Im7R3+fcO/PHMQz7fP/0fhy5k06AzA9YgSYNAeb7uqZv2sXnQN+TTi8v9XOxzaNFqj9v7a/4StXe+/aPnzF6+Jrf7G58sazmgf33Da6R9b+379Xu1zd31296OfGlzJv0hmA6REjwKQ52Hziite9sjfobNl/+Vm54czRDUbbJWheT4YL1vAN78PPh690Df9X4fDzrd9c03zmc38673vn6/z9uatOOnZ8KfMmnQGYHjECTJpDzbLVM8P3Yn1n3+Vn+L8Btz346eYr2y5sbt/yHy+4Z/xxyzmh7dPbNnzf1o7dn20+tfbn91moXtA+1/Otmz+29uQTxpdwwKQzANMjRoBJc6j55FWLT+j2Ox/ffxEa/ppw+D6s4Z3cj9Sqje9vLvpM/vVgu1w90HrT+OnjpDMA0yNGgElzuFm+8tRXtEvPNb1B54dpKTpa2ud4sjdY9IHx0x500hmA6REjwKRZyCwddH6iO5i5pF2CnkvL0VGwa1l/5syLL35tfN/VvpPOAEyPGAEmzUJn+cpTh78uPLc36PzvQm9CugDPtY/58LLZzrvHT3PYSWcApkeMAJPmSGbJktOP7fZnzmqXok3tcvSilqz2MZ5qfaJ9vNeOH35Bk84ATI8YASZNZZYsOebYXn/RH/cGnZ2tZxb4itbzvf7wV4yd77eL1fqls4tPGj/cEU06AzA9YgSYNC9merOd17RL03u7g86/tza0S9R9rf9pF6gftv9+tv18uEw92i5VX2ld0V0989H241uWrnr9ceOHOOJJZwCmR4wAk+ZozLJB59h2oTquN7v4hIvXvvFVKz696DXL17zhpz5+1Uk/ubx/0ontUnV8b3bm5eNvf1GTzgBMjxgBJs1LbdIZgOkRIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAdTECAFAXIwAAVc0x/w9/rHA8dWNyBQAAAABJRU5ErkJggg==',  '1');

--|| NO 11.1||--
INSERT INTO public."genotypes"(
	"genotypes_id","name", "description", "active")
	VALUES 
    (-2, 'NA', 'Not Applicable', '1'),
    (-1, 'None', 'None', '1'),
    (1, 'Indica', 'Indica is a primary marijuana strain type known to be calming and relaxing. Indica strains are ideal for activities during the evening that require little to no physical activity or social interaction. In terms of effects, indica strains provide a high for your mind and body, creating a sedated and sleepy state of mind.', '1'),
    (2, 'Sativa', 'Sativa is a primary marijuana strain type known to be energizing and cerebral. Sativa strains are ideal for activities during the daytime that require physical activity or a high level of social interaction. In terms of effects, sativa strains provide a high for your mind, jumpstarting creativity, focus and mental energy.', '1'),
    (3, 'Hybrid', 'Hybrids are a primary marijuana strain type that live between indicas and sativas. Hybrid strains are classified by their ability to produce a unique balance of indica and sativa effects. Hybrids can be both energizing and relaxing, depending on their specific strain lineage.', '1');
    
--|| NO 11.2||--  
INSERT INTO public."strains"(
	"strains_id", "genotypes_id", "external_companies_id","name", "description", "abbreviation", "active")
	VALUES 
    (-2,-2,-2, 'NA', 'Not Applicable', 'NA', '1'),
    (-1,-1,-1, 'None', 'None', 'None', '1'),
    (1, 2, 5,'Original Amnesia', 'Original Amnesia(OA)', 'OA', '1'),
    (2, 3, 4,'Blue dream', 'Blue dream(BD)', 'BD', '1'),
    (3, 1, 4,'Master Kush', 'Master Kush(MK)', 'MK', '1'),
    (4, 3, 4,'White widow', 'White widow(WW)', 'WW', '1'),
    (5, 1, 4,'Northern lights', 'Northern lights(NL)', 'NL', '1'),
    (6, 1, 4,'Aurora indica', 'Aurora indica(AI)', 'AI', '1'),
    (7, 3, 2,'3 Kings', '3 Kings(3K)', '3K', '1'),
    (8, 2, 2,'Sour diesel', 'Sour diesel(SD)', 'SD', '1');
    
--|| NO 12.1||--
INSERT INTO public."diary"(
	"diary_id","users_id","name","description","environment_allocations_id","mediums_id","light_types_id", "light_units", "light_units_of_measure_id", "strains_id", "created_date","image_base_64", "active")
	VALUES 
    (1,1,'test diary name','test diary description',3,1,1,'200',12,1, '2020-01-01 00:00:00','', '1'),
    (2,1,'test diary name2','test diary description2',3,1,1,'100',12,2, '2020-01-01 00:00:00','', '1');

--|| NO 13.1||--
INSERT INTO public."diary_week"(
	"diary_week_id","diary_id","week_number","plant_height","light_on_hours","water_ph","water_tds", "air_humidity", "smell", "solution_temp", "medium_temp", "day_air_temp", "night_air_temp", "lamp_to_plant_distance_unit", "lamp_to_plant_distance_unit_of_measure_id", "water_per_24_hour_unit", "water_per_24_hour_unit_of_measure_id", "containers_id", "plant_grow_stages_id", "active")
	VALUES 
    (1,1,1,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (2,1,2,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (3,1,3,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (4,1,4,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (5,1,5,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (6,2,1,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (7,2,2,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (8,2,3,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (9,3,1,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (10,3,2,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (11,3,3,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,1,'1'),
    (12,3,4,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,2,'1'),
    (13,3,5,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,2,'1'),
    (14,3,6,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,2,'1'),
    (15,3,7,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,2,'1'),
    (16,3,8,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,2,'1'),
    (17,3,9,200,18,5.9,500,45.90,'no smell',20.50,20.50,24.50,16.50,50,10,10,1,1,2,'1');
--|| NO 14.1||--
INSERT INTO public."diary_week_nutrients"(
    "diary_week_id","diary_id","nutrients_and_additives_id","units","unit_of_measures_id","active")
	VALUES 
    (1,1,1,10,1,'1'),
    (2,1,2,10,1,'1'),
    (3,1,3,10,1,'1'),
    (4,1,4,10,1,'1'),
    (5,1,1,10,1,'1');
--|| NO 15.1||--
INSERT INTO public."diary_week_images"(
	"diary_week_id","diary_id","name","description","image_base_64","date","active")
	VALUES 
    (1,1,'name1','description1','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAdCAMAAACKeiw+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAMAUExURQAAAPNHSvRHSv9HSP5HSv9KR/9MR/9OR/9QR/9cR/9eR/9oR/9qR/9zR/90R/97R/99R/9+R/+GR/+IR/+KR/+PSv+VR/+QS/+dUv+eU/+hXv+iXf+mZv+mZ/+pb/+qcP+vcv+wc/+zfv+8hf+9hv++h/+9jv/Flf/ImP/Tqf/Ztf/atv/bwv/jx//kyP/lyf/myv/u1f/v1v/w1//25v/35//45//38f//9v//9///+P39/f7+/gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKIWHFMAAAEAdFJOU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wBT9wclAAAACXBIWXMAAA6/AAAOvwE4BVMkAAABp0lEQVQ4T02TjVbbMAyFS3bbNDR0jBbYGBsdlLKV37SQRJbe/7UySXZS7slJYn1SbF8ro+4gkdBuVo2koWnAQlxvFgDmTA2n4IC18heQqVB+2VBI4YhF5G6FTGstA9iSxCkca6k4ObtGdqRPsBb0WF+FU91tnODFYp9w7XQJ/HR+ccD2xh82c4abHPf2nRMLKh85FXlHvt+dAleLLb0ViFgGvEUlzNTamjhgEqM95gVICbPdRL7Bo4otXTWDkV6rhGWkBqg47wOuhwFXFCTwuxkGlH/Wy9kY+QS7YHQ3UscarozNysJ9nUxttPe5FIs0czRr1MxnGucQUNQovNwx4zjsgfMFyjXK7yXuqXTbEy5Rhwf7ftte6mNJLQoD4vumF+2CJrAaotvT6xaorDraEuhtinkduN1XemfNfnb/kmscCLhp9MBUz3p6fy3qOLn6I8M0tgvyDL5sPzHnZCeq9Ppppv2SzR1/ageRibeJlWdxXT2O/J+3iWeMexpxXN7XgbuhDiK2hEAnqR0fW+r/gx532gX0qgnj36Q7T8EDVtkUpjTsuq77D3OrG2Fc6m2iAAAAAElFTkSuQmCC','2020-01-01 00:00:00','1'),
    (2,1,'name2','description2','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAdCAMAAACKeiw+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAMAUExURQAAAPNHSvRHSv9HSP5HSv9KR/9MR/9OR/9QR/9cR/9eR/9oR/9qR/9zR/90R/97R/99R/9+R/+GR/+IR/+KR/+PSv+VR/+QS/+dUv+eU/+hXv+iXf+mZv+mZ/+pb/+qcP+vcv+wc/+zfv+8hf+9hv++h/+9jv/Flf/ImP/Tqf/Ztf/atv/bwv/jx//kyP/lyf/myv/u1f/v1v/w1//25v/35//45//38f//9v//9///+P39/f7+/gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKIWHFMAAAEAdFJOU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wBT9wclAAAACXBIWXMAAA6/AAAOvwE4BVMkAAABp0lEQVQ4T02TjVbbMAyFS3bbNDR0jBbYGBsdlLKV37SQRJbe/7UySXZS7slJYn1SbF8ro+4gkdBuVo2koWnAQlxvFgDmTA2n4IC18heQqVB+2VBI4YhF5G6FTGstA9iSxCkca6k4ObtGdqRPsBb0WF+FU91tnODFYp9w7XQJ/HR+ccD2xh82c4abHPf2nRMLKh85FXlHvt+dAleLLb0ViFgGvEUlzNTamjhgEqM95gVICbPdRL7Bo4otXTWDkV6rhGWkBqg47wOuhwFXFCTwuxkGlH/Wy9kY+QS7YHQ3UscarozNysJ9nUxttPe5FIs0czRr1MxnGucQUNQovNwx4zjsgfMFyjXK7yXuqXTbEy5Rhwf7ftte6mNJLQoD4vumF+2CJrAaotvT6xaorDraEuhtinkduN1XemfNfnb/kmscCLhp9MBUz3p6fy3qOLn6I8M0tgvyDL5sPzHnZCeq9Ppppv2SzR1/ageRibeJlWdxXT2O/J+3iWeMexpxXN7XgbuhDiK2hEAnqR0fW+r/gx532gX0qgnj36Q7T8EDVtkUpjTsuq77D3OrG2Fc6m2iAAAAAElFTkSuQmCC','2020-01-01 00:00:00','1'),
    (3,1,'name3','description3','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAdCAMAAACKeiw+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAMAUExURQAAAPNHSvRHSv9HSP5HSv9KR/9MR/9OR/9QR/9cR/9eR/9oR/9qR/9zR/90R/97R/99R/9+R/+GR/+IR/+KR/+PSv+VR/+QS/+dUv+eU/+hXv+iXf+mZv+mZ/+pb/+qcP+vcv+wc/+zfv+8hf+9hv++h/+9jv/Flf/ImP/Tqf/Ztf/atv/bwv/jx//kyP/lyf/myv/u1f/v1v/w1//25v/35//45//38f//9v//9///+P39/f7+/gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKIWHFMAAAEAdFJOU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wBT9wclAAAACXBIWXMAAA6/AAAOvwE4BVMkAAABp0lEQVQ4T02TjVbbMAyFS3bbNDR0jBbYGBsdlLKV37SQRJbe/7UySXZS7slJYn1SbF8ro+4gkdBuVo2koWnAQlxvFgDmTA2n4IC18heQqVB+2VBI4YhF5G6FTGstA9iSxCkca6k4ObtGdqRPsBb0WF+FU91tnODFYp9w7XQJ/HR+ccD2xh82c4abHPf2nRMLKh85FXlHvt+dAleLLb0ViFgGvEUlzNTamjhgEqM95gVICbPdRL7Bo4otXTWDkV6rhGWkBqg47wOuhwFXFCTwuxkGlH/Wy9kY+QS7YHQ3UscarozNysJ9nUxttPe5FIs0czRr1MxnGucQUNQovNwx4zjsgfMFyjXK7yXuqXTbEy5Rhwf7ftte6mNJLQoD4vumF+2CJrAaotvT6xaorDraEuhtinkduN1XemfNfnb/kmscCLhp9MBUz3p6fy3qOLn6I8M0tgvyDL5sPzHnZCeq9Ppppv2SzR1/ageRibeJlWdxXT2O/J+3iWeMexpxXN7XgbuhDiK2hEAnqR0fW+r/gx532gX0qgnj36Q7T8EDVtkUpjTsuq77D3OrG2Fc6m2iAAAAAElFTkSuQmCC','2020-01-01 00:00:00','1'),
    (4,2,'name4','description4','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAdCAMAAACKeiw+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAMAUExURQAAAPNHSvRHSv9HSP5HSv9KR/9MR/9OR/9QR/9cR/9eR/9oR/9qR/9zR/90R/97R/99R/9+R/+GR/+IR/+KR/+PSv+VR/+QS/+dUv+eU/+hXv+iXf+mZv+mZ/+pb/+qcP+vcv+wc/+zfv+8hf+9hv++h/+9jv/Flf/ImP/Tqf/Ztf/atv/bwv/jx//kyP/lyf/myv/u1f/v1v/w1//25v/35//45//38f//9v//9///+P39/f7+/gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKIWHFMAAAEAdFJOU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wBT9wclAAAACXBIWXMAAA6/AAAOvwE4BVMkAAABp0lEQVQ4T02TjVbbMAyFS3bbNDR0jBbYGBsdlLKV37SQRJbe/7UySXZS7slJYn1SbF8ro+4gkdBuVo2koWnAQlxvFgDmTA2n4IC18heQqVB+2VBI4YhF5G6FTGstA9iSxCkca6k4ObtGdqRPsBb0WF+FU91tnODFYp9w7XQJ/HR+ccD2xh82c4abHPf2nRMLKh85FXlHvt+dAleLLb0ViFgGvEUlzNTamjhgEqM95gVICbPdRL7Bo4otXTWDkV6rhGWkBqg47wOuhwFXFCTwuxkGlH/Wy9kY+QS7YHQ3UscarozNysJ9nUxttPe5FIs0czRr1MxnGucQUNQovNwx4zjsgfMFyjXK7yXuqXTbEy5Rhwf7ftte6mNJLQoD4vumF+2CJrAaotvT6xaorDraEuhtinkduN1XemfNfnb/kmscCLhp9MBUz3p6fy3qOLn6I8M0tgvyDL5sPzHnZCeq9Ppppv2SzR1/ageRibeJlWdxXT2O/J+3iWeMexpxXN7XgbuhDiK2hEAnqR0fW+r/gx532gX0qgnj36Q7T8EDVtkUpjTsuq77D3OrG2Fc6m2iAAAAAElFTkSuQmCC','2020-01-01 00:00:00','1');
--|| NO 16.1||--
