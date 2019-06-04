# source: https://www.kaggle.com/competitions
# accessed june 4, 2019

library(tidyverse)
library(here)
kaggle <- tribble(
  ~txt,
  "Two Sigma: Using News to Predict Stock Movements\n\nUse news analytics to predict stock price performance\n\nFeatured\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\na month to go\n news agencies, time series, finance, money\n\n$100,000\n\n2,927 teams",
  "Jigsaw Unintended Bias in Toxicity Classification\n\nDetect toxicity across a diverse range of conversations\n\nFeatured\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n22 days to go\n nlp, biases, text data\n\n$65,000\n\n2,509 teams",
  "Predicting Molecular Properties\n\nCan you measure the magnetic interactions between a pair of atoms?\n\nFeatured\n3 months to go\n tabular data, chemistry, regression\n\n$30,000\n\n433 teams",
  
  "Open Images 2019 - Object Detection\n\nDetect objects in varied and complex images\n\nResearch\n4 months to go\n image data, image processing\n\n$25,000\n\n21 teams",
  
  "Open Images 2019 - Visual Relationship\n\nDetect pairs of objects in particular relationships\n\nResearch\n4 months to go\n image processing, image data\n\n$25,000\n\n16 teams",
  
  "Data Science for Good: City of Los Angeles\n\nHelp the City of Los Angeles to structure and analyze its job descriptions\n\nAnalytics\n17 days to go\n image data, text data, employment, nlp\n\n$15,000",
  
  "Instant Gratification\n\nA synchronous Kernels-only competition\n\nFeatured\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n16 days to go\n binary classification, tabular data\n\n$5,000\n\n1,059 teams",
  
  "Freesound Audio Tagging 2019\n\nAutomatically recognize sounds and apply tags of varying natures\n\nResearch\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n6 days to go\n sound technology, audio data\n\n$5,000\n\n803 teams",
  
  "Digit Recognizer\n\nLearn computer vision fundamentals with the famous MNIST data\n\nGetting Started\nOngoing\n object identification, tabular data, multiclass classification, image data\n\nKnowledge\n\n3,115 teams",
  
  "Titanic: Machine Learning from Disaster\n\nStart here! Predict survival on the Titanic and get familiar with ML basics\n\nGetting Started\nOngoing\n binary classification, tabular data, tutorial\n\nKnowledge\n\n11,128 teams",
  
  "House Prices: Advanced Regression Techniques\n\nPredict sales prices and practice feature engineering, RFs, and gradient boosting\n\nGetting Started\nOngoing\n tabular data, regression\n\nKnowledge\n\n4,674 teams",
  
  "ImageNet Object Localization Challenge\n\nIdentify the objects in images\n\nResearch\n11 years to go\n object detection, image data\n\nKnowledge\n\n38 teams",
  
  "Predict Future Sales\n\nFinal project for \"How to win a data science competition\" Coursera course\n\nPlayground\n7 months to go\n\nKudos\n\n3,281 teams",
  
  "iMaterialist (Fashion) 2019 at FGVC6\n\nFine-grained segmentation task for fashion and apparel\n\nResearch\n6 days to go\n\nKudos\n\n203 teams",
  
  "iNaturalist 2019 at FGVC6\n\nFine-grained classification spanning a thousand species\n\nResearch\n6 days to go\n\nKudos\n\n209 teams",
  
  "iWildCam 2019 - FGVC6\n\nCategorize animals in the wild\n\nPlayground\n3 days to go\n image data, multiclass classification\n\nKudos\n\n331 teams",
  
  "iMet Collection 2019 - FGVC6\n\nRecognize artwork attributes from The Metropolitan Museum of Art\n\nResearch\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n9 hours to go\n image data, visual arts, painting\n\nKudos\n\n511 teams",
  
  "Northeastern SMILE Lab - Recognizing Faces in the Wild\n\nCan you determine if two individuals are related?\n\nPlayground\n2 months to go\n relationships, image data\n\nKnowledge\n\n232 teams",
  
  "Aerial Cactus Identification\n\nDetermine whether an image contains a columnar cactus\n\nPlayground\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\na month to go\n image data, nature, plants\n\nKnowledge\n\n747 teams",
  
  "LANL Earthquake Prediction\n\nCan you predict upcoming laboratory earthquakes?\n\nResearch\n15 hours ago\n earth sciences, physics, signal processing\n\n$50,000\n\n4,541 teams",
  
  "Google Landmark Recognition 2019\n\nLabel famous (and not-so-famous) landmarks in images\n\nResearch\n15 hours ago\n\n$25,000\n\n281 teams",
  
  "Google Landmark Retrieval 2019\n\nGiven an image, can you find all of the same landmarks in a dataset?\n\nResearch\n15 hours ago\n\n$25,000\n\n144 teams",
  
  "TMDB Box Office Prediction\n\nCan you predict a movie's worldwide box office revenue?\n\nPlayground\n5 days ago\n tabular data, film\n\nKnowledge\n\n1,400 teams",
  
  "Don't Overfit! II\n\nA Fistful of Samples\n\nPlayground\na month ago\n tabular data, binary classification\n\nSwag\n\n2,330 teams",
  
  "Ciphertext Challenge II\n\n553398 418126 467884 411 374106 551004 356535 539549 487091 290502 121468 556912 469347 515719 201909 101\n\nPlayground\na month ago\n text data, internet\n\nSwag\n\n75 teams",
  
  "Data Science for Good: CareerVillage.org\n\nMatch career advice questions with professionals in the field\n\nAnalytics\na month ago\n children, education\n\n$15,000",
  
  "Gendered Pronoun Resolution\n\nPair pronouns to their correct entities\n\nResearch\na month ago\n text data, nlp\n\n$25,000\n\n838 teams",
  
  "CareerCon 2019 - Help Navigate Robots\n\nCompete to get your resume in front of our sponsors\n\nRecruitment\n2 months ago\n tabular data, signal processing, robotics\n\nSwag\n\n1,449 teams",
  
  "Santander Customer Transaction Prediction\n\nCan you identify who will make a transaction?\n\nFeatured\n2 months ago\n banking, tabular data, binary classification\n\n$65,000\n\n8,802 teams",
  
  "PetFinder.my Adoption Prediction\n\nHow cute is that doggy in the shelter?\n\nFeatured\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n2 months ago\n image data, text data\n\n$25,000\n\n2,023 teams",
  
  "Google Cloud & NCAA® ML Competition 2019-Men's\n\nApply Machine Learning to NCAA® March Madness®\n\nFeatured\n2 months ago\n basketball, sports\n\n$25,000\n\n866 teams",
  
  "Google Cloud & NCAA® ML Competition 2019-Women's\n\nApply Machine Learning to NCAA® March Madness®\n\nFeatured\n2 months ago\n basketball, sports\n\n$25,000\n\n500 teams",
  
  "Histopathologic Cancer Detection\n\nIdentify metastatic tissue in histopathologic scans of lymph node sections\n\nPlayground\n2 months ago\n oncology and cancer, research, medicine\n\nKnowledge\n\n1,157 teams",
  
  "VSB Power Line Fault Detection\n\nCan you detect faults in above-ground electrical lines?\n\nFeatured\n2 months ago\n signal processing, tabular data, binary classification\n\n$25,000\n\n1,451 teams",
  
  "Microsoft Malware Prediction\n\nCan you predict if a machine will soon be hit with malware?\n\nResearch\n3 months ago\n\n$25,000\n\n2,426 teams",
  
  "Humpback Whale Identification\n\nCan you identify a whale by its tail?\n\nFeatured\n3 months ago\n image data, animals\n\n$25,000\n\n2,131 teams",
  
  "Elo Merchant Category Recommendation\n\nHelp understand customer loyalty\n\nFeatured\n3 months ago\n banking, tabular data, regression\n\n$50,000\n\n4,129 teams",
  
  "Google Analytics Customer Revenue Prediction\n\nPredict how much GStore customers will spend\n\nFeatured\n3 months ago\n regression, tabular data\n\n$45,000\n\n3,611 teams",
  
  "Quora Insincere Questions Classification\n\nDetect toxic content to improve online conversations\n\nFeatured\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n4 months ago\n text data, binary classification\n\n$25,000\n\n4,037 teams",
  
  "Reducing Commercial Aviation Fatalities\n\nCan you tell when a pilot is heading for trouble?\n\nPlayground\n4 months ago\n\nSwag\n\n180 teams",
  
  "PUBG Finish Placement Prediction (Kernels Only)\n\nCan you predict the battle royale finish of PUBG Players?\n\nPlayground\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n4 months ago\n video games, tabular data\n\nSwag\n\n1,534 teams",
  
  "20 Newsgroups Ciphertext Challenge\n\nV8g{9827\u000c$A${?^*?}$$v7\u0010*.yig$w9.8}\n\nPlayground\n5 months ago\n text data, multiclass classification\n\nSwag\n\n142 teams",
  
  "Human Protein Atlas Image Classification\n\nClassify subcellular protein patterns in human cells\n\nFeatured\n5 months ago\n classification, image data\n\n$37,000\n\n2,172 teams",
  
  "Traveling Santa 2018 - Prime Paths\n\nBut does your code recall, the most efficient route of all?\n\nFeatured\n5 months ago\n mathematical optimization, optimization\n\n$25,000\n\n1,874 teams",
  
  "NFL Punt Analytics Competition\n\nAnalyze NFL game data and suggest rules to improve player safety during punt plays\n\nAnalytics\n5 months ago\n health, american football, sports, safety\n\n$80,000",
  
  "PLAsTiCC Astronomical Classification\n\nCan you help make sense of the Universe?\n\nFeatured\n6 months ago\n time series, astronomy, tabular data\n\n$25,000\n\n1,094 teams",
  
  "Quick, Draw! Doodle Recognition Challenge\n\nHow accurately can you identify a doodle?\n\nFeatured\n6 months ago\n writing, image data\n\n$25,000\n\n1,316 teams",
  
  "Don't call me turkey!\n\nThanksgiving Edition: Find the turkey in the sound bite\n\nPlayground\n6 months ago\n binary classification, sound technology, tabular data, animals\n\nSwag\n\n267 teams",
  
  "Airbus Ship Detection Challenge\n\nFind ships on satellite images as quickly as possible\n\nFeatured\n7 months ago\n image data, object detection, object segmentation\n\n$60,000\n\n883 teams",
  
  "Inclusive Images Challenge\n\nStress test image classifiers across new geographic distributions\n\nResearch\n7 months ago\n image data, multiclass classification\n\n$25,000\n\n468 teams",
  
  "RSNA Pneumonia Detection Challenge\n\nCan you build an algorithm that automatically detects potential pneumonia cases?\n\nFeatured\n7 months ago\n image data, medicine\n\n$30,000\n\n1,499 teams",
  
  "TGS Salt Identification Challenge\n\nSegment salt deposits beneath the Earth's surface\n\nFeatured\n8 months ago\n image data, geology\n\n$100,000\n\n3,234 teams",
  
  "New York City Taxi Fare Prediction\n\nCan you predict a rider's taxi fare?\n\nPlayground\n8 months ago\n tabular data, regression\n\nKnowledge\n\n1,488 teams",
  
  "Forest Cover Type (Kernels Only)\n\nUse cartographic variables to classify forest categories\n\nPlayground\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n8 months ago\n ecology, forestry, tabular data\n\nKnowledge\n\n359 teams",
  
  "Store Item Demand Forecasting Challenge\n\nPredict 3 months of item sales at different stores\n\nPlayground\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n8 months ago\n time series, tabular data\n\nKnowledge\n\n462 teams",
  
  "What's Cooking? (Kernels Only)\n\nUse recipe ingredients to categorize the cuisine\n\nPlayground\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n8 months ago\n text data, food and drink, multiclass classification\n\nKnowledge\n\n523 teams",
  
  "Flavours of Physics: Finding τ → μμμ (Kernels Only)\n\nIdentify a rare decay phenomenon\n\nPlayground\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n8 months ago\n\nKnowledge\n\n64 teams",
  
  "Movie Review Sentiment Analysis (Kernels Only)\n\nClassify the sentiment of sentences from the Rotten Tomatoes dataset\n\nPlayground\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n8 months ago\n multiclass classification, text data\n\nKnowledge\n\n410 teams",
  
  "Costa Rican Household Poverty Level Prediction\n\nCan you identify which households have the highest need for social welfare assistance?\n\nPlayground\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n9 months ago\n tabular data, multiclass classification\n\nSwag\n\n619 teams",
  
  "Google AI Open Images - Object Detection Track\n\nDetect objects in varied and complex images.\n\nFeatured\n9 months ago\n\n$30,000\n\n454 teams",
  
  "Google AI Open Images - Visual Relationship Track\n\nDetect pairs of objects in particular relationships.\n\nFeatured\n9 months ago\n\n$20,000\n\n232 teams",
  
  "Home Credit Default Risk\n\nCan you predict how capable each applicant is of repaying a loan?\n\nFeatured\n9 months ago\n home, banking, tabular data\n\n$70,000\n\n7,198 teams",
  
  "Santander Value Prediction Challenge\n\nPredict the value of transactions for potential customers.\n\nFeatured\n9 months ago\n finance, banking\n\n$60,000\n\n4,484 teams",
  
  "TrackML Particle Tracking Challenge\n\nHigh Energy Physics particle tracking in CERN detectors\n\nFeatured\n10 months ago\n physics, tabular data\n\n$25,000\n\n653 teams",
  
  "The 2nd YouTube-8M Video Understanding Challenge\n\nCan you create a constrained-size model to predict video labels?\n\nFeatured\n10 months ago\n video data, object labeling\n\n$25,000\n\n312 teams",
  
  "Freesound General-Purpose Audio Tagging Challenge\n\nCan you automatically recognize sounds from a wide range of real-world environments?\n\nResearch\n10 months ago\n sound technology\n\nKnowledge\n\n558 teams",
  
  "Humpback Whale Identification Challenge\n\nCan you identify a whale by the picture of its fluke?\n\nPlayground\na year ago\n image data, animals\n\nKudos\n\n528 teams",
  
  "Avito Demand Prediction Challenge\n\nPredict demand for an online classified ad\n\nFeatured\na year ago\n tabular data, image data, text data\n\n$25,000\n\n1,873 teams",
  
  "CVPR 2018 WAD Video Segmentation Challenge\n\nCan you segment each objects within image frames captured by vehicles?\n\nResearch\na year ago\n\n$2,500\n\n141 teams",
  
  "iNaturalist Challenge at FGVC5\n\nLong tailed classification challenge spanning 8,000 species.\n\nResearch\na year ago\n\nKudos\n\n59 teams",
  
  "iMaterialist Challenge (Fashion) at FGVC5\n\nImage classification of fashion products.\n\nResearch\na year ago\n\n$2,500\n\n212 teams",
  
  "iMaterialist Challenge (Furniture) at FGVC5\n\nImage Classification of Furniture & Home Goods.\n\nResearch\na year ago\n\n$2,500\n\n428 teams",
  
  "Google Landmark Recognition Challenge\n\nLabel famous (and not-so-famous) landmarks in images\n\nResearch\na year ago\n image data\n\n$2,500\n\n477 teams",
  
  "Google Landmark Retrieval Challenge\n\nGiven an image, can you find all of the same landmarks in a dataset?\n\nResearch\na year ago\n image data\n\n$2,500\n\n209 teams",
  
  "TalkingData AdTracking Fraud Detection Challenge\n\nCan you detect fraudulent click traffic for mobile app ads?\n\nFeatured\na year ago\n\n$25,000\n\n3,951 teams",
  
  "DonorsChoose.org Application Screening\n\nPredict whether teachers' project proposals are accepted\n\nPlayground\na year ago\n binary classification, crowdfunding\n\nSwag\n\n581 teams",
  
  "2018 Data Science Bowl\n\nFind the nuclei in divergent images to advance medical discovery\n\nFeatured\na year ago\n biology\n\n$100,000\n\n3,634 teams",
  
  "Google Cloud & NCAA® ML Competition 2018-Men's\n\nApply Machine Learning to NCAA® March Madness®\n\nFeatured\na year ago\n basketball\n\n$50,000\n\n934 teams",
  
  "Google Cloud & NCAA® ML Competition 2018-Women's\n\nApply machine learning to NCAA® March Madness®\n\nFeatured\na year ago\n\n$50,000\n\n505 teams",
  
  "Toxic Comment Classification Challenge\n\nIdentify and classify toxic online comments\n\nFeatured\na year ago\n arguments, text data\n\n$35,000\n\n4,551 teams",
  
  "Plant Seedlings Classification\n\nDetermine the species of a seedling from an image\n\nPlayground\na year ago\n image data, multiclass classification, plants\n\nKudos\n\n836 teams",
  
  "Dog Breed Identification\n\nDetermine the breed of a dog in an image\n\nPlayground\na year ago\n animals, multiclass classification, image data, object identification\n\nKudos\n\n1,286 teams",
  
  "Mercari Price Suggestion Challenge\n\nCan you automatically suggest product prices to online sellers?\n\nFeatured\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\na year ago\n\n$100,000\n\n2,384 teams",
  
  "Nomad2018 Predicting Transparent Conductors\n\nPredict the key properties of novel transparent semiconductors\n\nResearch\na year ago\n chemistry, semiconductors\n\n€5,000\n\n883 teams",
  
  "IEEE's Signal Processing Society - Camera Model Identification\n\nIdentify from which camera an image was taken\n\nFeatured\na year ago\n image data\n\n$25,000\n\n582 teams",
  
  "Recruit Restaurant Visitor Forecasting\n\nPredict how many future visitors a restaurant will receive\n\nFeatured\na year ago\n\n$25,000\n\n2,158 teams",
  
  "Statoil/C-CORE Iceberg Classifier Challenge\n\nShip or iceberg, can you decide from space?\n\nFeatured\na year ago\n image data, binary classification, shipping, weather\n\n$50,000\n\n3,343 teams",
  
  "TensorFlow Speech Recognition Challenge\n\nCan you build an algorithm that understands simple speech commands?\n\nFeatured\na year ago\n\n$25,000\n\n1,315 teams",
  
  "Corporación Favorita Grocery Sales Forecasting\n\nCan you accurately predict sales for a large grocery chain?\n\nFeatured\na year ago\n food and drink, tabular data, regression, future prediction\n\n$30,000\n\n1,675 teams",
  
  "Santa Gift Matching Challenge\n\nDown through the chimney with lots of toys...\n\nFeatured\na year ago\n mathematical optimization\n\n$25,000\n\n428 teams",
  
  "Zillow Prize: Zillow’s Home Value Prediction (Zestimate)\n\nCan you improve the algorithm that changed the world of real estate?\n\nFeatured\na year ago\n real estate, housing\n\n$1,200,000\n\n3,779 teams",
  
  "WSDM - KKBox's Music Recommendation Challenge\n\nCan you build the best music recommendation system?\n\nResearch\na year ago\n\n$5,000\n\n1,081 teams",
  
  "WSDM - KKBox's Churn Prediction Challenge\n\nCan you predict when subscribers will churn?\n\nResearch\na year ago\n binary classification\n\n$5,000\n\n575 teams",
  
  "Passenger Screening Algorithm Challenge\n\nImprove the accuracy of the Department of Homeland Security's threat recognition algorithms\n\nFeatured\na year ago\n image data, terrorism, object detection\n\n$1,500,000\n\n518 teams",
  
  "Spooky Author Identification\n\nShare code and discuss insights to identify horror authors from their writings\n\nPlayground\na year ago\n literature, multiclass classification, linguistics\n\n$25,000\n\n1,244 teams",
  
  "Cdiscount’s Image Classification Challenge\n\nCategorize e-commerce photos\n\nFeatured\na year ago\n multiclass classification\n\n$35,000\n\n627 teams",
  
  "Porto Seguro’s Safe Driver Prediction\n\nPredict if a driver will file an insurance claim next year.\n\nFeatured\n2 years ago\n binary classification, tabular data\n\n$25,000\n\n5,169 teams",
  
  "Text Normalization Challenge - English Language\n\nConvert English text from written expressions into spoken forms\n\nResearch\n2 years ago\n languages, linguistics, text data\n\n$25,000\n\n260 teams",
  
  "Text Normalization Challenge - Russian Language\n\nConvert Russian text from written expressions into spoken forms\n\nResearch\n2 years ago\n text data, languages, linguistics\n\n$25,000\n\n162 teams",
  
  "Web Traffic Time Series Forecasting\n\nForecast future traffic to Wikipedia pages\n\nResearch\n2 years ago\n time series, internet, tabular data, future prediction\n\n$25,000\n\n1,095 teams",
  
  "Personalized Medicine: Redefining Cancer Treatment\n\nPredict the effect of Genetic Variants to enable Personalized Medicine\n\nResearch\n2 years ago\n multiclass classification, text data, health sciences, human genetics\n\n$15,000\n\n1,386 teams",
  
  "NIPS 2017: Non-targeted Adversarial Attack\n\nImperceptibly transform images in ways that fool classification models\n\nResearch\n2 years ago\n image data, adversarial learning\n\nSwag\n\n91 teams",
  
  "NIPS 2017: Targeted Adversarial Attack\n\nDevelop an adversarial attack that causes image classifiers to predict a specific target class\n\nResearch\n2 years ago\n adversarial learning, image data\n\nSwag\n\n65 teams",
  
  "NIPS 2017: Defense Against Adversarial Attack\n\nCreate an image classifier that is robust to adversarial attacks\n\nResearch\n2 years ago\n adversarial learning, image data\n\nSwag\n\n107 teams",
  
  "Carvana Image Masking Challenge\n\nAutomatically identify the boundaries of the car in an image\n\nFeatured\n2 years ago\n image data, automobiles, object segmentation\n\n$25,000\n\n735 teams",
  
  "New York City Taxi Trip Duration\n\nShare code and data to improve ride time predictions\n\nPlayground\n2 years ago\n regression, taxi services, tabular data\n\n$30,000\n\n1,257 teams",
  
  "Invasive Species Monitoring\n\nIdentify images of invasive hydrangea\n\nPlayground\n2 years ago\n plants, image data, object detection\n\nKnowledge\n\n513 teams",
  
  "Instacart Market Basket Analysis\n\nWhich products will an Instacart consumer purchase again?\n\nFeatured\n2 years ago\n market basket, food and drink\n\n$25,000\n\n2,623 teams",
  
  "Planet: Understanding the Amazon from Space\n\nUse satellite data to track the human footprint in the Amazon rainforest\n\nFeatured\n2 years ago\n ecology, forestry, object identification, image data\n\n$60,000\n\n938 teams",
  
  "Mercedes-Benz Greener Manufacturing\n\nCan you cut the time a Mercedes-Benz spends on the test bench?\n\nFeatured\n2 years ago\n regression, tabular data, automobiles\n\n$25,000\n\n3,835 teams",
  
  "iNaturalist Challenge at FGVC 2017\n\nFine-grained classification challenge spanning 5,000 species.\n\nResearch\n2 years ago\n animals, plants, object identification, image data\n\nKnowledge\n\n50 teams",
  
  "iMaterialist Challenge at FGVC 2017\n\nCan you assign accurate description labels to images of apparel products?\n\nResearch\n2 years ago\n object labeling, clothing, image data\n\nKnowledge\n\n28 teams",
  
  "Sberbank Russian Housing Market\n\nCan you predict realty price fluctuations in Russia’s volatile economy?\n\nFeatured\n2 years ago\n tabular data, housing, banking, regression\n\n$25,000\n\n3,274 teams",
  
  "NOAA Fisheries Steller Sea Lion Population Count\n\nHow many sea lions do you see?\n\nFeatured\n2 years ago\n counting, oceanography, animals, image data\n\n$25,000\n\n385 teams",
  
  "Intel & MobileODT Cervical Cancer Screening\n\nWhich cancer treatment will be most effective?\n\nFeatured\n2 years ago\n image data, healthcare, multiclass classification, object identification\n\n$100,000\n\n848 teams",
  
  "Quora Question Pairs\n\nCan you identify question pairs that have the same intent?\n\nFeatured\n2 years ago\n text data, duplicate detection, linguistics, internet, tabular data\n\n$25,000\n\n3,307 teams",
  
  "Google Cloud & YouTube-8M Video Understanding Challenge\n\nCan you produce the best video tag predictions?\n\nFeatured\n2 years ago\n image data, internet, object labeling\n\n$100,000\n\n655 teams",
  
  "Two Sigma Connect: Rental Listing Inquiries\n\nHow much interest will a new rental listing on RentHop receive?\n\nRecruitment\n2 years ago\n multiclass classification, text data, housing, tabular data\n\nJobs\n\n2,488 teams",
  
  "The Nature Conservancy Fisheries Monitoring\n\nCan you detect and classify species of fish?\n\nFeatured\n2 years ago\n image data, fishing, multiclass classification, object detection\n\n$150,000\n\n2,293 teams",
  
  "Data Science Bowl 2017\n\nCan you improve lung cancer detection?\n\nFeatured\n2 years ago\n healthcare, image data, binary classification\n\n$1,000,000\n\n1,972 teams",
  
  "March Machine Learning Mania 2017\n\nPredict the 2017 NCAA Basketball Tournament\n\nPlayground\n2 years ago\n future prediction, basketball, sports\n\nSwag\n\n442 teams",
  
  "Transfer Learning on Stack Exchange Tags\n\nPredict tags from models trained on unrelated topics\n\nPlayground\n2 years ago\n text data, tabular data, multiclass classification\n\nKnowledge\n\n380 teams",
  
  "Dstl Satellite Imagery Feature Detection\n\nCan you train an eye in the sky?\n\nFeatured\n2 years ago\n multiclass classification, object segmentation, image data\n\n$100,000\n\n419 teams",
  
  "Dogs vs. Cats Redux: Kernels Edition\n\nDistinguish images of dogs from cats\n\nPlayground\n2 years ago\n image data, animals, object identification, binary classification\n\nKnowledge\n\n1,314 teams",
  
  "Two Sigma Financial Modeling Challenge\n\nCan you uncover predictive value in an uncertain world?\n\nFeatured\nKernels Competition\nSubmission is through Kaggle Kernels.Learn more.\n2 years ago\n future prediction, finance\n\n$100,000\n\n2,070 teams",
  
  "Leaf Classification\n\nCan you see the random forest for the leaves?\n\nPlayground\n2 years ago\n image data, object identification, multiclass classification\n\nKnowledge\n\n1,598 teams",
  
  "Santa's Uncertain Bags\n\n♫ Bells are ringing, children singing, all is merry and bright. Santa's elves made a big mistake, now he needs your help tonight ♫\n\nPlayground\n2 years ago\n mathematical optimization, tabular data\n\nSwag\n\n694 teams",
  
  "Outbrain Click Prediction\n\nCan you predict which recommended content each user will click?\n\nFeatured\n2 years ago\n tabular data, internet, click prediction\n\n$25,000\n\n979 teams",
  
  "Facial Keypoints Detection\n\nDetect the location of keypoints on face images\n\nGetting Started\n2 years ago\n object labeling, image data\n\nKnowledge\n\n175 teams",
  
  "First Steps With Julia\n\nUse Julia to identify characters from Google Street View images\n\nGetting Started\n2 years ago\n image data, object identification\n\nKnowledge\n\n56 teams",
  
  "Santander Product Recommendation\n\nCan you pair products with people?\n\nFeatured\n2 years ago\n multiclass classification, tabular data, banking\n\n$60,000\n\n1,787 teams",
  
  "Allstate Claims Severity\n\nHow severe is an insurance claim?\n\nRecruitment\n2 years ago\n tabular data, regression\n\nJobs\n\n3,055 teams",
  
  "Melbourne University AES/MathWorks/NIH Seizure Prediction\n\nPredict seizures in long-term human intracranial EEG recordings\n\nResearch\n3 years ago\n signal data, healthcare, diseases\n\n$20,000\n\n478 teams",
  
  "Ghouls, Goblins, and Ghosts... Boo!\n\nCan you classify monsters haunting Kaggle?\n\nPlayground\n3 years ago\n tabular data, multiclass classification\n\nKnowledge\n\n764 teams",
  
  "Bosch Production Line Performance\n\nReduce manufacturing failures\n\nFeatured\n3 years ago\n binary classification, manufacturing, tabular data\n\n$30,000\n\n1,373 teams",
  
  "Painter by Numbers\n\nDoes every painter leave a fingerprint?\n\nPlayground\n3 years ago\n painting, image data, duplicate detection, object recognition\n\nKnowledge\n\n41 teams",
  
  "Integer Sequence Learning\n\n1, 2, 3, 4, 5, 7?!\n\nPlayground\n3 years ago\n tabular data, mathematics, numbers\n\nKnowledge\n\n286 teams",
  
  "Predicting Red Hat Business Value\n\nClassify customer potential\n\nFeatured\n3 years ago\n business, tabular data\n\n$50,000\n\n2,271 teams",
  
  "TalkingData Mobile User Demographics\n\nGet to know millions of mobile device users\n\nFeatured\n3 years ago\n mobile web, tabular data, demographics, multiclass classification\n\n$25,000\n\n1,689 teams",
  
  "Grupo Bimbo Inventory Demand\n\nMaximize sales and minimize returns of bakery goods\n\nFeatured\n3 years ago\n food and drink, tabular data, future prediction\n\n$25,000\n\n1,969 teams",
  
  "Ultrasound Nerve Segmentation\n\nIdentify nerve structures in ultrasound images of the neck\n\nFeatured\n3 years ago\n object segmentation, image data, healthcare, health sciences\n\n$100,000\n\n923 teams",
  
  "State Farm Distracted Driver Detection\n\nCan computer vision spot distracted drivers?\n\nFeatured\n3 years ago\n automobiles, image data, object recognition\n\n$65,000\n\n1,440 teams",
  
  "Shelter Animal Outcomes\n\nHelp improve outcomes for shelter animals\n\nPlayground\n3 years ago\n multiclass classification, tabular data, animals\n\nKnowledge\n\n1,604 teams",
  
  "Avito Duplicate Ads Detection\n\nCan you detect duplicitous duplicate ads?\n\nFeatured\n3 years ago\n internet, duplicate detection\n\n$20,000\n\n548 teams",
  
  "Facebook V: Predicting Check Ins\n\nIdentify the correct place for check ins\n\nRecruitment\n3 years ago\n multiclass classification, internet, tabular data, geography\n\nJobs\n\n1,212 teams",
  
  "Draper Satellite Image Chronology\n\nCan you put order to space and time?\n\nFeatured\n3 years ago\n timelines, ranking, image data\n\n$75,000\n\n401 teams",
  
  "Kobe Bryant Shot Selection\n\nWhich shots did Kobe sink?\n\nPlayground\n3 years ago\n binary classification, basketball, tabular data\n\nKnowledge\n\n1,117 teams",
  
  "Expedia Hotel Recommendations\n\nWhich hotel type will an Expedia customer book?\n\nFeatured\n3 years ago\n hotels, tabular data, recommendation\n\n$25,000\n\n1,974 teams",
  
  "San Francisco Crime Classification\n\nPredict the category of crimes that occurred in the city by the bay\n\nPlayground\n3 years ago\n multiclass classification, crime, tabular data\n\nKnowledge\n\n2,335 teams",
  
  "Santander Customer Satisfaction\n\nWhich customers are happy customers?\n\nFeatured\n3 years ago\n tabular data, banking, binary classification\n\n$60,000\n\n5,123 teams",
  
  "Home Depot Product Search Relevance\n\nPredict the relevance of search results on homedepot.com\n\nFeatured\n3 years ago\n ranking, tabular data\n\n$40,000\n\n2,125 teams",
  
  "BNP Paribas Cardif Claims Management\n\nCan you accelerate BNP Paribas Cardif's claims management process?\n\nFeatured\n3 years ago\n tabular data, banking, binary classification\n\n$30,000\n\n2,926 teams",
  
  "Yelp Restaurant Photo Classification\n\nPredict attribute labels for restaurants using user-submitted photos\n\nRecruitment\n3 years ago\n image data, object labeling, food and drink, internet\n\nJobs\n\n355 teams",
  
  "March Machine Learning Mania 2016\n\nPredict the 2016 NCAA Basketball Tournament\n\nFeatured\n3 years ago\n tabular data, basketball, sports, future prediction\n\n$25,000\n\n598 teams",
  
  "Second Annual Data Science Bowl\n\nTransforming How We Diagnose Heart Disease\n\nFeatured\n3 years ago\n image data, healthcare\n\n$200,000\n\n192 teams",
  
  "Telstra Network Disruptions\n\nPredict service faults on Australia's largest telecommunications network\n\nRecruitment\n3 years ago\n tabular data, internet, multiclass classification\n\nJobs\n\n974 teams",
  
  "Prudential Life Insurance Assessment\n\nCan you make buying life insurance easier?\n\nFeatured\n3 years ago\n ranking, tabular data\n\n$30,000\n\n2,619 teams",
  
  "The Allen AI Science Challenge\n\nIs your model smarter than an 8th grader?\n\nFeatured\n3 years ago\n tabular data, artificial intelligence, multiclass classification, text data\n\n$80,000\n\n799 teams",
  
  "Airbnb New User Bookings\n\nWhere will a new guest book their first travel experience?\n\nRecruitment\n3 years ago\n recommendation, hotels, tabular data\n\nJobs\n\n1,462 teams",
  
  "Homesite Quote Conversion\n\nWhich customers will purchase a quoted insurance plan?\n\nFeatured\n3 years ago\n tabular data, binary classification\n\n$20,000\n\n1,764 teams",
  
  "Cervical Cancer Screening\n\nHelp prevent cervical cancer by identifying at-risk populations\n\nFeatured\n3 years agoLimited\n\n$100,000\n\n40 teams",
  
  "The Winton Stock Market Challenge\n\nJoin a multi-disciplinary team of research scientists\n\nFeatured\n3 years ago\n finance, tabular data, future prediction\n\n$50,000\n\n1,300 teams",
  
  "Santa's Stolen Sleigh\n\n♫ Alarm bells ring, are you listening? Santa's sleigh has gone missing ♫\n\nFeatured\n3 years ago\n mathematical optimization, tabular data\n\n$20,000\n\n1,127 teams",
  
  "Right Whale Recognition\n\nIdentify endangered right whales in aerial photographs\n\nResearch\n3 years ago\n image data, oceanography, animals, object detection\n\n$10,000\n\n364 teams",
  
  "Walmart Recruiting: Trip Type Classification\n\nUse market basket analysis to classify shopping trips\n\nRecruitment\n3 years ago\n tabular data, multiclass classification\n\nJobs\n\n1,047 teams",
  
  "What's Cooking?\n\nUse recipe ingredients to categorize the cuisine\n\nPlayground\n3 years ago\n multiclass classification, text data, food and drink\n\nKnowledge\n\n1,388 teams",
  
  "Rossmann Store Sales\n\nForecast sales using store, promotion, and competitor data\n\nFeatured\n3 years ago\n tabular data, future prediction\n\n$35,000\n\n3,303 teams",
  
  "How Much Did It Rain? II\n\nPredict hourly rainfall using data from polarimetric radars\n\nResearch\n3 years ago\n regression, future prediction, tabular data\n\n$500\n\n587 teams",
  
  "Western Australia Rental Prices\n\nPredict rental prices for properties across Western Australia\n\nFeatured\n4 years agoLimited\n\n$100,000\n\n59 teams",
  
  "Springleaf Marketing Response\n\nDetermine whether to send a direct mail piece to a customer\n\nFeatured\n4 years ago\n marketing, tabular data, binary classification\n\n$100,000\n\n2,226 teams",
  
  "Truly Native?\n\nPredict which web pages served by StumbleUpon are sponsored\n\nFeatured\n4 years ago\n binary classification, marketing, tabular data\n\n$10,000\n\n274 teams",
  
  "Flavours of Physics: Finding τ → μμμ\n\nIdentify a rare decay phenomenon\n\nFeatured\n4 years ago\n tabular data, physics, binary classification\n\n$15,000\n\n673 teams",
  
  "Denoising Dirty Documents\n\nRemove noise from printed text\n\nPlayground\n4 years ago\n image data, object segmentation\n\nKnowledge\n\n161 teams",
  
  "Coupon Purchase Prediction\n\nPredict which coupons a customer will buy\n\nFeatured\n4 years ago\n multiclass classification, marketing, tabular data\n\n$50,000\n\n1,076 teams",
  
  "Introducing Kaggle Scripts\n\nYour code deserves better\n\nPlayground\n4 years ago\n\nSwag",
  
  "Caterpillar Tube Pricing\n\nModel quoted prices for industrial tube assemblies\n\nFeatured\n4 years ago\n tabular data, manufacturing, regression\n\n$30,000\n\n1,323 teams",
  
  "Grasp-and-Lift EEG Detection\n\nIdentify hand motions from EEG recordings\n\nResearch\n4 years ago\n multiclass classification, signal data\n\n$10,000\n\n379 teams",
  
  "Liberty Mutual Group: Property Inspection Prediction\n\nQuantify property hazards before time of inspection\n\nFeatured\n4 years ago\n housing, counting\n\n$25,000\n\n2,236 teams",
  
  "ICDM 2015: Drawbridge Cross-Device Connections\n\nIdentify individual users across their digital devices\n\nFeatured\n4 years ago\n tabular data, multiclass classification\n\n$10,000\n\n340 teams",
  
  "Avito Context Ad Clicks\n\nPredict if context ads will earn a user's click\n\nFeatured\n4 years ago\n marketing, tabular data, click prediction\n\n$20,000\n\n414 teams",
  
  "Diabetic Retinopathy Detection\n\nIdentify signs of diabetic retinopathy in eye images\n\nFeatured\n4 years ago\n binary classification, image data, optometry, health sciences\n\n$100,000\n\n661 teams",
  
  "Crowdflower Search Results Relevance\n\nPredict the relevance of search results from eCommerce sites\n\nFeatured\n4 years ago\n internet, tabular data, ranking\n\n$20,000\n\n1,326 teams",
  
  "ECML/PKDD 15: Taxi Trajectory Prediction (I)\n\nPredict the destination of taxi trips based on initial partial trajectories\n\nResearch\n4 years ago\n taxi services, tabular data\n\n$250\n\n381 teams",
  
  "ECML/PKDD 15: Taxi Trip Time Prediction (II)\n\nPredict the total travel time of taxi trips based on their initial partial trajectories\n\nResearch\n4 years ago\n taxi services, tabular data\n\n$250\n\n345 teams",
  
  "Bag of Words Meets Bags of Popcorn\n\nUse Google's Word2Vec for movie reviews\n\nGetting Started\n4 years ago\n film, text data, binary classification\n\nKnowledge\n\n578 teams",
  
  "West Nile Virus Prediction\n\nPredict West Nile virus in mosquitos across the city of Chicago\n\nFeatured\n4 years ago\n binary classification, tabular data\n\n$40,000\n\n1,306 teams",
  
  "Facebook Recruiting IV: Human or Robot?\n\nPredict if an online bid is made by a machine or a human\n\nRecruitment\n4 years ago\n internet, tabular data, binary classification\n\nJobs\n\n985 teams",
  
  "Random Acts of Pizza\n\nPredicting altruism through free pizza\n\nPlayground\n4 years ago\n binary classification, text data, internet\n\nKnowledge\n\n464 teams",
  
  "Poker Rule Induction\n\nDetermine the poker hand of five playing cards\n\nPlayground\n4 years ago\n card games, tabular data, multiclass classification\n\nKnowledge\n\n207 teams",
  
  "Bike Sharing Demand\n\nForecast use of a city bikeshare system\n\nPlayground\n4 years ago\n future prediction, tabular data, cycling\n\nKnowledge\n\n3,251 teams",
  
  "Walmart Recruiting II: Sales in Stormy Weather\n\nPredict how sales of weather-sensitive products are affected by snow and rain\n\nRecruitment\n4 years ago\n tabular data, regression\n\nJobs\n\n485 teams",
  
  "Otto Group Product Classification Challenge\n\nClassify products into the correct category\n\nFeatured\n4 years ago\n tabular data, internet\n\n$10,000\n\n3,514 teams",
  
  "How Much Did It Rain?\n\nPredict probabilistic distribution of hourly rain given polarimetric radar measurements\n\nResearch\n4 years ago\n tabular data\n\n$500\n\n321 teams",
  
  "Forest Cover Type Prediction\n\nUse cartographic variables to classify forest categories\n\nPlayground\n4 years ago\n forestry, multiclass classification\n\nKnowledge\n\n1,694 teams",
  
  "Restaurant Revenue Prediction\n\nPredict annual restaurant sales based on objective measurements\n\nFeatured\n4 years ago\n regression, tabular data\n\n$30,000\n\n2,257 teams",
  
  "15.071x - The Analytics Edge (Spring 2015)\n\nTest your analytics skills by predicting which New York Times blog articles will be the most popular\n\nResearch\n4 years agoLimited\n\nKnowledge\n\n2,923 teams",
  
  "Billion Word Imputation\n\nFind and impute missing words in the billion word corpus\n\nPlayground\n4 years ago\n text data, linguistics\n\nKnowledge\n\n87 teams",
  
  "Microsoft Malware Classification Challenge (BIG 2015)\n\nClassify malware into families based on file content and characteristics\n\nResearch\n4 years ago\n internet, text data, multiclass classification\n\n$16,000\n\n377 teams",
  
  "March Machine Learning Mania 2015\n\nPredict the 2015 NCAA Basketball Tournament\n\nFeatured\n4 years ago\n future prediction, tabular data, basketball, sports\n\n$15,000\n\n341 teams",
  
  "15.071x - The Analytics Edge (Spring 2015)\n\nTest your analytics skills by predicting which New York Times blog articles will be the most popular.\n\nResearch\n4 years agoLimited\n\nKnowledge",
  
  "Finding Elo\n\nPredict a chess player's FIDE Elo rating from one game\n\nPlayground\n4 years ago\n board games, tabular data, ranking\n\nKnowledge\n\n158 teams",
  
  "National Data Science Bowl\n\nPredict ocean health, one plankton at a time\n\nFeatured\n4 years ago\n oceanography, image data, multiclass classification\n\n$175,000\n\n1,049 teams",
  
  "Driver Telematics Analysis\n\nUse telematic data to identify a driver signature\n\nFeatured\n4 years ago\n multiclass classification, tabular data\n\n$30,000\n\n1,528 teams",
  
  "Sentiment Analysis on Movie Reviews\n\nClassify the sentiment of sentences from the Rotten Tomatoes dataset\n\nPlayground\n4 years ago\n text data, multiclass classification\n\nKnowledge\n\n861 teams",
  
  "BCI Challenge @ NER 2015\n\nA spell on you if you cannot detect errors!\n\nResearch\n4 years ago\n\n$1,000\n\n260 teams",
  
  "Click-Through Rate Prediction\n\nPredict whether a mobile ad will be clicked\n\nFeatured\n4 years ago\n\n$15,000\n\n1,604 teams",
  
  "Helping Santa's Helpers\n\nJingle bells, Santa tells ...\n\nFeatured\n4 years ago\n\n$20,000\n\n439 teams",
  
  "Data Science London + Scikit-learn\n\nScikit-learn is an open-source machine learning library for Python. Give it a try here!\n\nGetting Started\n4 years ago\n\nKnowledge\n\n191 teams",
  
  "American Epilepsy Society Seizure Prediction Challenge\n\nPredict seizures in intracranial EEG recordings\n\nResearch\n5 years ago\n\n$25,000\n\n504 teams",
  
  "Tradeshift Text Classification\n\nClassify text blocks in documents\n\nFeatured\n5 years ago\n\n$5,000\n\n375 teams",
  
  "Learning Social Circles in Networks\n\nModel friend memberships to multiple circles\n\nPlayground\n5 years ago\n\nKnowledge\n\n203 teams",
  
  "Africa Soil Property Prediction Challenge\n\nPredict physical and chemical properties of soil using spectral measurements\n\nResearch\n5 years ago\n\n$8,000\n\n1,233 teams",
  
  "CIFAR-10 - Object Recognition in Images\n\nIdentify the subject of 60,000 labeled images\n\nPlayground\n5 years ago\n\nKnowledge\n\n231 teams",
  
  "Display Advertising Challenge\n\nPredict click-through rates on display ads\n\nResearch\n5 years ago\n\n$16,000\n\n718 teams",
  
  "Higgs Boson Machine Learning Challenge\n\nUse the ATLAS experiment to identify the Higgs boson\n\nFeatured\n5 years ago\n\n$13,000\n\n1,785 teams",
  
  "Liberty Mutual Group - Fire Peril Loss Cost\n\nPredict expected fire losses for insurance policies\n\nFeatured\n5 years ago\n\n$25,000\n\n634 teams",
  
  "The Hunt for Prohibited Content\n\nPredict which ads contain illicit content\n\nFeatured\n5 years ago\n\n$25,000\n\n285 teams",
  
  "UPenn and Mayo Clinic's Seizure Detection Challenge\n\nDetect seizures in intracranial EEG recordings\n\nResearch\n5 years ago\n\n$8,000\n\n200 teams",
  
  "DecMeg2014 - Decoding the Human Brain\n\nPredict visual stimuli from MEG recordings of human brain activity\n\nResearch\n5 years ago\n\n$5,000\n\n267 teams",
  
  "MLSP 2014 Schizophrenia Classification Challenge\n\nDiagnose schizophrenia using multimodal features from MRI scans\n\nResearch\n5 years ago\n\nKudos\n\n313 teams",
  
  "KDD Cup 2014 - Predicting Excitement at DonorsChoose.org\n\nPredict funding requests that deserve an A+\n\nResearch\n5 years ago\n\n$2,000\n\n472 teams",
  
  "Greek Media Monitoring Multilabel Classification (WISE 2014)\n\nMulti-label classification of printed media articles to topics\n\nResearch\n5 years ago\n\n$680\n\n120 teams",
  
  "Acquire Valued Shoppers Challenge\n\nPredict which shoppers will become repeat buyers\n\nFeatured\n5 years ago\n\n$30,000\n\n952 teams",
  
  "Risky Business\n\nPredict the risk of customer credit default\n\nMasters\n5 years agoLimited\n\n$100,000\n\n44 teams",
  
  "Allstate Purchase Prediction Challenge\n\nPredict a purchased policy based on transaction history\n\nFeatured\n5 years ago\n\n$50,000\n\n1,568 teams",
  
  "CONNECTOMICS\n\nReconstruct the wiring between neurons from fluorescence imaging of neural activity\n\nResearch\n5 years ago\n\n$3,000\n\n143 teams",
  
  "The Analytics Edge (15.071x)\n\nLearn what predicts happiness by using informal polling questions.\n\nPlayground\n5 years agoLimited\n\nKnowledge\n\n1,685 teams",
  
  "Walmart Recruiting - Store Sales Forecasting\n\nUse historical markdown data to predict store sales\n\nRecruitment\n5 years ago\n\nJobs\n\n691 teams",
  
  "Large Scale Hierarchical Text Classification\n\nClassify Wikipedia documents into one of 325,056 categories\n\nResearch\n5 years ago\n\nSwag\n\n119 teams",
  
  "March Machine Learning Mania\n\nTip off college basketball by predicting the 2014 NCAA Tournament\n\nFeatured\n5 years ago\n basketball, sports\n\n$15,000\n\n248 teams",
  
  "Galaxy Zoo - The Galaxy Challenge\n\nClassify the morphologies of distant galaxies in our Universe\n\nResearch\n5 years ago\n\n$16,000\n\n326 teams",
  
  "The Random Number Grand Challenge\n\nDecode a sequence of pseudorandom numbers\n\nFeatured\n5 years ago\n\n$1,000\n\n205 teams",
  
  "PAKDD 2014 - ASUS Malfunctional Components Prediction\n\nPredict malfunctional components of ASUS notebooks\n\nResearch\n5 years ago\n\n$8,500\n\n610 teams",
  
  "Loan Default Prediction - Imperial College London\n\nConstructing an optimal portfolio of loans\n\nResearch\n5 years ago\n\n$10,000\n\n675 teams",
  
  "Flu Forecasting\n\nPredict when, where and how strong the flu will be\n\nMasters\n5 years agoLimited\n\n$125,000\n\n50 teams",
  
  "Conway's Reverse Game of Life\n\nReverse the arrow of time in the Game of Life\n\nPlayground\n5 years ago\n\nSwag\n\n142 teams",
  
  "Dogs vs. Cats\n\nCreate an algorithm to distinguish dogs from cats\n\nPlayground\n5 years ago\n\nSwag\n\n215 teams",
  
  "Packing Santa's Sleigh\n\nHe's making a list, checking it twice; to fill up his sleigh, he needs your advice\n\nFeatured\n5 years ago\n\n$10,000\n\n362 teams",
  
  "Personalized Web Search Challenge\n\nRe-rank web documents using personal preferences\n\nFeatured\n5 years ago\n\n$9,000\n\n194 teams",
  
  "As the World Churns\n\nPredict which customers will leave an insurance company in the next 12 months.\n\nMasters\n5 years agoLimited\n\n$70,000\n\n37 teams",
  
  "Facebook Recruiting III - Keyword Extraction\n\nIdentify keywords and tags from millions of text questions\n\nRecruitment\n5 years ago\n\nJobs\n\n367 teams",
  
  "Partly Sunny with a Chance of Hashtags\n\nWhat can a #machine learn from tweets about the #weather?\n\nPlayground\n6 years ago\n\n$500\n\n259 teams",
  
  "See Click Predict Fix\n\nPredict which 311 issues are most important to citizens\n\nFeatured\n6 years ago\n\n$4,000\n\n532 teams",
  
  "Multi-label Bird Species Classification - NIPS 2013\n\nIdentify which of 87 classes of birds and amphibians are present into 1000 continuous wild sound recordings\n\nResearch\n6 years ago\n\nKnowledge\n\n32 teams",
  
  "Accelerometer Biometric Competition\n\nRecognize users of mobile devices from accelerometer data\n\nResearch\n6 years ago\n\n$5,000\n\n633 teams",
  
  "AMS 2013-2014 Solar Energy Prediction Contest\n\nForecast daily solar energy with an ensemble of weather models\n\nResearch\n6 years ago\n\n$1,000\n\n160 teams",
  
  "Personalize Expedia Hotel Searches - ICDM 2013\n\nLearning to rank hotels to maximize purchases\n\nFeatured\n6 years ago\n\n$25,000\n\n337 teams",
  
  "StumbleUpon Evergreen Classification Challenge\n\nBuild a classifier to categorize webpages as evergreen or non-evergreen\n\nFeatured\n6 years ago\n internet, tabular data, text data\n\n$5,000\n\n625 teams",
  
  "Belkin Energy Disaggregation Competition\n\nDisaggregate household energy consumption into individual appliances\n\nFeatured\n6 years ago\n\n$25,000\n\n165 teams",
  
  "The Big Data Combine Engineered by BattleFin\n\nPredict short term movements in stock prices using news and sentiment data provided by RavenPack\n\nResearch\n6 years ago\n\n$18,500\n\n425 teams",
  
  "See Click Predict Fix - Hackathon\n\nPredict which 311 issues are most important to citizens\n\nFeatured\n6 years ago\n\n$1,000\n\n80 teams",
  
  "Cause-effect pairs\n\nGiven samples from a pair of variables A, B, find whether A is a cause of B.\n\nResearch\n6 years ago\n\n$10,000\n\n266 teams",
  
  "RecSys2013: Yelp Business Rating Prediction\n\nRecSys Challenge 2013: Yelp business rating prediction\n\nResearch\n6 years ago\n\n$500\n\n158 teams",
  
  "Multi-modal Gesture Recognition\n\nRecognize gesture sequences in video and depth data from Kinect\n\nResearch\n6 years ago\n\n$10,000\n\n53 teams",
  
  "MLSP 2013 Bird Classification Challenge\n\nPredict the set of bird species present in an audio recording, collected in field conditions.\n\nResearch\n6 years ago\n\n$1,800\n\n79 teams",
  
  "MasterCard - Data Cleansing Competition\n\nImprove the quality of information within transaction data\n\nMasters\n6 years agoLimited\n\n$100,000\n\n6 teams",
  
  "Amazon.com - Employee Access Challenge\n\nPredict an employee's access needs, given his/her job role\n\nFeatured\n6 years ago\n\n$5,000\n\n1,687 teams",
  
  "Yelp Recruiting Competition\n\nHow many \"useful\" votes will a Yelp review receive? Show off your skills to land an interview for a position on a Yelp data mining team!\n\nRecruitment\n6 years ago\n\nJobs\n\n350 teams",
  
  "KDD Cup 2013 - Author-Paper Identification Challenge (Track 1)\n\nDetermine whether an author has written a given paper\n\nFeatured\n6 years ago\n\n$7,500\n\n553 teams",
  
  "The ICML 2013 Bird Challenge\n\nIdentify bird species from continuous audio recordings\n\nResearch\n6 years ago\n\n$500\n\n76 teams",
  
  "The ICML 2013 Whale Challenge - Right Whale Redux\n\nDevelop recognition solutions to detect and classify right whales for BIG data mining and exploration studies\n\nResearch\n6 years ago\n\n$500\n\n129 teams",
  
  "KDD Cup 2013 - Author Disambiguation Challenge (Track 2)\n\nIdentify which authors correspond to the same person\n\nFeatured\n6 years ago\n\n$7,500\n\n237 teams",
  
  "Challenges in Representation Learning: Facial Expression Recognition Challenge\n\nLearn facial expressions from an image\n\nResearch\n6 years ago\n\n$500\n\n56 teams",
  
  "Challenges in Representation Learning: The Black Box Learning Challenge\n\nCompetitors train a classifier on a dataset that is not human readable, without knowledge of what the data consists of.\n\nResearch\n6 years ago\n\n$500\n\n211 teams",
  
  "Challenges in Representation Learning: Multi-modal Learning\n\nThe multi-modal learning challenge\n\nResearch\n6 years ago\n\n$500\n\n24 teams",
  
  "dunnhumby & hack/reduce Product Launch Challenge\n\nThe success or failure of a new product launch is often evident within the first few weeks of sales. Can you predict a product's destiny?\n\nFeatured\n6 years ago\n\n$5,000\n\n108 teams",
  
  "ICDAR2013 - Handwriting Stroke Recovery from Offline Data\n\nPredict the trajectory of a handwritten signature\n\nResearch\n6 years ago\n\n$1,000\n\n40 teams",
  
  "Blue Book for Bulldozers\n\nPredict the auction sale price for a piece of heavy equipment to create a \"blue book\" for bulldozers.\n\nFeatured\n6 years ago\n\n$10,000\n\n475 teams",
  
  "ICDAR2013 - Gender Prediction from Handwriting\n\nPredict if a handwritten document has been produced by a male or a female writer\n\nResearch\n6 years ago\n\n$1,000\n\n190 teams",
  
  "Influencers in Social Networks\n\nPredict which people are influential in a social network\n\nFeatured\n6 years ago\n\n$2,350\n\n132 teams",
  
  "The Marinexplore and Cornell University Whale Detection Challenge\n\nCreate an algorithm to detect North Atlantic right whale calls from audio recordings, prevent collisions with shipping traffic\n\nFeatured\n6 years ago\n\n$10,000\n\n245 teams",
  
  "Heritage Health Prize\n\nIdentify patients who will be admitted to a hospital within the next year using historical claims data. (Enter by 06:59:59 UTC Oct 4 2012)\n\nFeatured\n6 years ago\n\n$500,000\n\n1,353 teams",
  
  "Job Salary Prediction\n\nPredict the salary of any UK job ad based on its contents\n\nFeatured\n6 years ago\n\n$6,000\n\n289 teams",
  
  "Predicting Parkinson's Disease Progression with Smartphone Data\n\nCan we objectively measure the symptoms of Parkinson’s disease with a smartphone? We have the data to find out!\n\nResearch\n6 years ago\n\n$10,000",
  
  "Just the Basics - Strata 2013 After-party\n\nLive from Santa Clara, CA\n\nGetting Started\n6 years ago\n\nKnowledge\n\n48 teams",
  
  "Just the Basics - Strata 2013\n\nLive from Santa Clara, CA - Core Data Science Skills with Kaggle’s Top Competitors\n\nGetting Started\n6 years ago\n\nKnowledge\n\n49 teams",
  
  "Event Recommendation Engine Challenge\n\nPredict what events our users will be interested in based on user actions, event metadata, and demographic information.\n\nFeatured\n6 years ago\n\n$5,000\n\n223 teams",
  
  "Leaping Leaderboard Leapfrogs\n\nProvide creative visualizations of the Kaggle leaderboard\n\nResearch\n6 years ago\n\n$900",
  
  "Prescription Volume Prediction\n\nPredict future prescription volume\n\nMasters\n6 years agoLimited\n\nUSD\n\n12 teams",
  
  "Visualize the State of Public Education in Colorado\n\nUsing 3 years of school grading data supplied by the Colorado Department of Education and R-Squared Research, visually uncover trends in the Colorado public school system.\n\nResearch\n6 years ago\n\n$5,000",
  
  "Traveling Santa Problem\n\nSolve ye olde traveling salesman problem to help Santa Claus deliver his presents\n\nFeatured\n6 years ago\n\n$3,000\n\n355 teams",
  
  "Observing Dark Worlds\n\nCan you find the Dark Matter that dominates our Universe? Winton Capital offers you the chance to unlock the secrets of dark worlds.\n\nRecruitment\n6 years ago\n\n$20,000\n\n353 teams",
  
  "Will I Stay or Will I Go?\n\nPredict which of our current customers will stay insured with us for an entire policy term.\n\nMasters\n6 years agoLimited\n\nUSD\n\n12 teams",
  
  "Facebook II - Mapping the Internet\n\nRound II of the Facebook Recruiting Competition.\n\nRecruitment\n7 years ago\n\nJobs\n\n111 teams",
  
  "U.S. Census Return Rate Challenge\n\nPredict census mail return rates.\n\nFeatured\n7 years ago\n\n$25,000\n\n243 teams",
  
  "Predict Closed Questions on Stack Overflow\n\nPredict which new questions asked on Stack Overflow will be closed\n\nFeatured\n7 years ago\n\n$20,000\n\n161 teams",
  
  "Global Energy Forecasting Competition 2012 - Load Forecasting\n\nA hierarchical load forecasting problem: backcasting and forecasting hourly loads (in kW) for a US utility with 20 zones.\n\nResearch\n7 years ago\n\n$7,500\n\n104 teams",
  
  "Global Energy Forecasting Competition 2012 - Wind Forecasting\n\nA wind power forecasting problem: predicting hourly power generation up to 48 hours ahead at 7 wind farms\n\nResearch\n7 years ago\n\n$7,500\n\n133 teams",
  
  "Merck Molecular Activity Challenge\n\nHelp develop safe and effective medicines by predicting molecular activity.\n\nFeatured\n7 years ago\n\n$40,000\n\n236 teams",
  
  "Data Mining Hackathon on BIG DATA (7GB) Best Buy mobile web site\n\nPredict which BestBuy product a mobile web visitor will be most interested in based on their search query or behavior over 2 years (7 GB).\n\nResearch\n7 years ago\n\n$1,000\n\n25 teams",
  
  "Data Mining Hackathon on (20 mb) Best Buy mobile web site - ACM SF Bay Area Chapter\n\nGetting Started - Predict which Xbox game a visitor will be most interested in based on their search query. (20 MB)\n\nResearch\n7 years ago\n\n$600\n\n96 teams",
  
  "CPROD1: Consumer PRODucts contest #1\n\nIdentify product mentions within a largely user-generated web-based corpus and disambiguate the mentions against a large product catalog.\n\nResearch\n7 years ago\n\n$10,000\n\n29 teams",
  
  "Detecting Insults in Social Commentary\n\nPredict whether a comment posted during a public discussion is considered insulting to one of the participants.\n\nRecruitment\n7 years ago\n\n$10,000\n\n50 teams",
  
  "Raising Money to Fund an Organizational Mission\n\nHelp worthy organizations more efficiently target and recruit loyal donors to support their causes.\n\nFeatured\n7 years ago\n\n$10,000\n\n27 teams",
  
  "CHALEARN Gesture Challenge 2\n\nDevelop a Gesture Recognizer for Microsoft Kinect (TM)\n\nResearch\n7 years ago\n\n$10,000\n\n30 teams",
  
  "Practice Fusion Diabetes Classification\n\nIdentify patients diagnosed with Type 2 Diabetes\n\nResearch\n7 years ago\n\n$10,000\n\n146 teams",
  
  "EMC Israel Data Science Challenge\n\nMatch source code files to the open source code project\n\nResearch\n7 years ago\n\n$10,000\n\n86 teams",
  
  "Million Song Dataset Challenge\n\nPredict which songs a user will listen to.\n\nResearch\n7 years ago\n\nKudos\n\n150 teams",
  
  "EMI Music Data Science Hackathon - July 21st - 24 hours\n\nCan you predict if a listener will love a new song?\n\nFeatured\n7 years ago\n\n$10,000\n\n133 teams",
  
  "Facebook Recruiting Competition\n\nShow them your talent, not just your resume.\n\nRecruitment\n7 years ago\n\nJobs\n\n418 teams",
  
  "Online Product Sales\n\nPredict the online sales of a consumer product based on a data set of product features.\n\nFeatured\n7 years ago\n\n$22,500\n\n363 teams",
  
  "Psychopathy Prediction Based on Twitter Usage\n\nIdentify people who have a high degree of Psychopathy based on Twitter usage.\n\nResearch\n7 years ago\n\n$1,000\n\n111 teams",
  
  "Personality Prediction Based on Twitter Stream\n\nIdentify the best performing model(s) to predict personality traits based on Twitter usage\n\nResearch\n7 years ago\n\n$500\n\n89 teams",
  
  "Predicting a Biological Response\n\nPredict a biological response of molecules from their chemical properties\n\nFeatured\n7 years ago\n\n$20,000\n\n699 teams",
  
  "KDD Cup 2012, Track 1\n\nPredict which users (or information sources) one user might follow in Tencent Weibo.\n\nFeatured\n7 years ago\n\n$8,000\n\n657 teams",
  
  "KDD Cup 2012, Track 2\n\nPredict the click-through rate of ads given the query and user information.\n\nFeatured\n7 years ago\n\n$8,000\n\n163 teams",
  
  "The Hewlett Foundation: Automated Essay Scoring\n\nDevelop an automated scoring algorithm for student-written essays.\n\nFeatured\n7 years ago\n\n$100,000\n\n154 teams",
  
  "Benchmark Bond Trade Price Challenge\n\nDevelop models to accurately predict the trade price of a bond.\n\nFeatured\n7 years ago\n\n$17,500\n\n264 teams",
  
  "EMC Data Science Global Hackathon (Air Quality Prediction)\n\nBuild a local early warning systems to accurately predict dangerous levels of air pollutants on an hourly basis.\n\nFeatured\n7 years ago\n\n$7,030\n\n110 teams",
  
  "ICFHR 2012 - Arabic Writer Identification\n\nIdentify which writer wrote which documents.\n\nResearch\n7 years ago\n\n$1,000\n\n42 teams",
  
  "Eye Movements Verification and Identification Competition\n\nDetermine how people may be identified based on their eye movement characteristic.\n\nResearch\n7 years ago\n\nKudos\n\n46 teams",
  
  "CHALEARN Gesture Challenge\n\nDevelop a Gesture Recognizer for Microsoft Kinect (TM)\n\nFeatured\n7 years ago\n\n$10,000\n\n47 teams",
  
  "What Do You Know?\n\nImprove the state of the art in student evaluation by predicting whether a student will answer the next test question correctly.\n\nFeatured\n7 years ago\n\n$5,000\n\n239 teams",
  
  "Getting Started\n\nCreate a forum for New Users\n\nFeatured\n7 years ago\n\n$10,000",
  
  "Algorithmic Trading Challenge\n\nDevelop new models to accurately predict the market response to large trades.\n\nFeatured\n7 years ago\n\n$10,000\n\n111 teams",
  
  "Don't Get Kicked!\n\nPredict if a car purchased at auction is a lemon\n\nFeatured\n7 years ago\n\n$10,000\n\n570 teams",
  
  "Give Me Some Credit\n\nImprove on the state of the art in credit scoring by predicting the probability that somebody will experience financial distress in the next two years.\n\nFeatured\n7 years ago\n\n$5,000\n\n924 teams",
  
  "Photo Quality Prediction\n\nGiven anonymized information on thousands of photo albums, predict whether a human evaluator would mark them as 'good'.\n\nFeatured\n8 years ago\n\n$5,000\n\n200 teams",
  
  "Semi-Supervised Feature Learning\n\nThere's been a lot of recent work done in unsupervised feature learning for classification and there are a ton of older methods that also work well. The purpose of this competition is to find out which of these methods work best on relatively large-scale high dimensional learning tasks.\n\nFeatured\n8 years ago\n\n$500\n\n26 teams",
  
  "Allstate Claim Prediction Challenge\n\nA key part of insurance is charging each customer the appropriate price for the risk they represent.\n\nFeatured\n8 years ago\n\n$10,000\n\n102 teams",
  
  "dunnhumby's Shopper Challenge\n\nGoing grocery shopping, we all have to do it, some even enjoy it, but can you predict it? dunnhumby is looking to build a model to better predict when supermarket shoppers will next visit the store and how much they will spend.\n\nFeatured\n8 years ago\n\n$10,000\n\n277 teams",
  
  "Wikipedia's Participation Challenge\n\nThis competition challenges data-mining experts to build a predictive model that predicts the number of edits an editor will make five months from the end date of the training dataset.\n\nFeatured\n8 years ago\n\n$10,000\n\n90 teams",
  
  "Mapping Dark Matter\n\nMeasure the small distortion in galaxy images caused by dark matter\n\nFeatured\n8 years ago\n\n$3,000\n\n70 teams",
  
  "Don't Overfit!\n\nWith nearly as many variables as training cases, what are the best techniques to avoid disaster?\n\nFeatured\n8 years ago\n\n$500\n\n259 teams",
  
  "Deloitte/FIDE Chess Rating Challenge\n\nThis contest, sponsored by professional services firm Deloitte, will find the most accurate system to predict chess outcomes, and FIDE will also bring a top finisher to Athens to present their system\n\nFeatured\n8 years ago\n\n$10,000\n\n181 teams",
  
  "ICDAR 2011 - Arabic Writer Identification\n\nThis competition require participants to develop an algorithm to identify who wrote which documents. The winner will be honored at a special session of the ICDAR 2011 conference.\n\nFeatured\n8 years ago\n\n$1,000\n\n30 teams",
  
  "Stay Alert! The Ford Challenge\n\nDriving while not alert can be deadly. The objective is to design a classifier that will detect whether the driver is alert or not alert, employing data that are acquired while driving.\n\nFeatured\n8 years ago\n\n$950\n\n176 teams",
  
  "Predict Grant Applications\n\nThis task requires participants to predict the outcome of grant applications for the University of Melbourne.\n\nFeatured\n8 years ago\n\n$5,000\n\n204 teams",
  
  "RTA Freeway Travel Time Prediction\n\nThis competition requires participants to predict travel time on Sydney's M4 freeway from past travel time observations.\n\nFeatured\n8 years ago\n\n$10,000\n\n356 teams",
  
  "R Package Recommendation Engine\n\nThe aim of this competition is to develop a recommendation engine for R libraries (or packages). (R is opensource statistics software.)\n\nFeatured\n8 years ago\n\n$150\n\n57 teams",
  
  "IJCNN Social Network Challenge\n\nThis competition requires participants to predict edges in an online social network. The winner will receive free registration and the opportunity to present their solution at IJCNN 2011.\n\nFeatured\n8 years ago\n\n$950\n\n117 teams",
  
  "Tourism Forecasting Part Two\n\nPart two requires competitors to predict 793 tourism-related time series. The winner of this competition will be invited to contribute a discussion paper to the International Journal of Forecasting.\n\nFeatured\n9 years ago\n\n$500\n\n42 teams",
  
  "Chess ratings - Elo versus the Rest of the World\n\nThis competition aims to discover whether other approaches can predict the outcome of chess games more accurately than the workhorse Elo rating system.\n\nFeatured\n9 years ago\n\n$617\n\n252 teams",
  
  "INFORMS Data Mining Contest 2010\n\nThe goal of this contest is to predict short term movements in stock prices. The winners of this contest will be honoured of the INFORMS Annual Meeting in Austin-Texas (November 7-10).\n\nFeatured\n9 years ago\n\n$0\n\n145 teams",
  
  "Tourism Forecasting Part One\n\nPart one requires competitors to predict 518 tourism-related time series. The winner of this competition will be invited to contribute a discussion paper to the International Journal of Forecasting.\n\nFeatured\n9 years ago\n\n$500\n\n55 teams",
  
  "Predict HIV Progression\n\nThis contest requires competitors to predict the likelihood that an HIV patient's infection will become less severe, given a small dataset and limited clinical information.\n\nFeatured\n9 years ago\n\n$500\n\n107 teams",
  
  "World Cup 2010 - Take on the Quants\n\nQuants at Goldman Sachs and JP Morgan have modeled the likely outcomes of the 2010 World Cup. Can you do better?\n\nFeatured\n9 years ago\n\n$100",
  
  "World Cup 2010 - Confidence Challenge\n\nThe Confidence Challenge requires competitors to assign a level of confidence to their World Cup predictions.\n\nFeatured\n9 years ago\n\n$100\n\n63 teams",
  
  "Forecast Eurovision Voting\n\nThis competition requires contestants to forecast the voting for this year's Eurovision Song Contest in Norway on May 25th, 27th and 29th.\n\nFeatured\n9 years ago\n\n$1,000\n\n22 teams"
)
kaggle %>% write_rds(here("data-raw/competitions.rds"))
