-- MySQL dump 10.13  Distrib 5.7.24, for macos10.14 (x86_64)
--
-- Host: localhost    Database: inst
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

CREATE DATABASE IF NOT EXISTS `inst`;

USE `inst`;

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `reviews` int(7) DEFAULT NULL,
  `lectures` int(4) DEFAULT NULL,
  `num_hours` int(4) DEFAULT NULL,
  `full_price` decimal(6,2) DEFAULT NULL,
  `disc_price` decimal(6,2) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'React & Redux for Beginners',1.5,708,74,49,774.68,77.46,'https://picsum.photos/200/300?image=5'),(2,'Advanced Guide to Bootstrap',2.7,679,28,206,425.95,42.59,'https://picsum.photos/200/300?image=14'),(3,'Trainwreck: An Introduction to Rails',2.4,797,72,518,139.89,13.98,'https://picsum.photos/200/300?image=8'),(4,'R for Masochists',3.1,379,75,467,560.94,56.09,'https://picsum.photos/200/300?image=37'),(5,'Build Your First HTML Site',4.1,778,26,2,33.91,3.39,'https://picsum.photos/200/300?image=37'),(6,'CSS Tips and Tricks',1.9,168,56,429,537.39,53.73,'https://picsum.photos/200/300?image=48'),(7,'FAANG Interview Guide',1.9,101,62,190,68.09,6.80,'https://picsum.photos/200/300?image=40'),(8,'A Quick Intro to Swift',3.7,702,24,208,647.95,64.79,'https://picsum.photos/200/300?image=40'),(9,'C# for Dummies',2.4,131,37,225,353.44,35.34,'https://picsum.photos/200/300?image=3'),(10,'Secrets of CSS - The Expert\'s Toolkit',0.2,171,41,188,966.47,96.64,'https://picsum.photos/200/300?image=23'),(11,'Principles of Functional JavaScript Programming',3.6,269,87,851,642.21,64.22,'https://picsum.photos/200/300?image=32'),(12,'Advanced Data Structures and Algorithms',4.0,336,17,27,765.87,76.58,'https://picsum.photos/200/300?image=34'),(13,'Take Your JavaScript to the Next Level',1.5,234,41,171,325.23,32.52,'https://picsum.photos/200/300?image=9'),(14,'Crash Course: Fundamentals of HTML & CSS',3.6,88,31,51,578.87,57.88,'https://picsum.photos/200/300?image=16'),(15,'Deploying Your First Site on Heroku',0.7,619,1,0,144.32,14.43,'https://picsum.photos/200/300?image=4'),(16,'Chrome Debugger Tools Tips & Techniques',4.8,459,4,32,420.60,42.06,'https://picsum.photos/200/300?image=22'),(17,'React Front to Back',5.0,584,11,65,364.19,36.41,'https://picsum.photos/200/300?image=16'),(18,'Angular Front to Back',2.0,175,68,292,112.47,11.24,'https://picsum.photos/200/300?image=20'),(19,'Learning to Program Pythonically: Beginners and Intermediates',4.3,472,65,541,543.68,54.36,'https://picsum.photos/200/300?image=42'),(20,'The Busy Developer\'s Guide to Go',4.4,99,60,11,278.11,27.81,'https://picsum.photos/200/300?image=11'),(21,'The Complete jQuery Course: Beginners to Advanced',0.4,687,60,70,270.43,27.04,'https://picsum.photos/200/300?image=26'),(22,'Artificial Intelligence with Python',0.5,244,60,133,828.20,82.82,'https://picsum.photos/200/300?image=9'),(23,'Object-oriented Programming in Javascript',0.7,476,26,248,117.69,11.76,'https://picsum.photos/200/300?image=14'),(24,'Modern React with Redux',4.4,264,54,91,264.09,26.40,'https://picsum.photos/200/300?image=15'),(25,'Node.js: The Complete Guide to RESTful APIs',0.1,754,67,561,464.68,46.46,'https://picsum.photos/200/300?image=22'),(26,'Fundamental Neuroscience - The Hard Parts Made Easy',2.4,9,50,148,107.58,10.75,'https://picsum.photos/200/300?image=47'),(27,'Principles of Biochemistry - The Stuff You Missed In College',2.1,704,10,48,486.86,48.68,'https://picsum.photos/200/300?image=19'),(28,'Bioethics and Why You Should Care',4.8,951,92,721,443.90,44.39,'https://picsum.photos/200/300?image=13'),(29,'Navigating the Hospital Billing System',3.3,327,85,795,639.44,63.94,'https://picsum.photos/200/300?image=3'),(30,'Patient Billing Best Practices',4.6,889,2,14,296.20,29.62,'https://picsum.photos/200/300?image=30'),(31,'Algorithms in Neural Networks',1.5,241,69,362,560.95,56.09,'https://picsum.photos/200/300?image=31'),(32,'Introduction to Cognitive Behavioral Therapy',3.2,374,36,99,590.75,59.07,'https://picsum.photos/200/300?image=29'),(33,'The Science of Intermittent Fasting ',0.7,451,76,51,512.11,51.21,'https://picsum.photos/200/300?image=16'),(34,'CPR & First Aid Principles',3.3,979,97,627,418.45,41.84,'https://picsum.photos/200/300?image=12'),(35,'The Ins & Outs of the Emergency Medical System',1.7,243,51,261,354.62,35.46,'https://picsum.photos/200/300?image=22'),(36,'Biostatistics for the General Practitioner',1.9,675,31,53,198.69,19.86,'https://picsum.photos/200/300?image=37'),(37,'Cryptography and Patient Data',3.4,853,41,212,242.06,24.20,'https://picsum.photos/200/300?image=30'),(38,'Machine Learning in Surgical Technology',1.0,214,56,276,684.52,68.45,'https://picsum.photos/200/300?image=45'),(39,'Basics of Neurophysiological Systems',3.0,376,17,146,94.72,9.47,'https://picsum.photos/200/300?image=6'),(40,'Medicine and Engineering - A History of Saving Lives',1.0,805,72,299,64.32,6.43,'https://picsum.photos/200/300?image=20'),(41,'Nutrition Principles for Differing Body Types',1.7,972,73,383,245.98,24.59,'https://picsum.photos/200/300?image=33'),(42,'Beginner to Advanced Meditation Techniques',4.0,940,27,118,557.50,55.75,'https://picsum.photos/200/300?image=47'),(43,'Basics of Massage Therapy',4.1,295,53,181,138.90,13.89,'https://picsum.photos/200/300?image=30'),(44,'Strength Training for Beginners ',2.5,731,58,499,976.04,97.60,'https://picsum.photos/200/300?image=12'),(45,'Weightlifting Mechanics and Levers ',1.2,469,59,308,543.25,54.32,'https://picsum.photos/200/300?image=6'),(46,'Intro R for Biostatistics ',1.6,677,51,317,67.83,6.78,'https://picsum.photos/200/300?image=15'),(47,'Learn Matlab - Data Analysis for Large Data Sets',1.2,211,1,3,899.04,89.90,'https://picsum.photos/200/300?image=3'),(48,'Data Visualition with Matlab',3.3,638,55,410,924.07,92.40,'https://picsum.photos/200/300?image=38'),(49,'Introduction to Medical Imaging',0.6,49,63,579,84.29,8.42,'https://picsum.photos/200/300?image=46'),(50,'Reverse Type 2 Diabetes Naturally',2.1,113,40,105,845.85,84.58,'https://picsum.photos/200/300?image=23'),(51,'Master Polite English',1.1,522,87,444,728.28,72.82,'https://picsum.photos/200/300?image=6'),(52,'Learn German Language: Complete German Course - Beginners',2.4,628,81,553,212.62,21.26,'https://picsum.photos/200/300?image=35'),(53,'Spanish 1-4: Beginner, Elementary, Intermediate and Advanced',2.3,909,37,365,363.28,36.32,'https://picsum.photos/200/300?image=24'),(54,'Chinese Made Easy L1: Understand 65% of Chinese in 10 hours',2.9,97,78,695,936.42,93.64,'https://picsum.photos/200/300?image=24'),(55,'English Vocabulary Launch: Upgrade your speaking',3.5,691,68,581,363.39,36.33,'https://picsum.photos/200/300?image=27'),(56,'Learn Korean! Start Speaking Korean Now!',3.0,92,18,41,423.71,42.37,'https://picsum.photos/200/300?image=47'),(57,'Fastbreak Spanish: Save Time and Memory',4.2,161,68,564,162.39,16.23,'https://picsum.photos/200/300?image=30'),(58,'American Sign Language Level 1',1.2,717,73,167,188.06,18.80,'https://picsum.photos/200/300?image=39'),(59,'Perfect Your German: Tips & Tricks to Avoid Common Mistakes',2.4,346,99,508,35.20,3.52,'https://picsum.photos/200/300?image=4'),(60,'Complete Russian Language course for Beginners A1',3.5,165,89,866,321.79,32.17,'https://picsum.photos/200/300?image=49'),(61,'Practice and Perfect your French - Intermediate Level',4.3,119,77,590,653.40,65.34,'https://picsum.photos/200/300?image=39'),(62,'How to Learn and Memorize the Vocabulary of Any Language',2.1,252,38,303,284.11,28.41,'https://picsum.photos/200/300?image=9'),(63,'Survive Italy Without Being Fluent in Italian',3.4,798,79,492,950.72,95.07,'https://picsum.photos/200/300?image=20'),(64,'Learn Japanese for Beginners: The Ultimate 100-Lesson Course',3.5,361,20,71,951.32,95.13,'https://picsum.photos/200/300?image=44'),(65,'How to do a Hebrew Word Study Without Knowing Hebrew',3.0,528,85,58,619.34,61.93,'https://picsum.photos/200/300?image=22'),(66,'5 Days to a Better Accent',4.2,880,33,310,319.67,31.96,'https://picsum.photos/200/300?image=34'),(67,'Japanese in 14 Weeks with Scientific Memorization Method',0.4,38,25,157,390.37,39.03,'https://picsum.photos/200/300?image=14'),(68,'CORE CHINESE 1: Build Up Chinese Foundations by Practice',3.0,909,97,278,372.75,37.27,'https://picsum.photos/200/300?image=12'),(69,'Spanish Made Simple: Beginner Spanish',4.1,736,60,443,526.16,52.61,'https://picsum.photos/200/300?image=35'),(70,'An Introduction to Classical Latin',2.8,246,96,415,362.46,36.24,'https://picsum.photos/200/300?image=46'),(71,'English Fluency: How to Sound Like a Native Speaker',4.1,505,10,13,743.73,74.37,'https://picsum.photos/200/300?image=45'),(72,'3 Minute Portuguese - Course 1',2.5,715,96,572,830.88,83.08,'https://picsum.photos/200/300?image=8'),(73,'College Mandarin Chinese Course on Your Own - Beginning Level',2.7,535,42,188,602.34,60.23,'https://picsum.photos/200/300?image=48'),(74,'Learn to Speak Vietnamese Like a Native',0.1,652,1,7,881.82,88.18,'https://picsum.photos/200/300?image=34'),(75,'American Accent Training for IT Professionals',1.1,410,80,328,235.13,23.51,'https://picsum.photos/200/300?image=50'),(76,'Dog Training - Part 1: Natural Raw Food Diet For Dogs & Cats',3.3,627,99,107,851.57,85.15,'https://picsum.photos/200/300?image=26'),(77,'Successful Russian Tortoise Care and Husbandry',0.7,736,72,544,673.73,67.37,'https://picsum.photos/200/300?image=35'),(78,'How to Start a Pet Care Business: Open Your Own Dog Kennel!',2.3,481,46,85,132.20,13.22,'https://picsum.photos/200/300?image=5'),(79,'Dog Training - Part 2: Natural & Holistic Pet Health Care',3.1,479,33,113,15.03,1.50,'https://picsum.photos/200/300?image=34'),(80,'Learn how to groom your dog at home!',0.9,951,65,357,103.89,10.38,'https://picsum.photos/200/300?image=47'),(81,'How to Increase Life Span & Quality of Life for Your Dog Cat',2.4,94,96,294,599.04,59.90,'https://picsum.photos/200/300?image=8'),(82,'Horse Care 101',1.1,363,60,435,500.00,50.00,'https://picsum.photos/200/300?image=42'),(83,'How To Assemble a Standard Rabbit Hutch (Master Class)',4.7,634,1,5,137.38,13.73,'https://picsum.photos/200/300?image=48'),(84,'How to treat your pet like a vet (against ticks and fleas)',1.0,53,93,167,958.02,95.80,'https://picsum.photos/200/300?image=26'),(85,'Love Dogs? Make Money as a Pet-sitter!',4.8,219,1,2,254.19,25.41,'https://picsum.photos/200/300?image=13'),(86,'Goat Yoga: the Road to Enlightenment',4.1,305,24,75,570.33,57.03,'https://picsum.photos/200/300?image=2'),(87,'Dog Training - Part 3: Training Your Dog to Fetch Beer',4.1,812,53,95,20.89,2.08,'https://picsum.photos/200/300?image=25'),(88,'Jumpstart Your Alpaca Shearing Business',0.4,763,81,531,40.29,4.02,'https://picsum.photos/200/300?image=26'),(89,'Cat Milk Bottling: a How To Guide',1.5,727,35,32,621.09,62.10,'https://picsum.photos/200/300?image=17'),(90,'Training Cats To Get Along In a Multi-Cat Household',0.5,516,8,57,383.03,38.30,'https://picsum.photos/200/300?image=33'),(91,'Dog & Cat Behavior Problems',4.0,271,21,35,16.57,1.65,'https://picsum.photos/200/300?image=34'),(92,'Introduction to Animal Psychology Certificate: Pets Behavior',2.6,714,100,940,248.89,24.88,'https://picsum.photos/200/300?image=40'),(93,'How to Train a Puppy',3.7,513,27,194,774.19,77.41,'https://picsum.photos/200/300?image=7'),(94,'Dog CPR, First Aid + Safety for pet pros + dedicated owners',0.9,589,4,26,433.70,43.37,'https://picsum.photos/200/300?image=40'),(95,'Dog body language. How To Read Your Dog\'s Body Language',3.4,983,38,240,221.32,22.13,'https://picsum.photos/200/300?image=44'),(96,'Old Dog Care: A-Z Tips to take care of your senior dog',3.8,467,52,90,838.09,83.80,'https://picsum.photos/200/300?image=18'),(97,'How to Crate Train Your Dog/Puppy & Train an Aggressive Dog',4.7,453,48,410,292.72,29.27,'https://picsum.photos/200/300?image=13'),(98,'Animal Communication - Animals and the Afterlife',3.0,72,38,245,510.75,51.07,'https://picsum.photos/200/300?image=6'),(99,'Telepathic Animal Healing 101',4.6,845,55,279,302.23,30.22,'https://picsum.photos/200/300?image=6'),(100,'Animal Communication For beginners',2.2,752,86,370,996.38,99.63,'https://picsum.photos/200/300?image=42');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructors` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `inst_name` varchar(50) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `reviews` int(7) DEFAULT NULL,
  `students` int(8) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `blurb` text,
  `courses` int(4) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (1,'Eloise Zulauf',1.7,1919,24378,'voluptas sunt reiciendis','Aliquam architecto totam minus mollitia molestias minima porro quia voluptas. Voluptatem illo aut quisquam. Necessitatibus quod quia optio eaque dolor.\n \rDignissimos voluptate qui. Ea delectus fuga harum qui repellat ducimus neque. Inventore id voluptas similique cupiditate quasi. Fugit et provident at minus nobis.\n \rAccusamus assumenda saepe. Eos inventore ipsam aut esse ratione veniam blanditiis. Autem sunt cumque.',5,'https://randomuser.me/api/portraits/women/71.jpg'),(2,'Nils Bergstrom',2.7,2232,55932,'natus enim et','Fuga quo laboriosam numquam et consectetur exercitationem est. Eum exercitationem ad recusandae pariatur excepturi nobis. Atque ut earum quae omnis nisi porro nesciunt enim. Omnis nobis cum nihil et ex praesentium enim. Repellendus repellat voluptate possimus.\n \rSit omnis aperiam alias sit excepturi inventore. Repellat et ut quas nostrum error ut dolores autem non. Magni illum et doloribus in nobis.\n \rQuos sed autem vel. Doloribus quae molestiae qui provident debitis molestiae. Alias ipsa nemo nam et sint accusamus ducimus nihil repellendus. Quia id aut et sint harum voluptatibus autem quas. Ipsa et molestiae quis ratione sint delectus.',5,'https://randomuser.me/api/portraits/men/12.jpg'),(3,'Andrew Nitzsche',2.0,2878,89403,'rerum aspernatur vitae','Ea expedita tempora voluptatem minus nihil modi fugit quam. Eveniet quisquam eos omnis amet fuga nesciunt eveniet. Aspernatur atque totam sequi non nihil minus quia. Eius veniam quia nobis minima minus reiciendis ut qui.\n \rPariatur fugit et debitis molestias temporibus dolores. Atque velit et quo nihil earum inventore voluptas pariatur. Ut blanditiis provident est vero qui numquam voluptatem quia dolorem. Fuga numquam nihil dolorem cumque et dolore cumque neque tempore.\n \rVel quia odit eveniet consequatur fugiat maxime odio sit quia. Aspernatur sed accusamus voluptatem officia esse debitis. Id consequatur et qui laboriosam quas. Pariatur esse repudiandae. Fugiat at quia cupiditate qui sed eveniet numquam et. A tempore doloremque reiciendis ea in doloribus voluptatum ut nemo.',6,'https://randomuser.me/api/portraits/men/4.jpg'),(4,'Waino Anderson',2.8,3122,5999,'ut laboriosam nisi','Ea et maiores optio perferendis placeat qui placeat alias. Et consequuntur sint est aut. Quo et cumque distinctio.\n \rArchitecto a explicabo provident earum. Officia dolorum reiciendis aut. Et aut voluptas. Voluptatem vel dolorum omnis.\n \rNatus vel et. Neque vel facilis dolores ut officiis. Earum et voluptatem accusamus enim adipisci. Aspernatur unde omnis saepe sequi quibusdam eligendi.',7,'https://randomuser.me/api/portraits/women/82.jpg'),(5,'Ransom Hettinger',2.8,4507,54458,'sint qui eum','Labore voluptates et. Fugit assumenda aut distinctio quia ut sed nemo enim vero. Rerum labore beatae ratione facilis eos et maxime illo.\n \rFugiat et consequatur deserunt. Harum ut voluptatibus quam. Id molestias doloribus facilis modi labore repellat atque. Et in omnis est. Officia explicabo pariatur aut. Totam iste odit vitae dolor vero.\n \rRatione modi adipisci totam necessitatibus totam. Ducimus omnis neque deleniti vel ipsa ducimus. Libero et voluptatibus commodi. Cumque quibusdam magnam qui aut aliquam ea. Quia voluptas ipsum optio.',10,'https://randomuser.me/api/portraits/women/34.jpg'),(6,'Madeline Bayer',2.5,3426,73460,'voluptatibus et aut','Aut doloribus soluta qui natus a hic qui. Atque doloremque inventore omnis odit quasi odio consequuntur eum. Dolorum qui ea alias repellat aspernatur animi atque. Delectus ipsa sit repellendus. Vero voluptas repellendus omnis ut sed ad sint quo laboriosam.\n \rEum expedita aperiam rerum culpa itaque ipsa amet autem. Aperiam nesciunt repudiandae. Quas et iste eos ipsam architecto occaecati nesciunt sunt repellat. Quisquam itaque unde harum quod vel aut enim minima. Et maxime aut consequatur qui.\n \rBlanditiis libero quae illo ut omnis reiciendis deserunt omnis hic. Et maiores ut adipisci magni et facere maxime. Fugit voluptas quidem velit rerum dicta dolorem exercitationem. Quod sed laborum vitae corrupti inventore.',9,'https://randomuser.me/api/portraits/women/34.jpg'),(7,'Vanessa Nolan',2.5,2444,76653,'officia error qui','Amet reprehenderit laudantium. Ipsam minus veritatis nesciunt sit. Rerum placeat repudiandae qui est nam. Consectetur officia temporibus alias mollitia aut voluptatem eum. Optio sequi tempore quis quaerat explicabo exercitationem itaque. In repellat et et velit voluptate laborum error sed.\n \rSed dolores in. Praesentium error commodi exercitationem ipsa iure omnis voluptatibus. Omnis repellat voluptas tenetur esse atque. Laudantium ut repellat culpa. Et voluptatum explicabo numquam ut laudantium occaecati.\n \rEt aspernatur est tempore. Iusto optio est illo. Sunt distinctio non ut ea repellat doloremque est voluptas incidunt.',5,'https://randomuser.me/api/portraits/men/88.jpg'),(8,'Camryn Schumm',3.1,2190,8953,'qui ad dolorem','Dolores enim rerum blanditiis vero. Dolor enim totam qui consequatur et id vitae delectus. Iure distinctio mollitia molestiae quis quasi rem omnis. Debitis dignissimos atque et illum vero eveniet ducimus.\n \rReprehenderit consequatur non. Dolorem et amet eos saepe eligendi sed veritatis molestias. Quos enim quam harum et. Hic dolores modi vel fugiat. Totam repellat sequi voluptatem architecto.\n \rIpsa dolores et quos illum adipisci nesciunt. Et minima natus asperiores aut rerum. Illum vel voluptate consequatur omnis assumenda.',5,'https://randomuser.me/api/portraits/women/68.jpg'),(9,'Freddy Durgan',2.0,2557,30978,'facilis explicabo odit','Eum sit omnis aut est aut dignissimos alias est odio. Voluptatem iure et quia. Harum nihil sequi qui soluta nobis ad quisquam. Aperiam minus animi nisi quia voluptas. Minima et reprehenderit in quas debitis autem quia optio dolores. Qui blanditiis sapiente modi omnis.\n \rQuo et aut. Qui ipsum cum. Omnis porro a. Aliquam cupiditate minus est dolore adipisci qui voluptatibus nulla.\n \rNeque ut dignissimos laborum sapiente ratione quia. Vero error voluptas. Eum at voluptatem rem aliquam non ab.',5,'https://randomuser.me/api/portraits/women/9.jpg'),(10,'Adolph Terry',2.4,4134,21109,'excepturi molestiae dicta','Sed quis fuga voluptatem debitis tempore. Perferendis veritatis velit facere et commodi fugit. Dolor non cupiditate optio ut veritatis inventore.\n \rQuisquam ipsa dolor veniam sit autem. Voluptas quas ut et autem officiis sit voluptas molestias. Qui qui itaque non et ut qui. Voluptatibus et totam earum laudantium.\n \rEt repellendus dolores accusantium eveniet saepe. Omnis ab cupiditate quis nam officiis dolores nihil. Consequatur esse ipsum nulla et. Omnis porro maxime fuga praesentium.',9,'https://randomuser.me/api/portraits/women/10.jpg'),(11,'Asa Fahey',3.9,4132,35678,'et ipsum ratione','Expedita nulla ut ex voluptatem autem distinctio aut modi aut. Nihil sint recusandae. Quas voluptatem rerum quisquam veritatis ab beatae possimus nesciunt. Animi consequatur repudiandae magnam voluptatem ab nostrum corporis. Distinctio adipisci molestiae culpa non veritatis atque quo facilis.\n \rEst quis tenetur consequatur debitis laudantium quo et officia. Et molestias aspernatur. Maiores reiciendis officia illo. Voluptatem aut eius sequi dolorum perspiciatis architecto cupiditate. Nesciunt sed cupiditate alias et tempore aliquid vel pariatur. Voluptates laborum consectetur aspernatur temporibus placeat id corporis quia.\n \rVoluptatem qui consequuntur iusto est beatae voluptate qui. Non exercitationem laudantium. Error voluptatem laboriosam neque suscipit voluptate.',9,'https://randomuser.me/api/portraits/women/86.jpg'),(12,'Morris Brakus',3.2,651,23301,'et sed vel','Necessitatibus cupiditate ad. Cupiditate reprehenderit molestiae magnam autem voluptas reprehenderit dolorum. Magnam eos est soluta suscipit provident rerum quisquam tempora. Nisi accusamus fugiat earum voluptas et. Eius ea explicabo quia. Cum est repellat ut libero.\n \rAdipisci esse assumenda. Tempore molestiae amet id tempore velit velit incidunt. Omnis perferendis voluptates nesciunt quia eligendi vel. Quasi odit rerum enim assumenda voluptatem omnis consectetur temporibus officia. Rerum ut accusantium voluptas assumenda accusamus.\n \rPraesentium sunt ipsum iusto commodi possimus consequuntur. Quidem molestiae nam non tenetur rerum. Tempore est eos asperiores animi quis modi tempora voluptatem. Nihil aliquid totam tempore aliquam eum et. Ullam non omnis quo nesciunt laboriosam qui velit. Atque eveniet optio qui totam est iure ut aut.',2,'https://randomuser.me/api/portraits/women/84.jpg'),(13,'Adaline Bednar DDS',3.2,2527,71662,'aut non nam','Non soluta id est impedit debitis. Aut explicabo earum. Sed voluptates aut similique consequatur consequatur mollitia accusantium. Molestias nam doloribus voluptatem tempora. Ut aut aut. Ea ut tempore corporis ratione et molestias facere rerum eum.\n \rNihil voluptate est quo dicta. Vero totam ex voluptatem quaerat quia ut. Eveniet dolor esse esse.\n \rDolores quo labore. Laudantium ratione fugiat repellat. Beatae reprehenderit enim necessitatibus voluptatum eius. Officia earum nostrum.',5,'https://randomuser.me/api/portraits/men/63.jpg'),(14,'Pauline Pfannerstill',1.9,2997,15149,'in quisquam autem','Esse quisquam sed excepturi porro temporibus consequuntur tenetur. Vel et voluptatem et et. Voluptatem assumenda tempore.\n \rMolestias sit nihil non explicabo repellendus vero voluptate nesciunt consequatur. Animi id tenetur totam corrupti rerum praesentium optio. Ab soluta qui ut reiciendis.\n \rReiciendis quaerat rerum soluta quo natus et voluptatum et quis. Rem reprehenderit quo. Ab impedit et officiis eos qui aut nisi beatae. Eos sed sint provident consequatur. Sint quas qui ut ea earum consequatur dolorum.',7,'https://randomuser.me/api/portraits/women/65.jpg'),(15,'Matilde Murazik',3.2,3345,29722,'perspiciatis quibusdam commodi','Et non dolores necessitatibus eos dolorem. Sunt minus veniam accusamus. Tempore vero qui. Exercitationem ut repudiandae. Minima fugiat doloribus tempora provident sit eum culpa eligendi odio. Sed et quam quidem quis cumque veritatis non.\n \rNihil rem velit incidunt voluptatem voluptas non non sapiente. Error magnam voluptatem blanditiis natus animi aut quam officiis. Consequuntur pariatur nam assumenda quis. Ducimus accusantium distinctio.\n \rVoluptas aperiam reprehenderit sed eos quia reprehenderit hic debitis eius. Est qui soluta qui suscipit et error autem. Doloribus consectetur sint natus vel vel.',8,'https://randomuser.me/api/portraits/women/21.jpg'),(16,'Damaris Johnston',3.0,3260,74556,'quis vel veritatis','Dolorem mollitia et quae. Dolores cumque delectus aut quasi quo hic laudantium. Dolores quaerat ducimus id reiciendis. Rem aut est ut quasi tempora magni.\n \rExercitationem est sed cumque non libero qui rerum ullam. Quia qui architecto. Fugit vitae dignissimos placeat fugit neque impedit rem rerum laudantium. Adipisci quia esse sit. Quaerat provident totam dolorem vel.\n \rFacilis eius ipsam quos suscipit minima minima fugit voluptatibus. Mollitia molestiae nihil in et. Molestiae placeat atque magnam blanditiis minus dolorem fugit et. Nisi esse velit dolorem alias omnis.',7,'https://randomuser.me/api/portraits/women/20.jpg'),(17,'Daphne Von',1.9,5288,18522,'quos et laborum','Qui vitae ex aut. Et placeat ut delectus a aperiam nesciunt ut fugiat repudiandae. Et saepe dolores animi labore vel beatae. Asperiores qui repudiandae numquam dicta.\n \rAut voluptatem reprehenderit consectetur tempore amet excepturi facere laboriosam. Esse et tempora et sit vero architecto minima. Suscipit voluptas vero quis laborum et. Excepturi et distinctio nulla aut.\n \rAutem culpa nam aliquid beatae ea aut non. Nam explicabo expedita. Enim et sit beatae eos ex voluptatem voluptas eveniet excepturi. Vero sit laboriosam corrupti porro omnis asperiores eos fugiat eaque. Eos quaerat consequatur facere odit enim cupiditate.',9,'https://randomuser.me/api/portraits/men/63.jpg'),(18,'Gabrielle Sipes',3.8,3385,3146,'dolor itaque aut','Dignissimos reiciendis magni perspiciatis. Tenetur explicabo et enim quis laborum quibusdam quod. Quaerat doloremque ipsa voluptas. Molestiae facere labore. Consequatur ducimus voluptatum. Iste rerum qui molestias quaerat ipsa aliquam expedita et vel.\n \rQuasi labore qui. Ut facere autem numquam libero. Provident voluptatem quas minima aperiam odio ullam. Rerum pariatur tempora et velit et molestiae quod. Fuga voluptates et. Officia possimus vel.\n \rAut esse illo. Autem labore ut eius rerum labore. Sed libero ducimus. Nemo facilis tempora beatae laboriosam sint eveniet reprehenderit. Dicta culpa explicabo magni et.',7,'https://randomuser.me/api/portraits/men/21.jpg'),(19,'Marjory Stokes',1.9,6040,18997,'sunt perferendis sed','Deleniti sint voluptate error. At autem et eligendi et iure ratione. Voluptatum et neque et culpa nihil non. Officiis eum nam vero at et et quas.\n \rDoloribus eveniet et. Ea fuga atque tempore omnis rem quam. Velit aut vel aut molestias corrupti inventore ea quas. Dignissimos illum maiores officiis ex.\n \rDicta ut dolorem. Eos rerum molestiae autem pariatur delectus explicabo natus. Fugiat ullam laudantium facere sed fuga. Velit accusamus nulla. Ipsum alias quo minus voluptas occaecati. Aut quia repellendus iusto quisquam et.',8,'https://randomuser.me/api/portraits/women/10.jpg'),(20,'Clare Sipes',2.7,5643,42138,'ipsum laudantium impedit','Ex quo et repellendus accusamus odit. Ab quasi beatae reiciendis minus impedit voluptatem sunt laudantium et. Nihil earum quidem maiores. Odit et dolorem sunt facere.\n \rMinima impedit odit. Quos vel voluptatem ut consequuntur. Et voluptatem corrupti corporis pariatur. Quae repellendus soluta non et. Facilis dolor optio laudantium molestiae.\n \rAb quidem quod est qui dolores quasi eum ex. Aliquam est perferendis. Quia voluptatem veniam ipsa. Facilis omnis et tempore architecto est aut est iusto enim. Cum delectus ab accusamus.',12,'https://randomuser.me/api/portraits/men/74.jpg'),(21,'Yesenia Boyer',1.8,418,47865,'minima repudiandae laudantium','Officiis minima et. Et totam eum illum quia vitae saepe quisquam quaerat accusantium. Reiciendis sed ratione voluptas. Eveniet consequuntur mollitia reiciendis et dolores animi. Minus consequatur ut non.\n \rSed suscipit commodi amet et. Commodi explicabo ut iusto voluptatem. Quisquam debitis quasi aut vel rem animi ea. Qui ut possimus enim.\n \rTemporibus doloremque rerum voluptas. Consequatur sed molestias cumque laboriosam nesciunt voluptatem enim. Est libero ea voluptatem et. Blanditiis eum asperiores vitae optio facere unde ut explicabo autem.',2,'https://randomuser.me/api/portraits/men/8.jpg'),(22,'Oda Stamm',1.7,1670,6440,'aut eveniet at','Aut nobis voluptatem totam non veniam. Itaque qui nesciunt ratione molestias dolore dolor numquam eius odit. Repellat tempora voluptatum asperiores.\n \rPerferendis molestiae dolor id culpa est et pariatur quia labore. Cum ut dolor quo ducimus iure. Animi qui numquam et nihil quo. Temporibus illo cumque soluta dolorem corporis.\n \rNihil corrupti qui temporibus. Soluta repellendus nostrum rerum. Qui quia vero quidem similique. Distinctio perferendis totam qui dolorem.',5,'https://randomuser.me/api/portraits/women/34.jpg'),(23,'Ms. Kaleigh Lockman',2.2,1144,21497,'distinctio quisquam ut','Tempore maxime ea. Nobis consequatur quasi aperiam doloribus nobis repudiandae mollitia doloribus saepe. Nesciunt aut nam corrupti quo quos unde. Dolorem maiores qui quos explicabo soluta. Et laboriosam ipsum aut. Fugiat ut vel facilis neque ipsa architecto.\n \rNumquam maxime qui sed impedit dolore fuga magnam officiis nihil. Explicabo quos illo asperiores dignissimos. Eius odio corporis dolorem fugiat cum quidem ut quia eos. Explicabo sed vel cumque esse aut harum possimus laudantium est. Eaque velit ratione ullam excepturi.\n \rEt ab unde sed accusantium. Quis facilis asperiores fuga cupiditate quia ut ea corrupti quia. Dolore enim minima quisquam perferendis necessitatibus ut. Facilis voluptatem eos voluptatem.',3,'https://randomuser.me/api/portraits/women/78.jpg'),(24,'Ms. Verna Feest',2.4,2671,65179,'expedita ut excepturi','Sint similique ipsum doloremque neque officia sint eius sapiente molestiae. Tempora ex accusamus rerum fugit sit enim harum eum. Qui beatae et deserunt. Tenetur odit iste modi tempore est. Sint dolor necessitatibus saepe laudantium autem et. Quia enim blanditiis soluta enim.\n \rQuam quia ea exercitationem sapiente sed sit quasi. Dolores quam in voluptas animi. Aliquam quo ut temporibus sit.\n \rVoluptate qui ut nostrum modi asperiores dolore quisquam sed ut. Hic dolores accusantium. Omnis ut laborum dolor et ut praesentium.',6,'https://randomuser.me/api/portraits/women/4.jpg'),(25,'Jannie Bogisich',1.8,3926,33032,'hic aut aut','Voluptatem ab nihil doloribus dolorem et. Qui a et sint sed. Dolores neque velit illo ea nemo. Alias commodi beatae et quo ea assumenda qui.\n \rEst unde neque non qui autem sit autem. Tempora quasi eligendi amet quam est iste eos distinctio. Quam hic id voluptate non fuga. Et labore ut placeat sint. Eveniet ratione aliquam voluptatem nostrum voluptate. Enim qui provident illum quae omnis aut ad odit.\n \rItaque exercitationem doloribus iusto. Quod dolor rerum nesciunt fugit eum velit. Fuga incidunt qui voluptatem id. Voluptas quo tenetur repellat ipsam consequuntur nihil minima maiores.',8,'https://randomuser.me/api/portraits/men/3.jpg'),(26,'Trycia Pollich',2.1,3116,54005,'non aut esse','Qui facilis culpa voluptatem voluptatem omnis ab sit et asperiores. Debitis quaerat sed at. Consequuntur ipsa quis voluptatem libero. Accusantium alias illo laudantium optio odio odio consequuntur aliquam quia. Qui animi labore error eos quia qui debitis sit.\n \rModi voluptatum eligendi. Soluta aut aut qui a voluptatem nihil sit. Placeat fugiat dolores. Commodi velit ducimus. Ducimus modi odit odio accusamus eos similique unde. Dolore et ut consequuntur occaecati commodi molestiae.\n \rMollitia quo eos quos explicabo blanditiis architecto commodi earum. Consequuntur odit ab neque nam voluptas. Quam ut provident debitis ut aliquam aut alias tempore. Sit animi veritatis laborum est consequatur et et nisi rerum. Necessitatibus occaecati quis.',4,'https://randomuser.me/api/portraits/women/49.jpg'),(27,'Rae Parker',3.5,4028,43006,'rerum maiores ullam','Quia similique aliquid neque. Consequatur sunt eos asperiores odio sequi debitis deleniti fugit ut. Mollitia cum ducimus molestiae voluptatum. Asperiores et qui excepturi voluptates assumenda adipisci dolore.\n \rArchitecto rerum dolorem inventore. Cum ex molestias ducimus. Accusantium maxime aut provident quia tenetur. Et voluptatibus qui et quas quo aliquid. Harum totam incidunt dolorem illo qui sint. Et et et distinctio est nihil iure laboriosam.\n \rAdipisci quas eos doloremque atque atque. Eos quia sit quia eligendi explicabo. Voluptatibus sunt similique.',6,'https://randomuser.me/api/portraits/men/75.jpg'),(28,'Stanton Sanford Jr.',3.1,4777,92810,'nihil magnam quia','Voluptatem et ipsum optio excepturi incidunt cumque mollitia. Aut illum dolorem esse expedita deleniti voluptatum corporis. Enim illo expedita eius qui perferendis eos tempore perspiciatis. Earum vel consequatur et adipisci aperiam reprehenderit alias iusto culpa.\n \rOccaecati ducimus molestias incidunt. Et in hic doloremque quis voluptates et et. Consequuntur odio fuga necessitatibus placeat mollitia quo et aspernatur vel. Eum sunt tenetur qui dicta aspernatur voluptatem voluptatum pariatur. Qui magnam non a omnis laudantium qui ut tenetur. Est quo est veritatis asperiores fugiat ut aut et sit.\n \rEnim quo deserunt. Tenetur consequuntur rem repudiandae voluptatem. Consequatur et veniam assumenda perspiciatis est architecto sunt omnis quaerat. Aut animi repellat maxime deleniti consequatur.',7,'https://randomuser.me/api/portraits/women/67.jpg'),(29,'Mrs. Mohamed Osinski',3.1,3845,27493,'asperiores quia repellat','Atque aut ratione deleniti velit error deserunt veniam quisquam. Ea voluptatem ipsam voluptatem voluptatem non. Omnis quasi officiis excepturi. Impedit omnis accusantium. Veniam sit consequatur illum.\n \rEa dignissimos possimus autem facere dolore aut hic. Eum eaque sed sequi. Aliquam est qui. Facere ex totam explicabo doloremque blanditiis aperiam est. Vitae quasi ex eaque veritatis enim vel repellendus at.\n \rAtque dolore dolorem nihil dolor sed omnis et nihil. Ratione dolores voluptatibus totam ut corporis. Nemo ut asperiores itaque ipsam eveniet maxime.',9,'https://randomuser.me/api/portraits/women/75.jpg'),(30,'Josephine McDermott',3.4,4288,85386,'porro facere ea','Natus adipisci doloribus vel dolores. Incidunt fugit molestiae nobis. Provident voluptas quisquam dolorem nemo architecto et iure. Recusandae eaque magnam ipsa laudantium incidunt velit nulla sunt. Et laudantium fuga deserunt vel.\n \rAssumenda quis saepe sit. Eveniet id laudantium architecto. Molestiae expedita tenetur voluptate dolorum dolorem pariatur quam repudiandae. Sint dolore voluptas sint qui esse. Voluptatem autem non iusto et est.\n \rInventore architecto sed recusandae necessitatibus dicta ut ut a. Perspiciatis reiciendis ducimus. Quo eum id voluptatem. Eaque expedita perferendis dolorem consectetur dolore. Eaque ratione unde.',7,'https://randomuser.me/api/portraits/men/10.jpg');
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joins`
--

DROP TABLE IF EXISTS `joins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(6) DEFAULT NULL,
  `inst_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `inst_id` (`inst_id`),
  CONSTRAINT `joins_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `joins_ibfk_2` FOREIGN KEY (`inst_id`) REFERENCES `instructors` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joins`
--

LOCK TABLES `joins` WRITE;
/*!40000 ALTER TABLE `joins` DISABLE KEYS */;
INSERT INTO `joins` VALUES (1,1,25),(2,1,5),(3,2,3),(4,2,14),(5,3,28),(6,4,24),(7,4,17),(8,5,11),(9,5,5),(10,5,18),(11,6,10),(12,6,22),(13,6,20),(14,7,1),(15,7,22),(16,7,10),(17,8,24),(18,8,29),(19,8,27),(20,9,27),(21,10,20),(22,10,29),(23,10,23),(24,11,15),(25,11,23),(26,11,6),(27,12,13),(28,12,29),(29,12,6),(30,13,29),(31,13,14),(32,13,25),(33,14,8),(34,14,29),(35,14,3),(36,15,17),(37,16,20),(38,16,17),(39,16,4),(40,17,18),(41,18,21),(42,18,11),(43,18,22),(44,19,15),(45,19,29),(46,19,13),(47,20,2),(48,20,18),(49,21,10),(50,22,19),(51,22,25),(52,23,6),(53,23,28),(54,23,20),(55,24,4),(56,25,25),(57,26,5),(58,27,1),(59,27,23),(60,27,22),(61,28,27),(62,29,14),(63,30,27),(64,30,11),(65,30,16),(66,31,3),(67,32,11),(68,33,24),(69,34,28),(70,34,8),(71,34,2),(72,35,1),(73,35,21),(74,35,4),(75,36,19),(76,36,14),(77,36,13),(78,37,9),(79,38,6),(80,38,24),(81,38,18),(82,39,25),(83,40,17),(84,41,20),(85,42,11),(86,42,28),(87,42,30),(88,43,7),(89,43,30),(90,43,4),(91,44,25),(92,45,17),(93,45,28),(94,45,5),(95,46,4),(96,46,26),(97,47,16),(98,47,24),(99,48,7),(100,48,16),(101,49,11),(102,49,8),(103,50,11),(104,51,5),(105,51,22),(106,52,27),(107,52,3),(108,53,19),(109,54,5),(110,54,20),(111,55,20),(112,56,30),(113,57,16),(114,57,9),(115,58,4),(116,58,19),(117,58,15),(118,59,7),(119,59,12),(120,59,2),(121,60,8),(122,60,6),(123,60,25),(124,61,20),(125,61,10),(126,62,6),(127,62,14),(128,63,30),(129,63,19),(130,64,18),(131,64,11),(132,65,17),(133,66,20),(134,67,20),(135,68,6),(136,68,8),(137,68,10),(138,69,26),(139,70,16),(140,71,5),(141,72,17),(142,72,10),(143,72,18),(144,73,5),(145,74,7),(146,74,1),(147,75,13),(148,76,10),(149,76,15),(150,77,14),(151,78,29),(152,79,15),(153,79,3),(154,80,19),(155,80,26),(156,80,17),(157,81,14),(158,81,10),(159,81,15),(160,82,16),(161,82,17),(162,83,13),(163,83,15),(164,83,18),(165,84,15),(166,84,9),(167,84,6),(168,85,2),(169,85,1),(170,86,12),(171,87,5),(172,88,19),(173,88,9),(174,88,3),(175,89,30),(176,89,27),(177,89,9),(178,90,29),(179,91,28),(180,92,25),(181,92,10),(182,92,24),(183,93,7),(184,94,2),(185,94,20),(186,95,19),(187,95,20),(188,95,30),(189,96,4),(190,97,11),(191,97,30),(192,98,5),(193,99,28),(194,99,29),(195,100,26),(196,100,6),(197,100,16);
/*!40000 ALTER TABLE `joins` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-07 21:04:33
