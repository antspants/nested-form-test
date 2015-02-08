class MyEvent < ActiveRecord::Base
  belongs_to :event

  validates :event_id, presence: true

  validates :name, presence: true,
                   length: { maximum: 10 },
                   uniqueness: { scope: :event_id,
                   case_sensitive: false }
end
