class Clinician < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy

  def is_clinician?
    true
  end

  def is_patient?
    false
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
