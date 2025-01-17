# == Schema Information
#
# Table name: submission_tasks
#
#  id            :bigint           not null, primary key
#  submission_id :bigint
#  position      :integer
#  result        :string(255)
#  time          :decimal(12, 3)
#  rss           :integer
#  score         :decimal(18, 6)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  vss           :integer
#  old_result    :string(255)
#  old_score     :decimal(18, 6)
#  old_time      :decimal(12, 3)
#  old_memory    :integer
#  message_type  :string(255)
#  message       :text(16777215)
#

class SubmissionTask < ApplicationRecord
  belongs_to :submission

  validates_length_of :message, maximum: 32768
end
