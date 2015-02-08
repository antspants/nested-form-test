class Event < ActiveRecord::Base
  has_many :my_events
  accepts_nested_attributes_for :my_events

  validates :name, presence: true,
                   length: { maximum: 10 }
end
