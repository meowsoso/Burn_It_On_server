# == Schema Information
#
# Table name: flights
#
#  id            :bigint           not null, primary key
#  flight_number :text
#  origin        :text
#  destination   :text
#  date          :date
#  plane_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Flight < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :plane, :optional => true
end
