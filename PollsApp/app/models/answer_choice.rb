# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  text        :string
#  question_id :integer
#

class AnswerChoice < ApplicationRecord

  belongs_to(
    :question,
    class_name: :Question,
    primary_key: :id,
    foreign_key: :question_id
  )

  has_many(
    :reponses,
    class_name: :Response,
    primary_key: :id,
    foreign_key: :answer_choice_id
  )

end
