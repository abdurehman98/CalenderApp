class Task < ApplicationRecord
  belongs_to :user
  has_one :invite ,dependent: :destroy
  accepts_nested_attributes_for :invite, allow_destroy: true

  def start_time
    self.taskday
  end


end
