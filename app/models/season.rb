
class Season < ApplicationRecord  
  validates: number_of_period, :length => { minimum: 1, message: t('season.errors.number_of_period', value: value) }
  validates: period_duration, :length => { minimum: 1, message: t('season.errors.period_duration', value: value) }
end
