class Task < ApplicationRecord
  validates :name, presence: true

  def mark
    self.done = !self.done
    self.save!
  end

end
