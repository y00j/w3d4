# == Schema Information
#
# Table name: questions
#
#  id      :integer          not null, primary key
#  text    :string
#  poll_id :integer
#

class Question < ApplicationRecord

  belongs_to(
    :poll,
    class_name: :Poll,
    primary_key: :id,
    foreign_key: :poll_id
  )

  has_many(
    :answer_choices,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :question_id
  )
end
