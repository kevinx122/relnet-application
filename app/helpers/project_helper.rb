module ProjectHelper
  DEFAULT_DATE_FORMAT = '%d/%m/%Y'
  DEFAULT_TIME_FORMAT = '%I:%M %p'

  def formatted_date_text(value, format = DEFAULT_DATE_FORMAT)
    value ? value.strftime(format) : ''
  end

  def formatted_time_text(value, format = DEFAULT_TIME_FORMAT)
    value ? value.strftime(format) : ''
  end
end
