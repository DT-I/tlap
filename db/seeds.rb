# User.create!([
#   {name: nil, email: "sean@nonsenseless.net", encrypted_password: "$2a$11$ZVdiEZCP0gTPu/Lef6Y3kexZjmSLwCgWPuYuA0GKoE.YJ8A2/Mom2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-05-20 00:02:19", last_sign_in_at: "2018-05-20 00:02:19", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
# ])

ResourceCategory.create!([
  {name: "Community Support", slug: "community_support"},
  {name: "Dependent Care", slug: "dependent_care"},
  {name: "Housing Needs", slug: "housing_needs"},
  {name: "Job Support Needs", slug: "job_support_needs"},
  {name: "Food And Clothing Needs", slug: "food_clothing_needs"},
  {name: "Medical and Mental Health Care", slug: "medical_care"},
  {name: "Documentation and Legal Needs", slug: "documentation_and_legal"}
])


QuestionType.create!([
  {question_type_name: "Resource Identifier", question_type_slug: "resource_identifier"},
  {question_type_name: "Information Store", question_type_slug: "information_store"}
])
Questionnaire.create!([
  {QuestionnaireName: "Community Support Questionnaire", QuestionnaireSlug: nil, resource_category_id: 1},
  {QuestionnaireName: "Test Questionnaire", QuestionnaireSlug: nil, resource_category_id: 2}
])


Resource.create!([
  {name: "Children At Risk", url: "childrenatrisk.org", description: "An organization that provides support resources for children at risk.", resource_category_id: 1},
  {name: "Section 8 Vouchers", url: "hud.gov", description: "A resource for supporting your move into independent housing.", resource_category_id: 3},
  {name: "ACLU of Texas", url: "http://aclutx.org", description: "An organization that can help protect your rights against a cold and uncaring state.", resource_category_id: 1}
])
Question.create!([
  {question_text: "Test Question", question_answer: nil, question_type_id: 1, affirmative_resource_id: nil, negative_resource_id: 2, questionnaire_id: nil, parent_question_id: nil},
  {question_text: "Do you have children?", question_answer: nil, question_type_id: 1, affirmative_resource_id: nil, negative_resource_id: nil, questionnaire_id: 2, parent_question_id: nil},
  {question_text: "Yes, younger children",question_answer: nil, question_type_id: 2, affirmative_resource_id: 1, negative_resource_id: nil, questionnaire_id: nil, parent_question_id: 11},
  {question_text: "Yes, older children", question_answer: nil, question_type_id: 1, affirmative_resource_id: 3, negative_resource_id: nil, questionnaire_id: nil, parent_question_id: 11},
  {question_text: "No", question_answer: nil, question_type_id: 1, affirmative_resource_id: nil, negative_resource_id: nil, questionnaire_id: nil, parent_question_id: 11},
  {question_text: "Do you have elders to care for?", question_answer: nil, question_type_id: 1, affirmative_resource_id: nil, negative_resource_id: nil, questionnaire_id: 2, parent_question_id: nil},
  {question_text: "Yes, parents", question_answer: nil, question_type_id: 1, affirmative_resource_id: 3, negative_resource_id: nil, questionnaire_id: nil, parent_question_id: 15},
  {question_text: "No", question_answer: nil, question_type_id: 1, affirmative_resource_id: nil, negative_resource_id: nil, questionnaire_id: nil, parent_question_id: 15}
])
