class Event < ActiveRecord::Base
  
  belongs_to :creator,         :class_name  => "User"
  has_many   :event_attendees, :foreign_key => "event_id"
  has_many   :attendees,       :through     => :event_attendees, :source => "attendee"
  
  scope :upcoming, -> { where("date >= :now", :now => Time.now) }
  scope :past,     -> { where("date < :now",  :now => Time.now) }
  
  validates :title, presence: true
  validates :description, presence: true
  
  
  
end
