require 'faker'

module Faker
  class EyeClinics < Base
    class << self
      def clinic_name
        [
          "Vision Care Center",
          "Optical Express",
          "Eye Health Clinic",
          "Clear Vision Clinic",
          "Sight Solutions",
          "Eagle Eye Clinic",
          "Optometric Associates",
          "Focus Eye Center",
          "Vision Specialists",
          "Eyecare Clinic",
          "Optical Insight",
          "Eye Wellness Center",
          "Advanced Eye Care",
          "Vision Plus Clinic",
          "Eyesight Experts",
          "Optique Vision",
          "Visionary Eye Clinic",
          "Precision Eye Care",
          "Optical Oasis",
          "Elite Vision Center"
        ].sample
      end

      def address
        Faker::Address.full_address
      end

      def contact
        Faker::Number.number(digits: 10)
      end

      def latitude
        Faker::Address.latitude.to_f.round(6)
      end

      def longitude
        Faker::Address.longitude.to_f.round(6)
      end
    end
  end
end
