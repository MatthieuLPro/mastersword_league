
class RunTime < ApplicationRecord
  validates :minutes, :length => { in: 0..59, message: t('run_time.errors.time_length', value: value) }, :allow_nil: true
  validates :secondes, :length => { in: 0..59, message: t('run_time.errors.time_length', value: value) }, :allow_nil: true
  validates :millisecondes, :length => { in: 0..59, message: t('run_time.errors.time_length', value: value) }, :allow_nil: true
end
