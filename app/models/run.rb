class Run < ApplicationRecord
  # This regex validates format for youtube.com and speedrun.com
  VIDEO_LINK_REGEX = Constants["video_link_regex"]
  validates :number_death, length: { minimum: 0, message: t("run.errors.number_death", value: value) },
                           allow_nil: true
  validates :video_link, format: {
    with: VIDEO_LINK_REGEX,
    message: t("run.errors.video_link"),
  }
end
