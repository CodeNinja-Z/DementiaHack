class Patient < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy

  def is_clinician?
    false
  end

  def is_patient?
    true
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
