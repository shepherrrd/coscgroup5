-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 12:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_dir`
--

CREATE TABLE `admin_dir` (
  `a_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_dir`
--

INSERT INTO `admin_dir` (`a_id`, `username`, `password`) VALUES
(1, 'admin', 'Admin'),
(3, 'Ayomide', 'Ayo');

-- --------------------------------------------------------

--
-- Table structure for table `commentbar`
--

CREATE TABLE `commentbar` (
  `id` bigint(255) NOT NULL,
  `user_id` int(222) NOT NULL,
  `text` text NOT NULL,
  `date_time` varchar(222) NOT NULL,
  `recipy_id` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentbar`
--

INSERT INTO `commentbar` (`id`, `user_id`, `text`, `date_time`, `recipy_id`) VALUES
(39, 3, ' great', ' 07:35PM 7-Nov-2017 ', 58),
(42, 12, ' ff', ' 08:10PM 7-Nov-2017 ', 58),
(43, 12, ' wao nic ', ' 09:59PM 7-Nov-2017 ', 56);

-- --------------------------------------------------------

--
-- Table structure for table `full_recipy`
--

CREATE TABLE `full_recipy` (
  `id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `title_text` text NOT NULL,
  `image` varchar(222) NOT NULL,
  `ing_text` text NOT NULL,
  `disc` text NOT NULL,
  `rid` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `full_recipy`
--

INSERT INTO `full_recipy` (`id`, `title`, `title_text`, `image`, `ing_text`, `disc`, `rid`) VALUES
(10, 'lemon dizzy cake', 'its delicious, perfect as it is, and never fails to impress all :-)... personal preference is granulated sugar in the topping, and a of spoonful of lemon juice in the in the batter too to make it more lemony... ', '59d9ded79cbf9.jpg', '<ul><li>225g unsalted butter, softened</li><li>225g caster sugar</li><li>4&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/glossary/egg\">eggs</a><h2><a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/glossary/egg\"></a></h2></li><li>finely grated zest 1&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/glossary/lemon\">lemon</a><h2><a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/glossary/lemon\"></a></h2></li><li>225g self-raising flour</li>For the drizzle topping<ul><li>juice 1½&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/glossary/lemon\">lemons</a><h2><a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/glossary/lemon\"></a></h2></li><li>85g caster sugar</li></ul></ul>', '<ul>\n<li>Heat oven to 180C/fan 160C/gas 4.&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/content/top-five-whisks\">Beat together</a>&nbsp;225g softened unsalted butter and 225g caster sugar until pale and creamy, then add 4 eggs, one at a time, slowly mixing through. Sift in 225g flour, then add the finely grated zest of 1 lemon and&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/content/top-five-mixing-bowls\">mix</a>&nbsp;until well combined. Line a loaf tin (8 x 21cm) with greaseproof paper, then spoon in the mixture and level the top with a spoon.</li>\n\n<li>Bake for 45-50 mins until a thin skewer inserted into the centre of the cake comes out clean. While the cake is cooling in its tin, mix together the juice of 1 1/2 lemons and 85g caster sugar to make the drizzle. Prick the warm cake all over with a skewer or fork, then pour over the drizzle – the juice will sink in and the sugar will form a lovely, crisp topping. Leave in the tin until completely cool, then remove and serve. Will keep in an airtight container for 3-4 days, or freeze for up to 1 month.\n\n</li>\n\n</ul>\n\n', '52'),
(11, 'crunchy bran french toast', 'a definite winner at the breakfast table. One of the best breakfast sandwiches that can be made with simple and healthy ingredients. A bit of a tangy taste due to the orange juice and orange zest but the crunchy cereal helped it come all together. This will be a staple at the breakfast in the future.', '59d9e3051ecf3.jpg', '8 slices whole-grain bread\r\n4 tablespoons light cream cheese\r\n4 teaspoons low-sugar orange marmalade\r\n2 large eggs plus 2 egg whites\r\nZest and juice of 1 orange\r\n1 teaspoon vanilla extract\r\n1 1/2 cups bran flakes cereal\r\n1 to 2 tablespoons vegetable oil\r\n1 to 2 tablespoons unsalted butter\r\n2 tablespoons confectioners\' sugar (optional)', 'Spread 4 bread slices with 1 tablespoon cream cheese each; spread the other 4 slices with 1 teaspoon marmalade each. Combine to make 4 sandwiches.Whisk the whole eggs, egg whites, orange zest and juice, and vanilla in a shallow bowl. Place the bran flakes in a resealable plastic bag and crush with a rolling pin or your hands. Pour the crumbs onto a plate. Dip both sides of each sandwich in the egg mixture, then in the crumbs, gently pressing the crumbs onto the bread.Heat 1 tablespoon each oil and butter in a skillet or griddle over medium heat. Add the sandwiches in batches and cook until the outsides are golden and the insides are melted, 3 to 4 minutes per side. (Add more oil and butter, if needed.)Slice the French toast sandwiches into triangles. Let cool before serving to little ones, as the cream cheese can get quite hot. Sprinkle with confectioners\' sugar, if desired, and the kids won\'t even ask for syrup!', '55'),
(12, 'Easy Garlic-Herb Salad Croutons', '<ul><li>Learn how to make your own croutons to perk up that lunch salad! Perfectly crisp and crunchy and filled with garlicky-herb flavors.</li></ul> ', '59d9e7d3342b7.jpg', '<ul><li>4 cups 1-in dry bread cubes</li><li>4 garlic cloves, minced</li><li>1 teaspoon Italian seasoning</li><li>1 teaspoon salt</li><li>1/2 teaspoon pepper</li><li>3 tablespoons olive oil</li><li>Salad for serving</li></ul>', '<ol><li>Preheat oven to 300F. Lightly grease a baking sheet. Set aside.</li><li>In a medium bowl, toss bread cubes with seasonings, Drizzle with olive oil and toss to coat. Spread in a single layer on baking sheet. Bake croutons at 300F 40 minutes or until a deep golden brown, stirring every 10 minutes.</li><li>Cool croutons slightly then serve with salad.</li></ol>', '56'),
(13, ' LEMON FIRE BRIGADE french onion soup', '<ul><li>Combine the onions, olive oil, butter, and salt in a 4-quart sauté pan or Dutch oven. Cook, stirring occasionally.</li></ul> ', '59d9e9bcb6285.jpg', '<ul><li>7 large yellow onions, cut into 1/4 inch thick slices</li><li>1 tablespoon extra-virgin olive oil</li><li>1 tablespoon unsalted butter</li><li>1 1/2 teaspoons kosher salt</li><li>2 1/2 cups dry white wine</li><li>2 tablespoons mushroom bouillon (I used better than bouillon organic mushroom base)</li><li>2 quarts water</li><li>4-6 slices day-old sourdough bread or whole-wheat bread, each sliced 1/2 to 1-inch thick, toasted</li><li>7 ounces Gruyère cheese, grated or sliced thin</li><li>Freshly ground black pepper</li></ul>', '<ul><li>Combine the onions, olive oil, butter, and salt in a 4-quart sauté pan or Dutch oven. Cook, stirring occasionally, over medium heat until the onions are soft and translucent, about 10 minutes. Adjust the heat to medium-high, spread the onions over the bottom of the pot, and cook without stirring until the bottom of the pot begins to turn brown, about 5 minutes. Stir the onions with a non-abrasive spoon or spatula to scrape up the browned bits. Add 1/2 cup of the wine and deglaze the pot, stirring to pick up any remaining browned bits. Continue cooking until the browned fond forms again. Scrape and deglaze the pot with another 1/2 cup wine and repeat the process 3 more times until the onions have slowly turned a deep caramel hue.Add the bouillon to the onions and stir until evenly coated. Pour in the water, bring the pot to a simmer over medium-low heat, and cook until the soup is seasoned well from the caramelized onions, about 20 minutes. Taste to adjust for seasonings.Preheat the oven to 400º. Arrange ovenproof bowls over a rimmed baking sheet and ladle the soup into the bowls filling them almost to the rims. Place a slice of toasted bread onto each serving and top with the Gruyère. Bake until the cheese is bubbling, about 15 to 20 minutes, season with ground black pepper and serve.</li></ul>', '58'),
(14, 'Bourbon Glazed Meatloaf', 'To make fresh breadcrumbs just tear up a slice or two of bread and whiz in a food processor.', '59d9eb11888ba.jpg', '1 lb ground beef\r\n1 lb ground pork\r\n1 egg, beaten\r\n1/2 cup fresh breadcrumbs (you can also use dried)\r\n1/2 yellow onion, peeled and minced\r\n1 tsp salt\r\nlots of fresh cracked pepper\r\nBourbon glaze\r\n1 cup fruit jam or preserves, I like to use apricot or cherry\r\n1/4 cup dark brown sugar (use regular brown sugar if you don\'t have dark)\r\n1 Tbsp hot chili sauce or Sriracha (use more if you like things hotter)\r\n1/2 cup bourbon (or any kind of whiskey or cognac)\r\n1/2 cup of your favorite barbecue sauce\r\n1/4 cup water', 'Set oven to 350F\r\nTo make the sauce, put all the ingredients in a sauce pan and stir to combine. Bring to a boil lower the heat and simmer/boil gently, uncovered, for about 10 minutes until thickened. If you used a chunky jam you may want to use an immersion blender to puree the glaze.\r\nPut the meats in a large mixing bowl, breaking them apart into small pieces as you add them.\r\nAdd the egg, breadcrumbs, onion and salt and pepper to the bowl. Mix everything well with your fingertips. You want to thoroughly incorporate all the elements without over-doing it.\r\nForm the meat into a loaf, not too tall and not too wide. You want it to cook evenly, so try to get it even from end to end.\r\nYou can set it directly in a pan or on a baking sheet, or set it on a rack if you have one. Whatever you do, be sure to line the pan with foil since the glaze will drip and make a mess.\r\nSpread a layer of glaze all over the meatloaf and bake it for about 60 minutes, or until a thermometer inserted in the center reads 160F. I baste another layer of sauce on the meat halfway through the cooking.\r\nRemove the meat and let it rest for a few minutes before slicing. Slather on a final coat of glaze just before serving, (heat it up on the stove so it is hot) and serve extra sauce on the side.', '59'),
(70, 'MOI MOI', 'This is a very tasty experimental dish. It can be eaten as breakfast, lunch or dinner', 'moimoi.jpg', '500g Beans/Black Eyed Peas. \r\n 4 Boiled Eggs (optional) \r\n 2 ½ cooking spoons of Palm oil /Vegetable oil \r\n Cooked Fish/Sardines \r\n ½ Clove Garlic/Ginger \r\n 60g Shrimps (optional) \r\n Leaves / Sandwich bags / Aluminium cups. \r\n 4 Fresh Tomatoes \r\n 7 Small Chilli Pepper \r\n Maggi/Salt L9', 'STEP 1 Soak the Beans/Black eyed peas for not longer than 30 – 45 minutes, wash and peel off the brown back of the \r\nbeans by rubbing the beans with your palms until it becomes white then wash thoroughly. Be sure to remove all \r\nthe brown peels. \r\nSTEP 2 Wash the beans till all is clean white, add onions, red chilli pepper, tomatoes, chopped small garlic and a bit of \r\nginger (very little), blend all together. \r\nSTEP 3 Boil the eggs, shrimps and fish \r\nSTEP 4 Add 2 ½ tablespoon of palm oil or vegetable oil and seasoning like Maggi/salt then stir, taste if seasoning is \r\n okay. \r\nSTEP 5 Slice the egg and shred the fish make sure to remove the bones. \r\nSTEP 6 Rinse the leave/sandwich bag/aluminium cups, fold into a cone brake the bottom backward to avoid leakage, \r\npour the grounded beans, add few shrimps, fresh sliced eggs and wrap the leave. \r\nSTEP 7 Put water in a cooking pan and add all the wraps inside cover to cook for 30mins. \r\nSTEP 8 Open one wrap to see if cooked and solid. ', '70'),
(71, 'Boiled yam and egg', 'This is a very tasty experimental dish. It can be eaten as breakfast, lunch or dinner', 'yamegg.jpg', ' 1 tuber Yam \r\n6 pieces Garden egg (igba) \r\n6 or more Chicken eggs \r\n2 or 3 Fresh tomatoes \r\n1 large Onion \r\n3 small red chilli peppers \r\n1 ½ cooking spoon Vegetable oil \r\n20g Shrimps \r\n1 piece of Smoked Fish \r\n1 can of Sardine or Corn beef (optional) \r\nOptional seasoning (thyme, Maggi, curry) ', 'STEP 1 Slice yam into round pieces, remove back with a knife, and then place in a pot of water. Add a bit of sugar and \r\nsalt, put garden egg in a black thick paper bag then boil either separately or with the yam. \r\nSTEP 2 If garden egg is boiled or soft, pound or marsh with a small mortar. \r\nSTEP 3 Add 1 ½ cooking spoons of vegetable oil into a deep frying pan, slice in few onions, some tomatoes and the red \r\nchilli peppers then cook for 1 min. \r\nSTEP 4 Add the sardine/corn beef, smoked fish, shrimps and the garden eggs. Meanwhile, whisk some chicken eggs in \r\na bowl with a little bit of thyme, curry and a cube of Maggi. \r\nSTEP 5 Continue cooking by adding very few slices of scent leaves, the egg mix and some seasoning then fry and stir all \r\n together for 3-4 minutes. \r\nSTEP 6 Cook yam to tender, test with a fork', '71'),
(72, 'Jollof Rice', 'Jollof rice is a popular party favourite in Nigeria and most West African countries. It has a basic simple method and the \r\ningredients are easy to find. It is a very flexible dish that you can experiment with by adding your own signature ingredients', 'jollof.jpg', '500g Long grain rice \r\n3 cooking spoons Margarine /Vegetable oil \r\n2 Large Onions \r\n6 or more Red chilli peppers \r\n3 large Fresh tomatoes \r\n3 tablespoons Tomato purée \r\n1 clove Garlic/ginger \r\nBay leaves \r\nThyme \r\n3 Maggi cubes \r\n500g Chicken \r\n100g Boiled seasoned snails \r\n40g Cooked green peas \r\n2 Smoked stock fish (optional) \r\n4 pieces of Crabs or 50g Shrimps \r\nA bunch of Plantain bananas \r\n', 'STEP 1 Melt the butter or pour 1 cooking spoon of vegetable oil in a deep cooking pan, add sliced onion till slightly brown, \r\nadd grated garlic, tomato purée, sliced red chilli pepper and small grated ginger, stir all together, add other \r\nseasoning – leave to fry for 3mins then add water. \r\nSTEP 2 Add the rice and bay leaf (optional) to above. \r\nSTEP 3 In another cooking pan boil the shrimps, crab, and snails together, add a bit of seasoning till cooked then add or \r\nseparately boil green peas inside for 2mins. \r\nSTEP 4 Season the chicken and grill with onions, a bit of garlic and ginger. \r\nSTEP 5 Check the rice, if almost done, or bring to boil, add the shrimps, green peas either to garnish or to add to rice \r\ndepending on you. \r\nSTEP 6 Melt small cooking spoon of oil into frying pan, slice a bit of onion, chopped red chilli pepper, a little tomato \r\npurée, add the snail, crab, smoke stock fish and grilled chicken. Stir, add seasoning and fry for 10 minutes \r\nto make sauce. \r\nSTEP 7 Check rice if well cooked. Softly stir up from the root with a wooden spoon because of the sauce settled at the \r\nbottom. If done, garnish with cooked and boiled green peas, fried plantain and the sauce. Serve with your favourite \r\nbeverage.', '72'),
(73, 'Efo riro', 'Efo riro is a vegetable soup from Yoruba land. Essentially it is cooked by mixing Spinach with spices and an assorted garnish \r\nof meat or other delicacies. Serve with Pounded yam, Eba, Fufu or Amala. ', 'efo.jpg', '400g or two bunches of Spinach Vegetable / Efo tete.\r\nBlended pepper with onions. \r\n5 or more Fresh Tomatoes \r\n8 or more some Red Chilli Peppers \r\nBoiled Seasoned Crab / Snails / Shrimps- \r\nBoiled and seasoned assorted Meat (Beef parts) \r\nSmoked Stock Fish \r\nDry Stock Fish \r\nPeriwinkle \r\n300 ml Palm oil \r\nMaggi/Salt or other seasoning\r\n', 'STEP 1 Fry four cooking spoons of palm oil in a deep cooking pan, slice onions and add salt, then leave for 2mins. \r\nSTEP 2 Add the blended pepper, small red chilli pepper, ½ a clove of chopped garlic and ginger and cook for 10 \r\nminutes. \r\nSTEP 3 Add all the ingredients, sliced tomatoes , boiled beef, Cray fish, stock dry fish, assorted meat, shrimps, crab, \r\nsnail and seasoned, add periwinkle. \r\nSTEP 4 Add the Spinach vegetable and cook for a further 2-3mins stir together. \r\n Serve Efo Riro vegetable soup with Eba, Fufu, Amala or Pounded yam.', '73'),
(74, 'Asun(goat meat)', 'Asun is traditional goat meat barbeque. A whole goat meat or part could be used depending on need. But a whole goat is \r\nusually cooked for an occasion. ', 'asun.jpg', 'Part or whole 1kg Goat Meat \r\nFresh small red chilli peppers \r\n1 bottle Groundnut oil \r\n1 whole Onions \r\nSeasoning (Maggi, salt, curry etc) \r\nWater', 'Step 1 For a whole goat, cut out the head, the intestine, and the limbs and pierce a thick stick through the anus to the \r\nhead. Brush kerosene or similar on the goat skin to roast out the hair then set up your barbeque equipment. \r\nStep 2 Make firewood or light up the barbeque beneath the pierced goat. After 15 minutes take a mild knife and scrape \r\noff the burns on the skin. Wash thoroughly with soap and sponge to remove the kerosene smell and wash your \r\nhands with soap thoroughly. \r\nStep 3 Place the goat on a chopping board. Dissect the goat meat into pieces, and fillet by removing all the bones, take \r\na hammer or something strong to hit the meat to soften. Place content in a bowl and proceed to step 3.\r\nStep 4 Season the meat with Maggi, red chilli peppers, onions, garlic, curry etc cover the bowl and leave for 10mins.\r\nStep 5 Make a local grill bar outside because of the smoke. \r\nStep 6 Brush the meat with fat or oil, then place on the hot local grill bar to cook for 45mins, every 20 minutes keep \r\nturning the meat from side to side till well cooked add a little oil to prevent burnt. \r\nStep 7 To get pepper soup with your Asun. After grilling add all the meat in a thick pan, add the pounded or sliced \r\npepper with enough onions, add small quantity of water and stir. \r\n Do not add any more seasoning, cover to simmer for 30mins then serve with very chilled drink. \r\n OR \r\n', '74'),
(75, 'Okra soup', 'This method, is mostly used by the Yoruba’s in the southern part of Nigeria, it’s called Ila – a – lasepo, it’s served with Fufu, \r\nSemolina, Pounded yam or Eba.', 'okro.jpg', '15 fingers of Okra \r\n- 25g Fresh blended peppers (Tomatoes, chilli red small/big) \r\n- Dried stock fish and smoked stock fish \r\n- ½ oz or more Crayfish \r\n- 25kg Boiled assorted meat \r\n- 1 oz Shrimps \r\n- 1 ½ cooking spoon Palm oil \r\n- 1 medium Onion \r\n- Other seasoning(Maggi and salt) ', 'Step 1 Cook the blended peppers including 3 cooking spoons of palm oil for 10 -15mins. \r\nStep 2 Add the boiled meats, Cray fish, locust beans, seasoning, and a few slices of onions. Leave to cook for \r\n 10 minutes and blend the Okra. \r\nStep3 Add the blended Okra to the mix, do not cover, stir and leave to cook for 15mins. \r\nStep 4 Check if seasoning is okay, stir, if Okra draws or slips well, it’s ready. \r\nStep 5 Serve with Eba, Fufu, Amala, Pounded yam and a chilled drink. \r\nTip: if okra doesn’t draw/slip first time, add more okra and cook for further 10mins', '75'),
(76, 'Egusi(melon) soup', 'Nigerian Egusi Soup is a soup thickened with ground melon seeds and contains leafy and other vegetables', 'egusi.jpg', '2 handfuls of Grinded dry melon / Egusi \r\n- Blended Okro (6 pieces) \r\n- 25 kg of Boiled assorted meat \r\n- 4 Snails \r\n- Dried stock fish and smoked stock fish. \r\n- ½ oz Periwinkle \r\n- ½ oz Crayfish \r\n- A handful of Ugu leaf \r\n- ½ oz Locust Beans \r\n- Seasoning \r\n- 4 Small yellow chilli pepper \r\n- 1 ½ cooking spoon of Palm oil', 'Step1 Soak the melon (Egusi) in a bowl of water, add a few slices of onion inside, then leave to soak for 3mins. \r\nStep 2 Add 1 ½ cooking spoon of palm oil in the cooking pan, slice a bit of onions and fry the melon. Add some water, \r\n pepper, the locust beans and seasoning. \r\nStep 3 Stir up everything then include the crayfish, meat and stockfish. Leave to cook for 15mins. \r\nStep 4 Add the blended Okra and stir, if too thick, add some little water and stir do not cover. Add the periwinkle, and \r\n then cook for 10 minutes. \r\nStep 5 Add a few handful of vegetable, leave to cook for 5mins, then cover, taste the seasoning if okay. \r\nStep 6 Serve with pounded yam, Eba, Fufu or Amala. ', '76'),
(77, 'Plantain porridge', 'Unripe plantain is very nutritious, and healthy for diabetic patients without the sugar, it has a lot of Vitamin D and calcium.', 'plantainporridge.jpg', '6 pieces of green/unripe plantain \r\n-Handful/Green of Fresh Shrimps(optional) \r\n-2 cooking spoon of Palm oil \r\n-½ oz Crayfish \r\n-1 Teaspoon Sugar \r\n-3 or 4 Ugu Vegetable leaves \r\n-4 pieces of Boiled or Fried Snails \r\n-½ oz Dry Shrimps \r\n-3 Fresh tomatoes \r\n-3 Fresh peppers/ or 1 Teaspoon of Dry chilli powder. \r\n-1 medium sized Onions \r\n-Seasoning', 'Step 1 Slice the plantain into 4 pieces each and rinse thoroughly. \r\nStep 2 Add 2 cooking spoon of palm oil in a thick pan. Allow heating for 2 minutes and add a few slices of the onion. \r\nStep 3 Add 3 cups of water, the green or unripe plantain, crayfish, pepper, shrimps, few slices of onions, tomatoes, a \r\nbit of sugar, seasoning and cover to cook. \r\nStep 4 Check if plantain is soft, marsh it together with wooden spoon, allow to simmer for 2 minutes. \r\nStep 5 Add water if too thick and a few Ugu vegetable, taste the seasoning and pepper. \r\nStep 6 If satisfied then serve boiled fried snails, you could fry the snails in a pepper sauce. \r\nStep 7 Served with a chilled drink.', '77'),
(78, 'Coconut rice', 'This scrumptious dish is often served at parties, where the hosts are keen to show off their culinary skills. You obviously \r\ndon\'t need to have a party as an excuse to cook this delectable combination of rice, coconut extracts and some luscious \r\ngarnish', 'coconutrice.jpg', '400g Rice \r\n-3 sticks Carrot \r\n-1or 2 Coconut fruit \r\n-150g Cray Fish \r\n-300g Boiled Seasoned Snails \r\n-300g Boiled Seasoned Shrimps/Crabs \r\n-400g Smoked Stock Fish \r\n-2 Fresh Tomatoes \r\n-1 Onion \r\n-½ clove Garlic \r\n-4 Plantain bananas \r\n-400g Grilled Chicken \r\n-2 oz pepper ', 'STEP 1 Grate or grind the Coconut then soak overnight in water before use. (Optional) \r\nSTEP 2 The next day, sieve out the Coconut juice \r\nSTEP 3 Pour the juice in the cooking pan, the Add 1 ½ cooking spoon of vegetable oil, slice in a few onions, and grate \r\nlittle bit of ginger and garlic to add. \r\nSTEP 4 Add either red small chilli pepper or dry chilli pepper \r\nSTEP 5 Pour the rice and cover to boil. \r\nSTEP 6 Check the rice, if boiled, add the Cray fish, some diced carrot and shrimps. Cover until steamed then stir with \r\nwooden spoon. \r\nSTEP 7 Add 1 cooking spoon of oil in a frying pan, add some tomato purée or paste, 1 sliced small red chilli pepper, \r\ngrilled chicken, smoked stock fish, snails, crabs then fry all together. Stir to make sauce. \r\nNote Garnish coconut rice with a sauce of crab, shrimps, snail, grilled chicken then serve.', '78'),
(79, 'Gravy stuffed stuffing muffin', ' Each muffin bakes up with a crispy exterior, a moist interior, and a nugget of thick, sausage-filled country gravy in the center. They might sound sort of crazy, but they\'re a must-try for any stuffing fanatic at your table.', 'muffin.jpg\r\n', '3 tablespoons unsalted butter\r\n\r\n6 ounces sweet Italian turkey sausage, casings removed\r\n\r\n¼ cup all-purpose flour\r\n\r\n4 tablespoons chopped green onions\r\n\r\n1 ½ cups cold milk\r\n\r\nsalt to taste\r\n\r\n1 pinch cayenne pepper, or to taste\r\n\r\nfreshly ground black pepper to taste\r\n\r\nFor the Stuffing:\r\n\r\n5 tablespoons unsalted butter, divided\r\n\r\n½ cup diced celery\r\n\r\n1 cup diced onion\r\n\r\nsalt to taste\r\n\r\n1 teaspoon poultry seasoning\r\n\r\nfreshly ground black pepper to taste\r\n\r\n5 cups chicken broth\r\n\r\n12 cups dry bread cubes\r\n\r\n1 tablespoon chopped fresh Italian parsley\r\n\r\n1 tablespoon minced fresh sage\r\n\r\n2 teaspoons minced fresh thyme\r\n\r\n3 large eggs, beaten\r\n\r\n2 tablespoons unsalted butter, melted', 'Melt butter for country gravy in a saucepan over medium-high heat. Add sausage; cook and crumble into very small pieces until browned, 5 to 7 minutes. Add flour and whisk until it combines with butter and sausage fat to create a roux. Cook and stir for 2 minutes. Add green onions. Cook and stir for 1 minute; don\'t overcook.\r\n\r\nPour in milk and cook, stirring constantly, until mixture comes to a boil. Continue to cook and stir until nice and thick. Stir in salt, cayenne, and black pepper. Cook for 1 more minute, then remove from the heat.\r\n\r\nTransfer gravy into a bowl and let cool to room temperature, 15 to 20 minutes. Wrap and refrigerate until cold and thick, about 2 hours, or until needed.\r\n\r\nPreheat the oven to 400 degrees F (200 degrees C). Butter a 12-cup muffin tin with a 1 tablespoon butter.\r\n\r\nMelt remaining 4 tablespoons butter in a saucepan over medium-high heat. Add celery, onion, and salt; cook and stir until onion just starts to turn translucent, 4 to 5 minutes. Add poultry seasoning and pepper; cook and stir for 1 minute. Add chicken broth and bring to a boil.\r\n', '79'),
(80, 'Madeleines French butter cakes', 'Madeleines are very small sponge cakes with a distinctive shell-like shape acquired from being baked in pans with shell-shaped depressions', 'frenchcake.jpg', '¼ cup butter\r\n-2 large eggs\r\n-¾ teaspoon vanilla extract\r\n-? teaspoon salt\r\n-? cup white sugar\r\n-½ cup all-purpose flour\r\n-1 tablespoon lemon zest\r\n-? cup granulated sugar for decoration\r\n', 'Preheat the oven to 375 degrees F (190 degrees C). Butter and flour 12 (3-inch) madeleine molds; set aside.\r\nii. Melt butter and let cool to room temperature.\r\n\r\niii. Beat eggs, vanilla, and salt in a small mixing bowl at high speed until light. Gradually add sugar and continue beating at high speed until mixture is thick and pale and ribbons form in bowl when beaters are lifted, 5 to 10 minutes. Sift flour into the egg mixture, a third at a time, gently folding after each addition. Add lemon zest and pour melted butter around the edge of the batter. Quickly but gently fold butter into the batter.\r\n\r\niv. Spoon batter into molds; it will mound slightly above tops.\r\n\r\nv. Bake until cakes are golden and the tops spring back when gently pressed with your fingertip, 14 to 17 minutes.\r\n\r\nVi. Use the tip of the knife to loosen madeleines from the pan; invert onto a rack. Immediately sprinkle warm cookies with granulated sugar.\r\n', '80'),
(81, 'Apple Rhubarb Cake', 'Made with a very thick vanilla batter, this rustic French dessert cake is simplicity at its best!', 'applecake.jpg', '1 ¼ cups white sugar\r\n1 stick butter\r\n1 teaspoon vanilla extract\r\n3 eggs\r\n1 ? cups all-purpose flour\r\n2 teaspoons baking powder\r\n? teaspoon salt\r\n1 ½ cups diced rhubarb\r\n1 apple, thinly sliced\r\n? cup sliced almonds, or to taste\r\n1 pinch white sugar, or to taste\r\n', '1.Preheat the oven to 400 degrees F (200 degrees C). Grease a 9-inch round pan.\r\n\r\n2.Beat 1 1/4 cups sugar and butter together using an electric mixer until well blended, light, and fluffy. Add eggs, one at a time, followed by vanilla extract, mixing well after each addition.\r\n\r\n3.Turn mixer to low speed and slowly add in flour, baking powder, and salt, mixing just until combined. Fold in rhubarb.\r\n\r\n4.Pour batter into the prepared baking pan. Smooth the top and place apple slices in a circular pattern on batter. Sprinkle almonds and additional sugar on top.\r\n\r\n5.Bake in the preheated oven until a toothpick inserted into the centre comes out clean, 35 to 45 minutes. Let cool, and serve warm or cold.\r\n', '81'),
(82, 'Chocolate roll', 'A nod to the classic childhood favorite, this chocolate cake roll combines light chocolate sponge cake with sweet vanilla whipped and a silky ganache', 'chocolateroll.jpg', '5 eggs\r\n½ teaspoon cream of tartar\r\n1 cup white sugar\r\n3 tablespoons unsweetened cocoa powder\r\n1 teaspoon vanilla extract\r\n1-pint heavy whipping cream, whipped\r\n¼ cup confectioners\' sugar for dusting\r\n¼ cup all-purpose flour\r\n', 'Preheat the oven to 400 degrees F (200 degrees C). Grease a 9-inch round pan.\r\n\r\nBeat 1 1/4 cups sugar and butter together using an electric mixer until well blended, light, and fluffy. Add eggs, one at a time, followed by vanilla extract, mixing well after each addition.\r\n\r\nTurn mixer to low speed and slowly add in flour, baking powder, and salt, mixing just until combined. Fold in rhubarb.\r\n\r\nPour batter into the prepared baking pan. Smooth the top and place apple slices in a circular pattern on batter. Sprinkle almonds and additional sugar on top.\r\n\r\nBake in the preheated oven until a toothpick inserted into the centre comes out clean, 35 to 45 minutes. Let cool, and serve warm or cold. \r\n', '82'),
(83, 'Pumpkin Crunch Cake', 'This pumpkin crunch cake is a classic dump cake made with canned pumpkin, evaporated milk, pecans, and yellow cake mix, served with whipped cream', 'jhjh.jpg', '1 (15 ounce) can pumpkin puree\r\n1 (12 fluid ounce) can evaporated milk\r\n1 ½ cups white sugar\r\n4 large eggs\r\n2 teaspoons pumpkin pie spice\r\n1 teaspoon salt\r\n1 (15.25 ounce) package yellow cake mix\r\n1 cup chopped pecans\r\n1 cup margarine, melted\r\n1 (8 ounce) container frozen whipped topping, thawed\r\n', 'Preheat the oven to 350 degrees F (175 degrees C). Lightly grease one 9x13-inch baking pan.\r\n\r\nCombine pumpkin, evaporated milk, sugar, eggs, pumpkin pie spice, and salt in a large bowl; mix well. Spread batter into the prepared pan.\r\n\r\nSprinkle cake mix over pumpkin batter and pat down gently. Sprinkle chopped pecans evenly over cake mix, then drizzle with melted margarine.\r\n\r\nBake in the preheated oven until a toothpick inserted into the center comes out clean, 60 to 80 minutes. Top with whipped topping when ready to serve.\r\n', '83'),
(84, 'Baked Tortila Chip', 'Homemade Baked Tortilla Chips are brushed with oil, salt, and lime juice then baked in the oven until perfectly crispy for a healthy snack', 'tortilachips.jpg', '1 (12 ounce) package corn tortillas\r\n3 tablespoons lime juice\r\n1 tablespoon vegetable oil\r\n1 teaspoon ground cumin\r\n1 teaspoon chili powder\r\n1 teaspoon salt\r\n', 'Preheat oven to 350 degrees F (175 degrees C).\r\n\r\nStack tortillas in layers of 5 or 6. Cut through each stack to make 8 wedges. Arrange wedges in a single layer on rimmed baking sheets.\r\n\r\nCombine lime juice and oil in a spray bottle or mister; shake until well mixed. Spray the tops of the tortilla wedges until slightly moist.\r\n\r\nCombine cumin, chili powder, and salt in a small bowl; sprinkle mixture over the chips.\r\n\r\nBake in the preheated oven for 7 minutes.\r\n\r\nRemove from the oven. Flip chips, then mist and season again.\r\nReturn to the oven, rotating the pans and switching racks. Bake, checking often to ensure they don\'t burn, until chips are lightly browned and crisp, 5 to 8 more minutes.\r\n\r\nRemove from the oven and cool slightly before serving. Chips will crisp up more as they cool.\r\n', '84'),
(85, 'Baked Keto Krisp Cheese', 'keto cheese chips are crispy and crunchy snacks', 'ketochips.JPG', '1 cup shredded Cheddar cheese', 'Preheat the oven to 400 degrees F (200 degrees C). Line 2 baking sheets with parchment paper.\r\n\r\nArrange cheese in 24 small heaps on the prepared baking sheets.\r\n\r\nBake in the preheated oven until golden brown, about 7 minutes. Cool for 5 to 10 minutes before removing from baking sheets.\r\n', '85'),
(86, 'Grilled Cheese bread', 'This grilled cheese sandwich is made with thinly sliced soft white bread and gooey, perfectly meltable American singles.', 'cheesebread.jpg', '4 slices white bread\r\n\r\n3 tablespoons butter, divided\r\n\r\n2 slices Cheddar cheese', 'Preheat a nonstick skillet over medium heat. Generously butter one side of a slice of bread. Place bread butter-side down in the hot skillet; add 1 slice of cheese. Butter a second slice of bread on one side and place butter-side up on top of cheese.\r\n\r\nCook until lightly browned on one side; flip over and continue cooking until cheese is melted. Repeat with remaining 2 slices of bread, butter, and slice of cheese.\r\n', '86'),
(87, 'Lasagna', 'Lasagna is a type of pasta, possibly one of the oldest types, made of very wide, flat sheets', 'lasagna.jpg', 'Meat\r\nOnion and garlic\r\nTomato products\r\nSugar\r\nSpices and seasonings\r\nLasagna noodles\r\nCheeses\r\nEgg\r\n', '1. Make the meat sauce.\r\n2. Cook the noodles.\r\n3. Make the ricotta mixture.\r\n4. Layer the lasagna according to the recipe instructions.\r\n5. Cover with foil and bake.\r\n6. Let the lasagna rest before serving.\r\n\r\nHow to Layer Lasagna\r\nThe detailed layering instructions can be found in the recipe below, but this is the order you\'ll follow:\r\n\r\n1. Meat sauce\r\n2. Noodles\r\n3. Ricotta mixture\r\n4. Mozzarella slices\r\n5. Meat sauce\r\n6. Parmesan cheese\r\n7. Repeat the layers, then top with the remaining Parmesan.\r\n\r\nHow Long to Cook Lasagna\r\nThe assembled lasagna should take about 50 minutes to cook in an oven preheated to 375 degrees F. Cover it with foil for the first 25 minutes, then let it cook uncovered for the final 25 minutes. Also, it\'s important to let the lasagna rest at room temperature for about 15 minutes before you cut into it.', '87'),
(88, 'Fried rice', 'Nigerian Fried Rice is a very simple yet delicious recipe. This version relies on a ton of fresh vegetables, Beef Liver, and a little bit of oil for crisping it up', 'friedrice.jpg', '2 cups cooked rice\r\n1/2 cup chicken stock\r\n3 tbsp oil for frying\r\n1 cup onion diced\r\n1 cup mixed Vegetables Carrots, Sweet Peas, Sweet Corn and green beans\r\n1/2 tsp thyme\r\n1 tsp Curry powder\r\n2 scallions diced\r\n1 chicken stock cube\r\n1 cup beef liver cubed\r\nsalt to taste\r\n1/4 tsp Cayenne pepper', 'Add the boiled rice to the stock in a medium pot and cook on medium heat until the water is dried up.\r\nPreheat the oil in a pan on medium to high heat, throw in the onions, and fry for a minute or two; add the scallions, mixed vegetables, thyme, curry powder, salt, and stock Cube.\r\nThrow in the beef liver and rice — Stir-fry for about 3 to 5 minutes on high heat.\r\nTake it off the heat and serve.\r\nNotes\r\nThe white rice should be cooked tender but still firm to bite (like you cook your pasta al-dente). Overcooking the rice will result in mushy fried rice.\r\nFried rice is best enjoyed when the Veggies remain crunchy, so don’t overcook your veggies.\r\nYou need to increase the heat and stir continuously to get that nice coveted crisp during frying.', '88');

-- --------------------------------------------------------

--
-- Table structure for table `post_rating`
--

CREATE TABLE `post_rating` (
  `rating_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Block, 0 = Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_rating`
--

INSERT INTO `post_rating` (`rating_id`, `post_id`, `rating_number`, `total_points`, `created`, `modified`, `status`) VALUES
(12, 1, 1, 4, '2017-11-07 16:32:12', '2017-11-07 16:32:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `rid` int(222) NOT NULL,
  `rimage` varchar(222) NOT NULL,
  `resname` varchar(222) NOT NULL,
  `rtext` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`rid`, `rimage`, `resname`, `rtext`) VALUES
(52, '59d9dceab50c5.jpg', 'Lemon drizzel cake', '<ul><li>Heat oven to 180C/fan 160C/gas 4.&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/content/top-five-whisks\">Beat together</a>&nbsp;225g softened unsalted butter and 225g caster sugar until pale and creamy, then add 4 eggs, one at a time, slowly mixing through. Sift in 225g flour, then add the finely grated zest of 1 lemon and&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.bbcgoodfood.com/content/top-five-mixing-bowls\">mix</a>&nbsp;until well combined. Line a loaf tin (8 x 21cm) with greaseproof paper, then spoon in the mixture and level the top with a spoon.</li></ul>'),
(55, '59d9e3051ecf3.jpg', 'crunchy bran french toast', 'a definite winner at the breakfast table. One of the best breakfast sandwiches that can be made with simple and healthy ingredients. A bit of a tangy taste due to the orange juice and orange zest but the crunchy cereal helped it come all together. This will be a staple at the breakfast in the future'),
(56, '59d9e6ba87bef.jpg', 'Easy Garlic-Herb Salad Croutons', '<ul><li>Learn how to make your own croutons to perk up that lunch salad! Perfectly crisp and crunchy and filled with garlicky-herb flavors.</li></ul>'),
(58, '59d9e94d7ef4f.jpg', ' french onion soup', '<ul><li>Combine the onions, olive oil, butter, and salt in a 4-quart sauté pan or Dutch oven. Cook, stirring occasionally, over medium heat until the onions are soft and translucent, about 10 minutes. Adjust the heat to medium-high, spread the onions over the bottom of the pot, and cook without stirring until the bottom of the pot begins to turn brown</li></ul>'),
(59, '59d9eac3c4a56.jpg', 'Bourbon Glazed Meatloaf', '<ul><li>To make fresh breadcrumbs just tear up a slice or two of bread and whiz in a food processor.</li></ul>'),
(70, 'moimoi.jpg', 'MOI-MOI(Beans Cake)', 'This is a very tasty experimental dish. It can be eaten as breakfast, lunch or dinner.'),
(71, 'yamegg.jpg', 'Boiled yam and egg', 'This is a very tasty experimental dish. It can be eaten as breakfast, lunch or dinner.'),
(72, 'jollof.jpg', 'Jollof Rice', 'Jollof rice is a popular party favourite in Nigeria and most West African countries. It has a basic simple method and the \r\ningredients are easy to find. It is a very flexible dish that you can experiment with by adding your own signature ingredients.'),
(73, 'efo.jpg', 'Efo riro', 'Efo riro is a vegetable soup from Yoruba land. Essentially it is cooked by mixing Spinach with spices and an assorted garnish \r\nof meat or other delicacies. Serve with Pounded yam, Eba, Fufu or Amala.'),
(74, 'asun.jpg', 'Asun(goat meat)', 'Asun is traditional goat meat barbeque. A whole goat meat or part could be used depending on need. But a whole goat is \r\nusually cooked for an occasion. '),
(75, 'okro.jpg', 'Okra soup', 'This method, is mostly used by the Yoruba’s in the southern part of Nigeria, it’s called Ila – a – lasepo, it’s served with Fufu, \r\nSemolina, Pounded yam or Eba.'),
(76, 'egusi.jpg', 'Egusi(melon) soup', 'Nigerian Egusi Soup is a soup thickened with ground melon seeds and contains leafy and other vegetables'),
(77, 'plantainporridge.jpg', 'Plantain porridge', 'Unripe plantain is very nutritious, and healthy for diabetic patients without the sugar, it has a lot of Vitamin D and calcium.'),
(78, 'coconutrice.jpg', 'Coconut rice', 'This scrumptious dish is often served at parties, where the hosts are keen to show off their culinary skills. You obviously \r\ndon\'t need to have a party as an excuse to cook this delectable combination of rice, coconut extracts and some luscious \r\ngarnish'),
(79, 'muffin.jpg', 'Gravy stuffed stuffing muffin', ' Each muffin bakes up with a crispy exterior, a moist interior, and a nugget of thick, sausage-filled country gravy in the center. They might sound sort of crazy, but they\'re a must-try for any stuffing fanatic at your table.'),
(80, 'frenchcake.jpg', 'Madeleines French butter cakes', 'Madeleines are very small sponge cakes with a distinctive shell-like shape acquired from being baked in pans with shell-shaped depressions'),
(81, 'applecake.jpg', 'Apple Rhubarb Cake', 'Made with a very thick vanilla batter, this rustic French dessert cake is simplicity at its best!'),
(82, 'chocolateroll.jpg', 'Chocolate roll', 'A nod to the classic childhood favorite, this chocolate cake roll combines light chocolate sponge cake with sweet vanilla whipped and a silky ganache'),
(83, 'jhjh.jpg', 'Pumpkin Crunch Cake', 'This pumpkin crunch cake is a classic dump cake made with canned pumpkin, evaporated milk, pecans, and yellow cake mix, served with whipped cream'),
(84, 'tortillachips.jpg', 'Baked Tortila Chip', 'Homemade Baked Tortilla Chips are brushed with oil, salt, and lime juice then baked in the oven until perfectly crispy for a healthy snack'),
(85, 'ketochips.jpg', 'Baked Keto Krisp Cheese', 'keto cheese chips are crispy and crunchy snacks'),
(86, 'cheesebread.jpg', 'Grilled Cheese bread', 'This grilled cheese sandwich is made with thinly sliced soft white bread and gooey, perfectly meltable American singles.'),
(87, 'lasagna.jpg', 'Lasagna', 'Lasagna is a type of pasta, possibly one of the oldest types, made of very wide, flat sheets'),
(88, 'friedrice.jpg', 'Fried rice', 'Nigerian Fried Rice is a very simple yet delicious recipe. This version relies on a ton of fresh vegetables, Beef Liver, and a little bit of oil for crisping it up');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(244) NOT NULL,
  `lastname` varchar(244) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`user_id`, `firstname`, `lastname`, `email`, `password`) VALUES
(3, 'navjot', 'singh', 'ns949405@gmail.com', '74587458'),
(12, 'rohit', 'singh', 'rohit@gmail.com', '74587458'),
(16, 'rohit@gmail.com', 'rohit@gmail.com', 'rohit@gmail.com', 'rohit@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_dir`
--
ALTER TABLE `admin_dir`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `commentbar`
--
ALTER TABLE `commentbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `full_recipy`
--
ALTER TABLE `full_recipy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_rating`
--
ALTER TABLE `post_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_dir`
--
ALTER TABLE `admin_dir`
  MODIFY `a_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `commentbar`
--
ALTER TABLE `commentbar`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `full_recipy`
--
ALTER TABLE `full_recipy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `post_rating`
--
ALTER TABLE `post_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `rid` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
