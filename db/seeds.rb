# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




User.create!(name:  "Admin",
             email: "admin@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end











# add chapters, steps, and questions
c1 = Chapter.create!(title:  "CHAPTER 1: RACISM LITERACY", description: "In this chapter you will learn about the three levels of racism (structural, interpersonal, and
internalized), implicit bias, micro-agressions, the racial wealth gap, and race as an illusion. You
will be quizzed on your understanding of the material, and you will engage in self-reflection on
your own experiences of race.")
  c1s1 = Step.create!(title:  "Lesson 1: The three levels of racism", 
                      media: "https://www.youtube.com/embed/1QFCcChCSMU", chapter: c1)
    c1s1q2 = Question.create!(title: "Step 2: Gardener’s Tale QUIZ", style: 'MC', step: c1s1,
                              choices: '[{"statement": "A black expectant mother lives in a predominantly African American neighborhood in the inner city and is unable to find prenatal care that is easy to access from where she lives.",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]},
                                          {"statement": "TBD",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]},
                                          {"statement": "TBD",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]},
                                          {"statement": "TBD",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]},
                                          {"statement": "TBD",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]},
                                          {"statement": "TBD",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]},
                                          {"statement": "TBD",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]},
                                          {"statement": "TBD",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]},
                                          {"statement": "TBD",
                                            "options": ["institutional racism", "personally mediated racism", "internalized racism"]}
                                        ]')

  c1s2 = Step.create!(title:  "Lesson 2: Implicit Bias", 
                      media: "https://www.youtube.com/embed/kKHSJHkPeLY", chapter: c1)
    c1s2q1 = Question.create!(title: "Step 2: Implicit Bias, NBC Dateline", style: 'MEDIA', step: c1s2, choices: "https://www.youtube.com/embed/n5Q5FQfXZag")
    c1s2q2 = Question.create!(title: "Step 3: Implicit Bias QUIZ", style: 'MC', step: c1s2,
                              instructions: 'From TedX talk by Dushaw Hocket, “Bias is defined as a preference for or prejudice against a person or group of people, not just mental or verbal associations.  There are attitudes and behaviors that we attach to those associations.”',
                              choices: '[{"statement": "The following is a characteristic of implicit bias",
                                            "options": ["Rapid and automatic associations between people and their personal qualities", 
                                                      "Intuitive knowing about people based on observable characteristics",
                                                      "Critical thoughts about people based on their race",
                                                      "Bias about certain groups of people, that is shared implicitly by most people in society"]},
                                            {"statement": "The following is true about implicit bias",
                                            "options": ["Implicit bias refers to negative stereotypes that some people use to explain why certain groups are more disadvantaged than others.",
                                                      "A person who believes in equality of opportunity and works for social justice does not have implicit bias.",
                                                      "There is no such thing as “reverse bias.”  Disadvantaged people cannot have implicit bias.",
                                                      "Implicit bias operates at the subconscious level.  Individuals therefore cannot will themselves to not have implicit bias."]},
                                            {"statement": "What is one purpose of viewing our actions through an implicit bias lens?",
                                            "options": ["The implicit bias lens is a tool we can use to help others be less racist.",
                                                      "It is preventative.  Using the implicit bias lens to examine one’s thoughts and behaviors helps to reduce the vulnerability to acting on one’s unconscious biases.",
                                                      "Implicit bias is a universal phenomenon and is natural.  Therefore, looking at our actions through this lens can reduce the guilt we feel for our attitudes about people.",
                                                      "While understanding our own implicit biases does not necessarily predict how we will behave towards any group of people, it will help us understand what messages we have received about certain groups of people over our lifetimes."]},
                                            {"statement": "The following is an example of implicit bias",
                                            "options": ["A co-worker, in a discussion about affirmative action, says, “I don’t see color.”",
                                                      "Your father-in-law says, “If you say black kids are not inherently more violent than white kids, then why are they all killing each other?”",
                                                      "A teacher in a first grade class room calls on her white students twice as many times as her black students, yet when questioned by an observer insists that she treats all of her children the same, regardless of skin color or background.",
                                                      "A midwife makes extra efforts to enroll people of color in her midwifery practice by offering them discounted rates because she is aware that pregnant people of color overall have less access to midwifery care than white pregnant people."]}
                                            ]')
    c1s3q3 = Question.create!(title: "Step 4: Implicit Bias Reflection", style: 'SA', step: c1s2,
                      instructions: "Look up project implicit at https://implicit.harvard.edu/implicit/ and take the implicit bias test for race. 
                                    What was the result of your test? Reflect on your own implicit biases and what you learned about yourself. 
                                    Was one part of the test more challenging than another?")
  

  c1s4 = Step.create!(title:  "Lesson 3: Micro-agressions",
                      media: "https://www.youtube.com/embed/ZahtlxW2CIQ", chapter: c1)
    c1s4q1 = Question.create!(title: "Step 2: Implicit Bias QUIZ", style: 'MC', step: c1s4,
                      instructions: "From the Microagressions in the Classroom video: “A microagression is something that someone says about some aspect of your identity that makes you feel insulted or slighted, even if they didn’t intend it.”  There are three types of microaggresions:  microassaults, microinsults, and microinvalidations.",
                      choices: '[{"statement": "The following is true about microaggressions",
                                  "options": ["Microaggressions are subtly insulting statements made to people of color, but are more “micro” in their impact than blatantly racist statements.",
                                    "Microaggressions are derogatory statements made by racists individuals.",
                                    "People who are racial justice activists are unlikely to engage in microaggressions."]},
                                  {"statement": "Microaggressions can have a significant impact on those who receive them because naming and receiving acknowledgement for something so subtle can be challenging.2.  When you are witness to what you believe is a microaggression, what is the most appropriate response for someone who wants to promote social justice?",
                                    "options": ["Ignore it.  Calling attention to it just gives it more energy and creates more conflict.",
                                    "Say something like, “I believe a microaggression has just occurred.  I’m feeling uncomfortable about what was just said and wondering if anyone else here is feeling uncomfortable?”",
                                    "Pull the person who made the microaggression aside when you have a chance and let them know they are being racist, sexist, homophobic, etc.",
                                    "Ask the person to whom the microaggression was directed to describe how they feel so everyone present can learn from the incident and prevent it from happening again."]}
                                ]')
    c1s4q2 = Question.create!(title: "Step 3: Implicit Bias QUIZ Continued", style: 'MC', step: c1s4,
                      instructions: "Read the following scenarios and choose whether each would be categorized as a microassault, microinsult, microinvalidation, or none of the above.",
                      choices: '[{"statement": "Scenario one:",
                                  "options": ["microassault", "microinsult", "microinvalidation", "this would not be considered a microaggression"]},
                                {"statement": "Scenario two:",
                                  "options": ["microassault", "microinsult", "microinvalidation", "this would not be considered a microaggression"]},
                                {"statement": "Scenario three:",
                                  "options": ["microassault", "microinsult", "microinvalidation", "this would not be considered a microaggression"]},
                                {"statement": "Scenario four:",
                                  "options": ["microassault", "microinsult", "microinvalidation", "this would not be considered a microaggression"]},
                                {"statement": "Scenario five:",
                                  "options": ["microassault", "microinsult", "microinvalidation", "this would not be considered a microaggression"]},
                                {"statement": "Scenario six:",
                                  "options": ["microassault", "microinsult", "microinvalidation", "this would not be considered a microaggression"]},
                                {"statement": "Scenario seven:",
                                  "options": ["microassault", "microinsult", "microinvalidation", "this would not be considered a microaggression"]},
                                {"statement": "Scenario eight:",
                                  "options": ["microassault", "microinsult", "microinvalidation", "this would not be considered a microaggression"]}
                              ]')
    c1s4q3 = Question.create!(title: "Step 4: Implicit Bias QUIZ Continued 2", style: 'SA', step: c1s4,
                        instructions: "Reflect on microaggressions you have experienced, witnessed or maybe even done yourself. What are you learning that you can apply to your clients?")

  c1s5 = Step.create!(title:  "Lesson 4: Racism and Pregnancy",
                      media: "http://www.pbs.org/unnaturalcauses/video_player.htm?wbb_kim_anderson_story",
                      media2: "http://www.pbs.org/unnaturalcauses/video_player.htm?wbb", chapter: c1)
    c1s5q1 = Question.create!(title: "Step 2: How Racism Affects Pregnancy Outcomes QUIZ:", style: 'MC', step: c1s5,
                      choices: '[{"statement": "It is well-known in the field of public health that African American children as a whole are more likely to be born premature than their White counterparts.  However, when African American and White individuals have equivalent education and socioeconomic status and are then compared for rates of preterm birth, the following is true:",
                                  "options": ["White and African American individuals have equal rates of preterm birth when education and socioeconomic status are equivalent.", 
                                    "African American individuals with a college degree have slightly better outcomes than Whites with a college degree, when socioeconomic status is also equivalent.", 
                                    "The higher the level of education and socioeconomic status is, the wider is the gap between preterm birth outcomes of White and African American individuals, with African Americans having the greater rates of preterm birth at every level.", 
                                    "When White and African American individuals with the same education and socioeconomic status are compared for preterm birth outcomes, there tends to be a increasing gap in the rates of preterm births between African American and White individuals the lower the level of education and socioeconomic status is."]},
                                {"statement": "In the video, when Kim Anderson’s baby was born, in 1990, the preterm birth rate in the U.S. was one in fourteen. In 2016 that rate is up to nearly one in 10. (https://www.marchofdimes.org/mission/prematurity-reportcard.aspx). The following is true about preterm birth rates around the world:",
                                  "options": ["Countries with the greatest percentage of African descendants have the highest preterm birth rates.",
                                    "While preterm birth rates are higher among African Americans in the U.S., on a global scale the U.S. has roughly equal rates of preterm birth compared to other industrialized and high-income countries.",
                                    "Preterm birth rates correlate directly to how much prenatal care pregnant individuals receive.",
                                    "Rates of preterm and low birth weight babies are responsible for the U.S. having one of the worst infant survival rates in the industrialized world."]},
                                {"statement": "Which group of women in the U.S. has the highest rate of premature birth?", 
                                  "options": ["White women", "Black women born in the U.S.", "Women newly emigrated from Africa"]},
                                {"statement": "Rates of prematurity among African American individuals as compared with White individuals average three times as high.  One is 7 African American babies is born premature.  In this film, Drs. Collins and David explain this disparity this way:",
                                  "options": ["Black people overall have a lower socioeconomic status than Whites and lower socioeconomic status is associated with poorer birth outcomes.",
                                    "The stress of being a black person in America takes a lifetime toll on a person’s health and can result in premature labor.",
                                    "Black women are less likely to receive prenatal care, which affects birth outcomes.",
                                    "Black women tend to have poorer nutritional status, which is a predictor for premature birth."]}
                              ]')

  c1s6 = Step.create!(title:  "Lesson 5: The Illusion of Race",
                      media: "https://player.vimeo.com/video/133506632", chapter: c1)
    c1s6q1 = Question.create!(title: "Step 2: The Wealth Gap QUIZ", style: 'MC', step: c1s6,
                      choices: '[{"statement": "Which if the following best describes the practice of “redlining” in the mid-1900’s?", 
                                  "options": ["The process of home appraisal, based on government guidelines, that involved assigning lower appraisal values to homes in integrated or all-minority neighborhoods.",
                                    "A process by which mortgage brokers would deny mortgages to non-white families based on their own personal biases and risk assessment.",
                                    "The excessive policing of neighborhoods where black and other minority groups lived, which caused what is known as “white flight.”",
                                    "The practice by realtors of drawing a red line around the nicest neighborhoods and refusing to sell to blacks in those neighborhoods to prevent non-white people from infiltrating local churches and public schools."]},
                                {"statement": "During the home ownership boom as a result of the post WWII GI bill, and the availability of FHA-backed loans, black people as a whole did not benefit from the bill anywhere near as much as white people did because:",
                                  "options": ["Very few black people were able to qualify for loans because of stringent requirements.",
                                    "Most whites didn’t want blacks in their neighborhoods and drove them out by making them feel unwelcome.",
                                    "Realtors and developers were reluctant to sell to black for fear it would lower the real estate values of nearby homes.",
                                    "Black people generally preferred to stay in their own neighborhoods where they felt more comfortable, even if it meant renting instead of owning."]},
                                {"statement": "What is the best way to describe the significance of home ownership for American families?",
                                  "options": ["Owning a home is something anyone can do if they work hard and maintain good credit.  Homeownership, therefore is a symbol of success.",
                                    "The Fair Housing Act of 1968 made it possible for almost anyone to buy a home.  Since then, home ownership has become the great equalizer, making it easier for anyone to buy a home and to integrate neighborhoods, even when some people would not choose an integrated neighborhood.",
                                    "Home ownership is the single most reliable path toward the building of net worth and wealth that can be maintained and passed on to one’s children.",
                                    "Owning a home ensures you can live where you want to, with neighbors you like."]},
                                {"statement": "Today the average white family has 8 times the net worth of the average black family.  The driving force for this gap is attributed in the film to:",
                                  "options": ["The legacy of inequality left by the unequal treatment of black people in relation to the home ownership boom after world war II.",
                                    "The fact that black people don’t work as hard as whites.",
                                    "The fact that black people tend to have less education and are less likely to go into professional careers than white people, and therefore tend to earn less money.",
                                    "Black people tend to have poverty mentality, which makes it difficult for them to get ahead."]},
                                {"statement": "Many people profess to “not see color” as a way of upholding an egalitarian ideal and a “colorblind” society.  What is one thing about the colorblind ideal that was mentioned in the film?",
                                  "options": ["Colorblindness, at its best, promotes the equality of white people and people of color by ensuring equal opportunities in housing, education, and employment.",
                                    "Being blind to a person’s color creates an illusion of equality, when in fact society is deeply segregated along racial lines.  This illusion prevents society from attending to the root issues of inequality.",
                                    "If individuals and institutions would take colorblindness seriously, everyone would have equal opportunities and their would be no racial gap.",
                                    "People of color are the biggest proponents of the colorblind ideal because they are the ones that benefit most from it."]}
                                  ]')
  c1s7 = Step.create!(title:  "Lesson 6: The Power of an Illusion.",
                      instructions: "California Newsreel. (2003). RACE: The Power of an Illusion.   Read through the six tabs on this website and do the exercises. You may have to download Adobe Flash Player 6 to do the exercises.  When you are finished take the quiz.",
                      media2: "http://www.pbs.org/race/000_General/000_00-Home.htm", chapter: c1)
    c1s7q1 = Question.create!(title: "Step 2: California Newsreel. (2003).", style: 'MC', step: c1s7,
                      choices: '[{"statement": "question",
                                  "options": ["option 1", "option 2", "option 3"]},
                                {"statement": "question",
                                  "options": ["option 1", "option 2", "option 3"]}
                                ]')




c2 = Chapter.create!(title:  "CHAPTER 2: PRIVILEGE", description: "In this chapter you will be introduced to the concepts of power, privilege and oppression, with an
emphasis on white privilege as the most prominent kind of privilege, and racial oppression as
the most prominent kind of oppression found in these United States. You will quizzed on your
understanding of the materials, and you will be asked to examine your own experiences of
privilege and oppression in the various forms it takes.")
  c2s1 = Step.create!(title:  "Lesson 1:  What is white privilege?", media: " https://www.youtube.com/embed/DwIx3KQer54", chapter: c2)
    c2s1q1 = Question.create!(title: "Step 2: Quiz", style: 'MC', step: c2s1,
                              choices: '[{"statement": "In this video, Robin Diangello defines racism in the following way:",
                                      "options": ["prejudice against people because of their race", 
                                        "acts born of hatred for particular cultural or racial groups", 
                                        "a system of unequal power between different racial groups that is reinforced by the institutions of society",
                                        "unconscious use of coded language that marginalizes particular groups of people."]},
                                    {"statement": "In the video, Robin Diangello explains segregation in this way:",
                                      "options": ["One way that segregation manifests is that many white people live their whole lives without ever developing authentic relationships with people of color.", 
                                        "Segregation is what happened before the civil rights movement, when black and white people were not allow to sit next to each other on the bus.", 
                                        "Segregation is the natural end result of people holding racist attitudes towards other groups.",
                                        "Even though the U.S. is a melting pot for all kinds of people, we still have segregated neighborhoods because people from the same cultures prefer to stay together in their own distinct spaces."]},
                                    {"statement": "Robin Diangello says the following about the phenomenon of white supremacy:",
                                      "options": ["White supremacy was the undergirding of the kkk movement in the 1960’s and those same groups still exist today.", 
                                        "In the U.S. we all swim in the waters of white supremacy as it is built into every structure of society.  There is, therefore, no neutral space in which to retreat from being involved.", 
                                        "A white person who has friends and family that are people of color is, by definition, not a white supremacist.",
                                        "The best way to overcome one’s tendency toward a white supremacist attitude is to see people only for who they are inside, and to not see the color of their skin."]},
                                    {"statement": "Imagine you are a white person and a person of color has just told you about something you did that they experienced as an expression of racism.  Based on what you learned in the video, what would be the response most conducive to building trust?",
                                      "options": ["Explain to them what you did or said and try to help them see that your intentions are good and you do not hold racists attitudes.", 
                                        "Take note of what you did and don’t do it again.", 
                                        "Ask the person to engage in dialogue with you about what happened so that you both can learn from the interaction.",
                                        "Receive the feedback they are giving you with gratitude, reflect on it, and try to understand what you did and make changes based on that."]},
                                    ]')

    c2s1q2 = Question.create!(title: "Step 2", style: 'SA', step: c2s1,
                      instructions: "Do you have any feeling that come up from watching this? Is there anything that is new to you? Is there anything that challenged you?")
    c2s1q3 = Question.create!(title: "Step 3: Reflection", style: 'SA', step: c2s1,
                      instructions: "What’s an example of how segregation shows up in my own life?")

  c2s2 = Step.create!(title:  "Lesson 2:  Privilege and Oppression", media: "https://www.youtube.com/embed/DRnoddGTMTY", chapter: c2)

    c2s2q1 = Question.create!(title: "Step 2", style: 'MEDIA', step: c2s2, 
        instructions: "Watch \"The privilege walk\" and participate in the walk yourself as you watch. Make sure you watch it in a space where you have room to move. This exercise is best done with others but you can also do it on your own while watching the video clip.",
        choices: "https://www.youtube.com/embed/Kr3WM9Iadhk")

    c2s2q2 = Question.create!(title: "Step 3", style: 'SA', step: c2s2,
                      instructions: "What did you learn about your own privilege or lack of privilege in different areas.  Was there anything that surprised you?  Are there other types of privilege not mentioned in this exercise that you can think of?")
    c2s2q3 = Question.create!(title: "Step 4", style: 'SA', step: c2s2,
                      instructions: "After watching Peggy Macintosh's \"Unpacking the Invisible knapsack,\" reflect on the question: What privileges are given to you without you having to think about it?")
    c2s2q4 = Question.create!(title: "Step 5", style: 'SA', step: c2s2,
                      instructions: "What is reaction to term privilege, is there anything problematic for you about that word?  If so, what other term would you propose that accounts for the phenomenon fully?")

  c2s3 = Step.create!(title:  "Lesson 3:  Privilege in Childbearing", chapter: c2)
    c2s4q1 = Question.create!(title: "Unpacking the invisible birth knapsack", style: 'SA', step: c2s3,
                      instructions: "TBD")

  c2s4 = Step.create!(title:  "Lesson 4: Structural Power", chapter: c2)
  c2s5 = Step.create!(title:  "Lesson 5:  Power in the Childbearing Context", chapter: c2)




c3 = Chapter.create!(title:  "CHAPTER 3: CULTURAL SAFETY", description: "In this chapter you will learn about the concept of Cultural Safety—from its origins in the Maori
Culture of New Zealand to its application in a wider context around the world. You will hear
voices from the front lines of culturally safe midwifery care and you will be asked to reflect on
your own experiences of culture, cultural safety, and what you have learned during this course.")

  c3s1 = Step.create!(title:  "Lesson 1: Origins and definition of Cultural Safety", 
    media: "https://www.youtube.com/embed/MkxcuhdgIwY", chapter: c3)
    c3s1q1 = Question.create!(title: "Cultural Safety: Respect and Dignity in Relationships Reflection", style: 'MA', step: c3s1,
      instructions: "Match each of the following terms with the definitions below:",
      choices: '{
                  "items": ["A lifelong journey of self-evaluation, reflection, and learning to deepen our understanding of how our life experiences influence how we understand and interact with others.",
                    "seeing the influences of our own culture",
                    "acknowledging our own biases",
                    "recognizing that difference and similarities exist between cultures.",
                    "learning about the histories that impact people from different cultural groups.",
                    "developing practical skills for interacting in respectful ways with people who are different from us.",
                    "Reducing the number of assumptions we make about people based on our biases.",
                    "Providing a health care environment that allows people to feel respected, and protected from discrimination when they access health services."],
                  "definitions": ["", "cultural humility", "cultural sensitivity", "cultural awareness", "cultural competency", "cultural safety"]
                }')

  c3s2 = Step.create!(title:  "Lesson 2: The Meaning of Culture", media: "https://www.youtube.com/embed/vIp5s6YktN0", chapter: c3)
    c3s2q1 = Question.create!(title: "Step 2: Cultural assessment exercise", style: 'SA', step: c3s2,
      instructions: "Complete the individual cultural assessment:  Reflect on what you learned about your own cultural make up.  Is there anything you became aware of regarding the culture that has influenced and shaped who you are?")
    c3s2q2 = Question.create!(title: "Step 3", style: 'SA', step: c3s2,
      instructions: "Reflect on what you learned about your own cultural make up.  Is there anything you became aware of regarding the culture that has influenced and shaped who you are?")

  c3s3 = Step.create!(title:  "Lesson 3:  Cultural Safety in an Indigenous Context", chapter: c3)

  c3s4 = Step.create!(title:  "Lesson 4:  Cultural Safety in an Exanded Context", chapter: c3)

  c3s5 = Step.create!(title:  "Lesson 5:  Cultural Safety applied to Childbearing People", chapter: c3)
