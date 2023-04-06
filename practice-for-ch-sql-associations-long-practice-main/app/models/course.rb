# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  prereq_id     :bigint
#  instructor_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    has_many :enrolled_students,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User
        
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :enrollment_id,
        class_name: :Enrollment
    
    has_one :prerequisite,
        primary_key: :prereq_id,
        foreign_key: :id,
        class_name: :Course

    # has_one :instructor,
    #     primary_key: :id,
    #     foreign_key: :instructor_id,
    #     class_name: :Course

    

end
