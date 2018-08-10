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
c1 = Chapter.create!(title:  "CHAPTER 1: RACISM LITERACY")
  c1s1 = Step.create!(title:  "The Gardener’s Tale - The three levels of racism, Camara Jones", 
                      media: "https://www.youtube.com/embed/1QFCcChCSMU", chapter: c1)
    c1s1q1 = Question.create!(title: "Gardener’s Tale QUIZ", style: 'MC', step: c1s1,
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

  c1s2 = Step.create!(title:  "Introduction to Implicit Bias, Dushaw Hocket on TedX", 
                      media: "https://www.youtube.com/embed/kKHSJHkPeLY", chapter: c1)
    c1s2q1 = Question.create!(title: "Implicit Bias QUIZ", style: 'MC', step: c1s2,
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





c2 = Chapter.create!(title:  "CHAPTER 2: PRIVILEGE")
  c2s1 = Step.create!(title:  "Robin Diangello", media: "https://www.youtube.com/embed/DwIx3KQer54", chapter: c2)
  c2s2 = Step.create!(title:  "Unpacking the invisible knapsack", media: "https://www.youtube.com/embed/DRnoddGTMTY", chapter: c2)

c3 = Chapter.create!(title:  "CHAPTER 3: CULTURAL SAFETY")
  c3s1 = Step.create!(title:  "Watch the following introduction to Cultural Safety and take the quiz", 
    media: "https://www.youtube.com/embed/MkxcuhdgIwY", chapter: c3)