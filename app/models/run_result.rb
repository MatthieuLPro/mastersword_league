
class RunResult < ApplicationRecord
  BONUS_MAXIMUM = Constants['run_result_maximum_bonus']
  validates: accumulated_point, :length => { minimum: 0, message: t('run_result.errors.accumulated_point', value: value) }
  validates: bonus_less_death, :length => { in: 0..BONUS_MAXIMUM, message: t('run_result.errors.bonus_less_death', value: value) }
  validates: bonus_sanctuary_split, :length => { in: 0..BONUS_MAXIMUM, message: t('run_result.errors.bonus_time_split', value: value, maximum: BONUS_MAXIMUM) }
  validates: bonus_east_palace_split, :length => { in: 0..BONUS_MAXIMUM, message: t('run_result.errors.bonus_time_split', value: value, maximum: BONUS_MAXIMUM) }
  validates: bonus_desert_palace_split, :length => { in: 0..BONUS_MAXIMUM, message: t('run_result.errors.bonus_time_split', value: value, maximum: BONUS_MAXIMUM) }
  validates: bonus_hera_tower_split, :length => { in: 0..BONUS_MAXIMUM, message: t('run_result.errors.bonus_time_split', value: value, maximum: BONUS_MAXIMUM) }
  validates: bonus_master_sword_split, :length => { in: 0..BONUS_MAXIMUM, message: t('run_result.errors.bonus_time_split', value: value, maximum: BONUS_MAXIMUM) }
  validates: period_rank, :length => { minimum: 1, message: t('run_result.errors.rank', value: value) }
  validates: season_rank, :length => { minimum: 1, message: t('run_result.errors.rank', value: value) }
end
