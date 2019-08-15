# == Schema Information
#
# Table name: planes
#
#  id         :bigint           not null, primary key
#  name       :text
#  row        :text
#  column     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plane < ApplicationRecord
    has_many :flights
end
