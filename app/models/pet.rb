class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories, dependent: :destroy

  # def to_s

  # end

  def history_count
    self.pet_histories.count
  end

  def avg_weight
    avg_w = []
    self.pet_histories.each do |pet_history|
      avg_w << pet_history.weight
    end
    if self.history_count > 0 
      avg_w.sum / self.history_count
    end
  end

  def avg_heigth
    avg_h = []
    self.pet_histories.each do |pet_history|
      avg_h << pet_history.heigth
    end
    if self.history_count > 0
      avg_h.sum / self.history_count
    end
  end

  def max_weight
    max_w = 0
    self.pet_histories.each do |pet_history|
      if pet_history.weight > max_w
        max_w = pet_history.weight
      end
    end
    max_w
  end

  def max_heigth
    max_h = 0
    self.pet_histories.each do |pet_history|
      if pet_history.heigth > max_h
        max_h = pet_history.heigth
      end
    end
    max_h
  end
end
