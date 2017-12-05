//
//  DataModel.m
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        //contents of protein picker
        self.meatOptionsArray = [[NSMutableArray alloc] init];
        [self.meatOptionsArray addObject: @"Prawns"]; //index 0
        [self.meatOptionsArray addObject: @"Salami"];
        [self.meatOptionsArray addObject: @"Pork"];
        [self.meatOptionsArray addObject: @"Beef"];
        [self.meatOptionsArray addObject: @"Chicken"];
        [self.meatOptionsArray addObject: @"Eggs"];
        [self.meatOptionsArray addObject: @"Salmon"];
        [self.meatOptionsArray addObject: @"Minced Beef"];
        [self.meatOptionsArray addObject: @"none"];  //index 8
        
        //contents of carbohydrates picker
        self.carbOptionsArray = [[NSMutableArray alloc] init];
        [self.carbOptionsArray addObject: @"Rice"];  //index 0
        [self.carbOptionsArray addObject: @"Spaguetti/Pasta"];
        [self.carbOptionsArray addObject: @"Bread"];
        [self.carbOptionsArray addObject: @"Quinoa"];
        [self.carbOptionsArray addObject: @"Noodles"];
        [self.carbOptionsArray addObject: @"Flour"];
        [self.carbOptionsArray addObject: @"Breadcrums"];
        [self.carbOptionsArray addObject: @"none"];   //index 7
        
        //contents of Vegtables and Fruit picker
        self.vegfruitOptionsArray = [[NSMutableArray alloc] init];
        [self.vegfruitOptionsArray addObject: @"Pineapple"];  //index 0
        [self.vegfruitOptionsArray addObject: @"Tomatoes"];
        [self.vegfruitOptionsArray addObject: @"Peppers"];
        [self.vegfruitOptionsArray addObject: @"Watercress"];
        [self.vegfruitOptionsArray addObject: @"Mushrooms"];
        [self.vegfruitOptionsArray addObject: @"Coriander"];
        [self.vegfruitOptionsArray addObject: @"Onions"];
        [self.vegfruitOptionsArray addObject: @"Peas"];
        [self.vegfruitOptionsArray addObject: @"Mixed Vegetables"];
        [self.vegfruitOptionsArray addObject: @"Strawberries"];
        [self.vegfruitOptionsArray addObject: @"Gooseberries"];
        [self.vegfruitOptionsArray addObject: @"Potatoes"];
        [self.vegfruitOptionsArray addObject: @"Spinach"];
        [self.vegfruitOptionsArray addObject: @"Lettuce"];
        [self.vegfruitOptionsArray addObject: @"Lemons"];
        [self.vegfruitOptionsArray addObject: @"none"];      //index 15
        
        //contents of Dairy picker
        self.dairyOptionsArray = [[NSMutableArray alloc] init];
        [self.dairyOptionsArray addObject: @"Cheese"];    //index 0
        [self.dairyOptionsArray addObject: @"Milk"];
        [self.dairyOptionsArray addObject: @"Butter"];
        [self.dairyOptionsArray addObject: @"Cream"];
        [self.dairyOptionsArray addObject: @"Condensed Milk"];
        [self.dairyOptionsArray addObject: @"Soured Cream"];
        [self.dairyOptionsArray addObject: @"none"];     //index 6
        
#pragma mark legend for main ingredients:
/*
 Protein: Prawns=1, Salami=2, Pork=3, Beef=4, Chicken=5, Eggs=6, Salmon=7, Minced Beef=8, none=9.
 Carbohydrates: Rice=1, Spaguetti/Pasta=2, Bread=3, Quinoa=4, Noodles=5, Flour=6, Breadcrums=7, none=8.
 Fruit & Veg: Pineapple=1, Tomatoes=2, Peppers=3, Watercress=4, Mushrooms=5, Coriander=6, Onions=7, Peas=8, Mixed Vegetables=9, Strawberries=10, Gooseberries=11, Potatoes=12, Spinach=13, Lettuce=14, Lemons=15, none=16.
 Dairy: Cheese=1, Milk=2, Butter=3, Cream=4, Condensed Milk= 5, Soured Cream=6, none=7.

*/
        
#pragma mark all data for meals
        self.mealsArray = [NSMutableArray array];
        Module *meal1 = [[Module alloc] init];
        meal1.title = @"Thai fried prawn & pineapple rice";
        meal1.protein = 1;
        meal1.carbohydrate = 1;
        meal1.vegfruit = 1;
        meal1.dairy = 7;
        meal1.ingredients = @"2 tsp sunflower oil\n bunch spring onions\n 1 green pepper\n 140g pineapple\n 3 tbsp Thai green curry paste\n 4 tsp light soy sauce\n 300g cooked basmati rice\n 2 large eggs\n 140g peas\n 225g bamboo shoots\n 250g prawns\n 2-3 limes.";
        meal1.instructions = @"Heat the oil in a wok or non-stick frying pan and fry the spring onion whites for 2 mins until softened Stir in the pepper for 1 min, followed by the pineapple for 1 min more, then stir in the green curry paste and soy sauce. Add the rice, stir-frying until piping hot, then push the rice to one side of the pan and scramble the eggs on the other side. Stir the peas, bamboo shoots and prawns into the rice and eggs, then heat through for 2 mins until the prawns are hot and the peas tender. Finally, stir in the spring onion greens, lime juice and coriander, if using. Spoon into bowls and serve with extra lime wedges and soy sauce";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal2 = [[Module alloc] init];
        meal2.title = @"One-pan spaghetti with salami & olives";
        meal2.protein = 2;
        meal2.carbohydrate = 2;
        meal2.vegfruit = 2;
        meal2.dairy = 1;
        meal2.ingredients = @"400g spaghetti\n 3 garlic cloves\n ½ fennel\n 75g salami\n 200g tomatoes\n 75g black olives\n 2 tsp tomato purée\n 3 tbsp olive oil\n 2 tsp red wine vinegar\n 40g preferred cheese\n handful basil";
        meal2.instructions = @"1. Boil the kettle. Put all the ingredients except the salami and basil in a wide saucepan or deep frying pan and season well. Pour over 800ml kettle-hot water and bring to a simmer, using your tongs to ease the spaghetti under the liquid as it starts to soften. \n 2. Simmer, uncovered, for 10-12 mins, tossing the spaghetti through the liquid every so often until it is cooked and the sauce is reduced and clinging to it. Add a splash more hot water if the sauce is too thick or does not cover the pasta while it cooks. Turn up the heat for the final few mins to drive off the excess liquid, leaving you with a rich sauce. Stir through the pecorino and basil, and serve with an extra drizzle of oil and pecorino on the side.";
            
        self.mealsArray = [NSMutableArray array];
        Module *meal3 = [[Module alloc] init];
        meal3.title = @"Easy meatloaf with spaghetti & tomato sauce";
        meal3.protein = 3;
        meal3.carbohydrate = 2;
        meal3.vegfruit = 2;
        meal3.dairy = 1;
        meal3.ingredients = @"2 tbsp olive oil \n 2 onions \n 500g pork mince\n 1 large egg\n 75g fresh breadcrumbs\n 15 sage leaves\n 100g feta (or other cheese)\n 3 bay leaves, 1 finely chopped\n 680g jar tomato puree (or chopped tomatoes\n 600g spaghetti";
        meal3.instructions = @"1. Heat oven to 180C/160 fan/gas 4 and grease an ovenproof dish. Heat the oil in a large frying pan over a medium heat, add the onions, sizzle for 5 mins, then remove half and put in a large bowl with the mince, egg, breadcrumbs, sage, feta and chopped bay. Season well and mix. Shape into a long sausage shape and transfer to the greased dish. Put the remaining bay leaves on top, drizzle with a little more oil and put in the oven for 40-45 mins until cooked through.\n 2.Meanwhile, keep the remaining onions on a low heat in the pan. Cook for 2 mins, then increase the heat and pour in the passata with 70ml water. Bubble for 30 mins on a low heat, stirring often, or until the meatloaf is ready to come out of the oven. Season to taste.\n 3. Cook the spaghetti following pack instructions. When everything is ready, toss the spaghetti in the tomato sauce, slice the meatloaf and let everyone help themselves.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal4 = [[Module alloc] init];
        meal4.title = @"Ultimate chorizo ciabatta";
        meal4.protein = 2;
        meal4.carbohydrate = 3;
        meal4.vegfruit = 3;
        meal4.dairy = 7;
        meal4.ingredients = @"2 small or 1 large ciabatta (or any bread)\n 150g pack cooking chorizo\n 75g pesto\n 200g roasted red peppers from a jar,\n handful rocket";
        meal4.instructions = @"1. Heat oven to 180C/160C fan/gas 4 and put the ciabatta in to warm up. Put a griddle pan over a medium heat and cook the chorizo for 5 mins each side or until charred and cooked through.\n 2. Open up the warmed ciabatta and spread the pesto on the bottom. Layer with the red peppers , then the warm chorizo. Scatter over the rocket, sandwich the ciabatta together, cut in two and serve.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal5 = [[Module alloc] init];
        meal5.title = @"Steak panzanella salad with roasted lemons";
        meal5.protein = 4;
        meal5.carbohydrate = 3;
        meal5.vegfruit = 2;
        meal5.dairy = 1;
        meal5.ingredients = @"1 large lemon,\n 2 ½ tbsp olive oil,\n 1 tbsp za'atar,\n 2 pitta breads (or other bread)\n 200g steak, thinly sliced\n 600g mixed tomatoes\n 100g feta (or other cheese)\n ½ cucumber\n 1 red onion\n 100g Kalamata olives\n small pack mint\n extra virgin olive oil for drizzling";
        meal5.instructions = @"Heat oven to 200C/180C fan/ gas 6. Put the lemon slices on a baking sheet lined with baking parchment. Drizzle over 1 /2 tbsp oil and put in the oven on the highest shelf to roast for 15-20 mins, until the lemon has released its natural sugars and the peel has softened and begun to caramelise. Keep an eye on them – you may need to turn the tray so that they cook evenly\n 2. Meanwhile, mix together the remaining oil and za’atar in a bowl, then toss in the pitta and use your hands to coat in the spiced oil. Spread out on a baking tray and roast for 15-20 mins until crisp and golden.\n 3. About 5 mins before the lemons are ready, wrap the bavette in a foil parcel and put in the oven alongside the pitta bread to warm through.\n 4. Mix all the other salad ingredients together in a large bowl. Add a drizzle of extra virgin olive oil and season with black pepper and a little sea salt (the olives and feta will add salt so you shouldn’t need much).\n 5. Add the lemons, spiced pitta and warmed bavette. Mix everything together with your hands, then divide between plates or serve sharing-style on a large platter.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal6 = [[Module alloc] init];
        meal6.title = @"Asian prawn & quinoa salad";
        meal6.protein = 1;
        meal6.carbohydrate = 4;
        meal6.vegfruit = 4;
        meal6.dairy = 7;
        meal6.ingredients = @"For the salad:\n 60g quinoa,\n 150g cooked prawns\n 1 small avocado\n ¼ cucumber\n 50g watercress\n 100g cherry tomatoes\n For the dressing:\n 1 large lime\n 1 red chilli\n 2 spring onions\n 1 tsp wheat-free tamari\n handful coriander\n 1 tsp rapeseed oil\n ½ tsp maple syrup";
        meal6.instructions = @"1. Boil the quinoa in a small pan for 15 mins until the grains are tender and look like they have burst. Drain well and tip into a bowl. Meanwhile, make the dressing: mix the lime zest and juice and the chilli in a bowl.\n 2. Stir half the dressing into the quinoa with the spring onions, tamari and half the coriander. Stir in all the salad vegetables, then spoon onto two serving plates.\n 3. Stir the oil and maple syrup into the remaining dressing and toss in the prawns. Spoon onto the quinoa salad and scatter over the coriander to serve.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal7 = [[Module alloc] init];
        meal7.title = @"Hot-and-sour chicken noodle soup";
        meal7.protein = 5;
        meal7.carbohydrate = 5;
        meal7.vegfruit = 5;
        meal7.dairy = 7;
        meal7.ingredients = @"140g dried noodles\n 1 tbsp groundnut oil\n 2 tbsp grated ginger\n 1 medium red chilli,\n 4 chicken thighs\n 1 tbsp Shaohsing, rice wine\n 700ml hot vegetable stock\n 4 chestnut mushrooms\n 1 tsp dark soy sauce\n 2 tbsp light soy sauce\n 2 tbsp rice vinegar\n 1 tbsp cornflour\n 1 handful beansprouts\n 2 spring onions";
        meal7.instructions = @"1. Bring a small pan of water to the boil and cook the noodles following pack instructions. Drain, rinse under cold running water to stop them cooking further, then drizzle over a little oil to prevent them sticking together. Divide between 2 deep bowls.\n 2. Heat a wok over high heat and add the rest of the oil. When it starts to smoke, add the ginger and chilli, then stir-fry for a few secs. Add the chicken and stir-fry for 2 mins. As the meat starts to turn brown, add the rice wine and cook for 3 mins more. Add the vegetable stock, bring to a simmer, then add the mushrooms. Season with the dark soy, light soy and rice vinegar.\n 3. Bring back to a simmer, then add the cornflour paste. Simmer and stir until thickened. Stir in the beansprouts and most of the spring onions, then ladle the soup over the noodles. Serve immediately, scattered with the remaining spring onions.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal8 = [[Module alloc] init];
        meal8.title = @"Quick prawn noodle soup";
        meal8.protein = 1;
        meal8.carbohydrate = 5;
        meal8.vegfruit = 6;
        meal8.dairy = 7;
        meal8.ingredients = @"85g noodle\n 500ml hot chicken or vegetable stock\n 1 tsp fish sauce\n juice ½ lime\n 1 star anise\n pinch sugar\n 1 handful small raw prawns\n handful mint and coriander leaves\n chopped red chilli";
        meal8.instructions = @"1. Boil the noodles until al dente, then drain. Put the stock in a pan with the fish sauce, lime juice, star anise and pinch of sugar. Bring to the boil and add the noodles and prawns. Warm through, then pour into a bowl and serve topped with the mint, coriander and chilli.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal9 = [[Module alloc] init];
        meal9.title = @"Easy cheesy frittata";
        meal9.protein = 6;
        meal9.carbohydrate = 8;
        meal9.vegfruit = 7;
        meal9.dairy = 1;
        meal9.ingredients = @"2 spring onions\n 4 tablespoons of peas\n 1 courgette\n 2 slices of ham\n 100g feta cheese (or other cheese)\n 4 eggs";
        meal9.instructions = @"1. Switch the oven on to 180C/ 160C fan/gas 4. Snip or cut up the spring onions and put them in a bowl. Add the peas to the bowl.\n 2. Grate the courgette using your rotary grater, one half at a time, then add it to the bowl.\n 3. Cut the ham into pieces with your scissors, if you do this over the bowl it will fall straight in.\n 4. Break the feta into the bowl by crumbling it with your hands.\n 5. Crack the eggs into a bowl and, if any bits of shell fall in, scoop them out with a spoon. Whisk the eggs until the yolks are mixed into the white.\n 6. Pour the eggs into the other bowl and stir. Brush a round ovenproof dish, about 16cm across, with oil. Tip everything into the dish. Put the dish in the oven for 30 minutes or until the egg is set. Serve with salad and crusty bread.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal10 = [[Module alloc] init];
        meal10.title = @"Easy jerk chicken with rice & peas";
        meal10.protein = 5;
        meal10.carbohydrate = 1;
        meal10.vegfruit = 8;
        meal10.dairy = 7;
        meal10.ingredients = @"2 tbsp sunflower oil\n 1kg chicken\n 1 bottle jerk barbecue sauce\n 1 bunch spring onions\n For the rice and peas:\n 200g basmati rice (or other)\n 2 x 410g cans kidney beans\n 400g coconut milk\n 1 bunch spring onions\n 1 thyme\n 1 garlic clove\n 1 tsp allspice";
        meal10.instructions = @"1. Heat oven to 220C/200C fan/gas 7. Heat the oil in a roasting tin, then carefully add the chicken pieces. Brown them lightly on all sides – it will take about 6-8 mins. Pour over the jerk sauce, scatter over the sliced spring onions, then toss to coat each piece of chicken.\n 2. Roast the chicken for 30 mins, turning occasionally to ensure it gets nice and sticky.\n 3. While the chicken is cooking, make the rice & peas. Rinse the rice in a sieve until the water runs clear. Bring a pan of water to the boil with the liquid only from the kidney beans, the coconut milk, spring onions, thyme, garlic, allspice and some salt, then simmer for 10 mins. Add the beans, then simmer for 5 mins more until the rice is tender. Drain and serve straight away with the chicken";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal11 = [[Module alloc] init];
        meal11.title = @"Chicken stir-fry";
        meal11.protein = 5;
        meal11.carbohydrate = 1;
        meal11.vegfruit = 3;
        meal11.dairy = 7;
        meal11.ingredients = @"4 chicken breast\n 1 egg white\n 1 tbsp cornflour, plus 1 tsp extra\n 350g Thai rice (or other)\n thumb sized knob of root ginger\n 1 red pepper\n 1 shallot\n 1 garlic clove\n 1 red chilli (optional)\n 1 tbsp vegetable oil\n 1 tbsp fish sauce\n juice 1 lime\n handful basil leaves";
        meal11.instructions = @"1. Velveting the chicken: Slice the chicken into bite-size pieces. Beat together the egg white and 1 tbsp cornflour in a bowl. Tip in the chicken and coat with the mix (see Know-how, top right). Marinate for 15-30 mins (don’t place in the fridge or the mix will harden). Now rinse the rice in a sieve under the cold tap until the water runs clear.\n 2. Making perfect rice: Drain the rice, tip into a pan with a lid and pour over 600ml water and a pinch of salt. Bring the water to the boil, then cook the rice uncovered for 10 mins or so until the water has almost boiled away and small craters appear. Cover with a lid, turn the heat down as low as it will go and cook for 10 mins more.\n 3. Getting the ingredients ready: Strip the ginger skin with a teaspoon and finely chop until you have 1 tbsp. Halve the pepper and trim off the stalk, inner pith and seeds. Cut into bite-size pieces. Peel the shallot and garlic clove, then thinly slice. Trim the ends off the chilli, if using, removing the seeds if you like it milder, and cut into thin slices. Remove the chicken from the egg marinade and pat dry with kitchen paper.\n 4. Foolproof stir-frying: Heat a wok and pour in 1 tbsp oil. Cook the chicken for 7-10 mins, tossing until just cooked. Set aside. Pour in some more oil if you need to. Add the pepper and cook for 1 min, then cook the ginger, shallot and garlic for 1-2 mins more. Combine the fish sauce, lime juice, 50ml water and 1 tsp cornflour. Tip into the wok, then add the chicken. Cook for 1 min, stir through the basil, then serve with the rice.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal12 = [[Module alloc] init];
        meal12.title = @"Easy veggie biryani";
        meal12.protein = 9;
        meal12.carbohydrate = 1;
        meal12.vegfruit = 9;
        meal12.dairy = 7;
        meal12.ingredients = @"250g basmati rice (or other)\n 400g special mixed frozen vegetables\n handful of raisins\n 1 vegetable stock cube\n 2 tbsp korma curry paste\n handful of roasted salted cashew\n nuts";
        meal12.instructions = @"1. Boil the kettle. Get out a large microwaveable bowl and pile in the rice, veg and raisins.\n 2. Pour 600ml/1 pint boiling water over the rice mixture and crumble in the stock cube, then stir in the curry paste. Cover the bowl with cling film, leaving a small gap at the side to let out the steam. Cook on full power (850 watts) for 12 minutes – if your microwave is less powerful, add 2 minutes.\n 3. Remove from the microwave and stand, still covered, for 5 minutes to complete the cooking – if you don’t let it stand the rice will be too nutty. Fluff up the rice, scatter with cashews and serve.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal13 = [[Module alloc] init];
        meal13.title = @"Easy strawberry ice cream";
        meal13.protein = 9;
        meal13.carbohydrate = 8;
        meal13.vegfruit = 10;
        meal13.dairy = 5;
        meal13.ingredients = @"400g strawberries\n 250g mascarpone\n ½ x 397g can condensed milk\n cones and sprinkles";
        meal13.instructions = @"1. Pull the green hulls out of the strawberries. If they are still quite hard, cut them in half or quarters with a table knife. Tip them into a flat-bottomed dish.\n 2. Use a potato masher to squash the strawberries as much as you can. Tip into a bowl.\n 3. Add the mascarpone and mash this in – don’t worry if it is a bit lumpy. Add the condensed milk and mix everything together. Don’t worry if the mix is streaky.\n 4. Spoon the mixture into a metal or plastic box and put it in the freezer. Wait until the next day or at least 6 hours before scooping into bowls or cones. Decorate how you like.";
        self.mealsArray = [NSMutableArray array];
        Module *meal14 = [[Module alloc] init];
        meal14.title = @"Easy gooseberry cobbler";
        meal14.protein = 9;
        meal14.carbohydrate = 6;
        meal14.vegfruit = 11;
        meal14.dairy = 3;
        meal14.ingredients = @"750g gooseberries\n 100g caster sugar\n 1 tsp grated root ginger\n 3 tbsp elderflower cordial\n 140g plain flour\n 2 tsp baking powder\n 25g butter\n 25g caster sugar\n 150ml buttermilk\n 1 tbsp demerara sugar";
        meal14.instructions = @"1. Heat oven to 190C/170C fan/gas 5. Place the gooseberries, caster sugar, ginger and elderflower in a saucepan with 4 tbsp water and cook, covered, for 5 mins until the berries begin to pop. Tip into a baking dish.\n 2. Make the topping. Sift the flour, baking powder and a pinch of salt into a mixing bowl. Rub in the butter until the mixture looks like breadcrumbs, then stir in the caster sugar. Mix in the buttermilk to give a soft, sticky dough. Dollop spoonfuls on top of the gooseberries, then sprinkle with the demerara. Bake for 25 mins or until golden brown and crusty. Stand for 5 mins, then serve with some low-fat ice cream, fromage frais or custard.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal15 = [[Module alloc] init];
        meal15.title = @"Easy tomato pizzas";
        meal15.protein = 9;
        meal15.carbohydrate = 6;
        meal15.vegfruit = 2;
        meal15.dairy = 1;
        meal15.ingredients = @"For the dough:\n 450g white flour\n 7g sachet fast-action yeast\n 2 tbsp extra-virgin olive oil\n 350ml warm water\nFor the topping:\n 5 tbsp roast tomato sauce\n 8 tomatoes\n Your choice of cheese\n Your selection of toppings";
        meal15.instructions = @"2. For the dough, put the flour, yeast and 2 tsp salt into a large bowl and mix. Make a well. Mix the oil and water in a jug, then tip into the bowl. Use a wooden spoon to work the liquid into the flour – it will seem pretty wet. Set the bowl aside for 15 mins. Leaving the dough like this will save you from lengthy kneading later.\n 3. Turn the dough onto a well-floured surface, flour your hands, then knead it very gently for about 2 mins until it is fairly even, soft and bouncy. Return the dough to the bowl, cover with oiled cling film, then let it rise in a warm place (or in the fridge overnight) until doubled in size.\n 4. When ready to cook, heat oven to 240C/220C fan/gas 9 or as hot as it will go, then put a baking sheet in on a high shelf. Dust another sheet with flour. Split the dough into 8, then roll 3 balls thinly into rough circles. Lift onto the floured sheet. Smear over a thin layer of the sauce, scatter over a few slices of tomato, season, then add sliced goat’s or grated Parmesan cheese if you want to. Slide the sheet on top of the heated sheet. Bake for 12 mins or until golden and crisp and the tomatoes are starting to caramelise around the edges. Top with any fresh toppings, then drizzle with more olive oil to serve.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal16 = [[Module alloc] init];
        meal16.title = @"Salmon & dill fish cakes";
        meal16.protein = 7;
        meal16.carbohydrate = 7;
        meal16.vegfruit = 12;
        meal16.dairy = 2;
        meal16.ingredients = @"800g salmon fillet\n 2 bay leaves\n small bunch dill\n 500ml milk\n 600g potato\n zest 1 lemon\n 4 tbsp mayonnaise\n 1 tsp Dijon mustard\n 4 tbsp caper\n 1 egg\n 100g breadcrumb\n 4 tbsp vegetable or sunflower oil";
        meal16.instructions = @"1. Poaching the salmon: Put the salmon in a frying pan with the bay leaves and dill stalks. Pour over enough milk to cover the fish (you may not need all the milk), bring to the boil, then lower heat to a gentle simmer and leave to poach for 4 mins. Turn off the heat, then leave the fish to continue cooking in the poaching liquid for 5 mins. Lift the salmon out with a fish slice onto a plate. Flake into large pieces with a fork, then leave to cool.\n 2. Making and drying out the mash: Meanwhile, cook the potatoes in boiling salted water for about 10 mins, or until tender. Drain well, then leave to cool in a colander for 2 mins. Tip back into the pan and return to the hob on a low setting. Mash the potatoes, watching that the mash doesn’t catch at the bottom of the pan, for 2-3 mins – it should be dry and fluffy. Stir in lemon zest, mayonnaise, mustard, capers and some seasoning.\n 3. Mixing and shaping fish cakes Pat away any liquid from the fish, then carefully lift the pieces into the pan with the mash. With your hands, gently mix together until roughly combined; it should take just a few movements or the fish will break up. Dust hands and work surface with flour. Shape a handful of the mix into a patty-shaped cake, about 2.5cm thick. Repeat to make 8 cakes.\n 4. Breadcrumbing and frying Dip the cakes into the egg, then press into the breadcrumbs all over. Heat half the oil in a frying pan until very hot. Fry 4 fish cakes for 5 mins each side until golden. Remove; keep warm. Repeat with the rest, or freeze. Serve with lemon wedges and watercress.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal17 = [[Module alloc] init];
        meal17.title = @"Easy cheesy bake";
        meal17.protein = 6;
        meal17.carbohydrate = 3;
        meal17.vegfruit = 13;
        meal17.dairy = 2;
        meal17.ingredients = @"225ml baby leaf spinach\n 6 large eggs\n 425ml milk\n 1 tbsp English mustard powder\n 200g bread\n 200g mature cheddar\n 4 clusters of cherry tomatoes";
        meal17.instructions = @"1. Preheat the oven to 190C/gas 5/fan 170C and butter a shallow 2-litre dish. Tip the spinach into a colander in the sink and pour a kettleful of boiling water over it. Leave it to wilt while you make the cheesy base. (Or microwave the spinach according to the packet instructions.)\n 2. Break the eggs into the bowl of a food processor, pour in the milk, add the mustard and 1 tsp salt. Tear in the bread, crusts and all, then whizz together until smooth. Tip the mixture into a large bowl and grate in three-quarters of the cheese.\n 3. Squeeze the spinach, to get rid of all the water, then stir it into the cheese mixture and tip into the dish. Grate over the remaining cheese, top with the tomato clusters and bake for 30-35 minutes until risen and golden. Cool and allow to settle a little before serving.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal18 = [[Module alloc] init];
        meal18.title = @"Easy chocolate cupcakes";
        meal18.protein = 6;
        meal18.carbohydrate = 6;
        meal18.vegfruit = 16;
        meal18.dairy = 6;
        meal18.ingredients = @"300g dark chocolate\n 200g self-raising flour\n 200g light muscovado sugar, plus 3 tbsp extra\n 6 tbsp cocoa\n 150ml sunflower oil\n 284ml pot soured cream\n 2 eggs\n 1 tsp vanilla extract";
        meal18.instructions = @"1. Heat oven to 180C/fan 160C/gas 4 and line a 10-hole muffin tin with paper cases. Whizz the chocolate into small pieces in a food processor. In the largest mixing bowl you have, tip in the flour, sugar, cocoa, oil, 100ml soured cream, eggs, vanilla and 100ml water. Whisk everything together with electric beaters until smooth, then quickly stir in 100g of the whizzed-up chocolate bits. Divide between the 10 cases, then bake for 20 mins until a skewer inserted comes out clean (make sure you don’t poke it into a chocolate chip bit). Cool on a wire rack.\n 2. To make the icing, put the remaining chocolate bits, soured cream and 3 tbsp sugar in a small saucepan. Heat gently, stirring, until the chocolate is melted and you have a smooth icing. Chill in the fridge until firm enough to swirl on top of the muffins, then tuck in.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal19 = [[Module alloc] init];
        meal19.title = @"Easy spiced salmon kedgeree";
        meal19.protein = 7;
        meal19.carbohydrate = 1;
        meal19.vegfruit = 7;
        meal19.dairy = 3;
        meal19.ingredients = @"300g basmati rice (or other)\n 100g unsalted butter\n 2 tbsp olive oil\n 1 tbsp hot curry paste (Madras)\n 1 small red onion\n 225g smoked salmon\n 4 hard-boiled eggs\n 4 spring onions\n juice of 1 lime\n 2 tbsp each chopped fresh coriander and flatleaf parsley";
        meal19.instructions = @"1. Throw the rice into a large heavy-based saucepan, pour over 700ml/11⁄4 pints water and sprinkle in a good shake of salt. Cover and bring to the boil, then remove the lid and allow all the water to be absorbed – this should take about 15 minutes. Turn off the heat, cover again and allow to steam dry.Melt half the butter with the oil in a large frying pan. Stir in the curry paste and cook until you start to smell the wonderful aromas.Now add the onion and cook until softened and beginning to brown.\n 2. Next throw in your rice and quickly stir to make sure all the buttery juices are absorbed and the rice is heated through. Now mix in the salmon, eggs, spring onions and lime juice. Stir gently, chuck in the herbs along with cubes of the remaining butter and serve in warm bowls.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal20 = [[Module alloc] init];
        meal20.title = @"Really easy beefburgers";
        meal20.protein = 8;
        meal20.carbohydrate = 3;
        meal20.vegfruit = 14;
        meal20.dairy = 1;
        meal20.ingredients = @"500g lean minced beef\n 1 tsp mild chilli powder\n 4 slices mild cheddar\n 4 burger buns\n choice of lettuce, cucumber, gherkin, tomato and red onion\n ketchup or mayonnaise, or both";
        meal20.instructions = @"1. Flavour the meat: Put the meat in a mixing bowl, then sprinkle over the chilli powder and a little salt and pepper. Mix well with your hands or use a fork. The mild chilli powder gives the meat added flavour without making it too spicy.\n 2. Shape into burgers: Divide the mixture into 4 equal pieces, then shape with your hands into round burgers about the width of the buns, or pack the mixture into large presentation rings (if you have them) placed on a chopping board. You need to press down on the meat to compact it, then carefully lift off the rings – a bit like making sandcastles.\n 3. Now get cooking: Fry the burgers on a hot griddle or grill them outside on the barbecue for 5 mins on each side, turning them carefully with a metal spatula. Take care as hot fat from the meat may spit a little.\n 4. Top with cheese and toast the buns: If you want to make cheeseburgers, put a slice of cheese on top of the burgers when you turn them over and let it melt while the other side cooks. When they are ready, cut the burger baps in half and warm them in the toaster or on the barbecue - take care that you don’t burn them.\n 5. Prepare the toppings: Meanwhile, prepare the toppings of your choice. Separate the lettuce into leaves. Then, using a sharp knife, thinly slice the tomato, cucumber and gherkin on a separate board to the one you prepared the burgers on. Peel and finely chop the red onion.\n 6. Assemble and enjoy: Spread a little mayonnaise or ketchup - or both if you like - onto the toasted buns, then top with your burgers and salads of your choice, followed by the remaining half bun.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal21 = [[Module alloc] init];
        meal21.title = @"One-pot chicken chasseur";
        meal21.protein = 5;
        meal21.carbohydrate = 8;
        meal21.vegfruit = 5;
        meal21.dairy = 3;
        meal21.ingredients = @"1 tsp olive oil\n 25g butter\n 4 chicken legs\n 1 onion\n 2 garlic cloves\n 200g mushrooms\n 225ml red wine\n 2 tbsp tomato purée\n 2 thyme\n 500ml chicken stock";
        meal21.instructions = @"1. Heat the oil and half the butter in a large lidded casserole. Season the chicken, then fry for about 5 mins on each side until golden brown. Remove and set aside.\n 2. Melt the rest of the butter in the pan. Add the onion, then fry for about 5 mins until soft. Add garlic, cook for about 1 min, add the mushrooms, cook for 2 mins, then add the wine. Stir in the tomato purée, let the liquid bubble and reduce for about 5 mins, then stir in the thyme and pour over the stock. Slip the chicken back into the pan, then cover and simmer on a low heat for about 1 hr until the chicken is very tender.\n 3. Remove the chicken from the pan and keep warm. Rapidly boil down the sauce for 10 mins or so until it is syrupy and the flavour has concentrated. Put the chicken legs back into the sauce and serve.";

        self.mealsArray = [NSMutableArray array];
        Module *meal22 = [[Module alloc] init];
        meal22.title = @"Hob-to-table moussaka";
        meal22.protein = 8;
        meal22.carbohydrate = 8;
        meal22.vegfruit = 2;
        meal22.dairy = 1;
        meal22.ingredients = @"2 tbsp olive oil\n 1 large onion\n 2 garlic cloves\n 500g minced beef\n 400g can chopped plum tomatoes\n 2 tbsp tomato purée\n 2 tsp ground cinnamon\n 200g jar chargrilled aubergines\n 200g pack feta cheese (or similar)\n 3 tbsp fresh mint";
        meal22.instructions = @"1. Brown the mince: Heat the oil in a large, shallow pan. Toss in the onion and garlic and fry until soft. Add the mince and stir fry for 3-4 minutes until browned.\n 2. Season and simmer: Tip the tomatoes into the pan and stir in the tomato purée and cinnamon, then season generously with salt and pepper. Leave the mince to simmer for 20 minutes, adding the aubergines half way through.\n 3. To serve: Sprinkle the crumbled feta and chopped mint over the mince. Bring the moussaka to the table as the feta melts and serve it with a crunchy green salad and toasted pitta.";

        self.mealsArray = [NSMutableArray array];
        Module *meal23 = [[Module alloc] init];
        meal23.title = @"Lemon drizzle cake";
        meal23.protein = 6;
        meal23.carbohydrate = 6;
        meal23.vegfruit = 15;
        meal23.dairy = 3;
        meal23.ingredients = @"225g unsalted butter\n 225g caster sugar\n 4 eggs\n 1 lemon\n 225g self-raising flour\n For the drizzle topping:\n juice 1½ lemons\n 85g caster sugar";
        meal23.instructions = @"1. Heat oven to 180C/fan 160C/gas 4. Beat together 225g softened unsalted butter and 225g caster sugar until pale and creamy, then add 4 eggs, one at a time, slowly mixing through. Sift in 225g flour, then add the finely grated zest of 1 lemon and mix until well combined. Line a loaf tin (8 x 21cm) with greaseproof paper, then spoon in the mixture and level the top with a spoon.\n 2. Bake for 45-50 mins until a thin skewerinserted into the centre of the cake comes out clean. While the cake is cooling in its tin, mix together the juice of 1 1/2 lemons and 85g caster sugar to make the drizzle. Prick the warm cake all over with a skewer or fork, then pour over the drizzle – the juice will sink in and the sugar will form a lovely, crisp topping. Leave in the tin until completely cool, then remove and serve. Will keep in an airtight container for 3-4 days, or freeze for up to 1 month.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal24 = [[Module alloc] init];
        meal24.title = @"Summer traybake chicken";
        meal24.protein = 5;
        meal24.carbohydrate = 8;
        meal24.vegfruit = 2;
        meal24.dairy = 7;
        meal24.ingredients = @"4 chicken breasts\n 1 tbsp olive oil\n 250g cherry tomatoes\n 4 tbsp pesto";
        meal24.instructions = @"1. Put the chicken breasts in a large, shallow roasting tray and drizzle with olive oil. Grill for 10 mins, then add cherry tomatoes and grill for another 5 mins until chicken is cooked. Drizzle pesto over the top and serve.";
        
        self.mealsArray = [NSMutableArray array];
        Module *meal25 = [[Module alloc] init];
        meal25.title = @"Mary's paprika pork in a pot";
        meal25.protein = 3;
        meal25.carbohydrate = 8;
        meal25.vegfruit = 7;
        meal25.dairy = 4;
        meal25.ingredients = @"3 onions\n 600g pork fillet\n 2 tbsp paprika\n 300ml chicken or vegetable stock\n 100ml crème fraîche (or single cream)";
        meal25.instructions = @"1. Heat 2 tbsp oil in a pan add the onions and fry for 10-15 minutes, stirring occasionally until softened and lightly coloured.\n 2. Cut the pork into sizeable chunks, then add to the pan and stir over a fairly high heat to seal and brown them all over. Stir in the paprika, cook briefly, then add the stock and bring to the boil.\n 3. Cover and cook for 30-35 minutes, until the pork is tender. Stir in the crème fraîche and simmer for a further 2 minutes. (You can prepare the dish to this point up to 2 days ahead or freeze for up to 3 months.) If you have a few chives or a bit of parsley handy, snip this over the pork before serving with rice and a green vegetable – broccoli or stir-fried cabbage make the perfect accompaniment to this simple but delicious dish.";


#pragma mark index assignation of mealsArray objects

        [self.mealsArray addObject:meal1]; // index 0
        [self.mealsArray addObject:meal2];
        [self.mealsArray addObject:meal3];
        [self.mealsArray addObject:meal4];
        [self.mealsArray addObject:meal5];
        [self.mealsArray addObject:meal6];
        [self.mealsArray addObject:meal7];
        [self.mealsArray addObject:meal8];
        [self.mealsArray addObject:meal9];  // index 10
        [self.mealsArray addObject:meal10];
        [self.mealsArray addObject:meal11];
        [self.mealsArray addObject:meal12];
        [self.mealsArray addObject:meal13];
        [self.mealsArray addObject:meal14];
        [self.mealsArray addObject:meal15];
        [self.mealsArray addObject:meal16];
        [self.mealsArray addObject:meal17];
        [self.mealsArray addObject:meal18];
        [self.mealsArray addObject:meal19]; // index 20
        [self.mealsArray addObject:meal20];
        [self.mealsArray addObject:meal21];
        [self.mealsArray addObject:meal22];
        [self.mealsArray addObject:meal23];
        [self.mealsArray addObject:meal24];
        [self.mealsArray addObject:meal25]; // index 24
                               
        }
    return self;
}
@end
