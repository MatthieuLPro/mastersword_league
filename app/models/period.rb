class Period < ApplicationRecord
  validates :end_date_after_start_date

  def end_date_after_start_date
    if end_date < start_date
      errors.add(:end_date, t("period.errors.end_date"))
    end
  end
end
