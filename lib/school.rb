class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
    split_times = start_time.split(":")
    new_hour = split_times[0].to_i + hours_in_school_day
    split_times[0] = new_hour.to_s
    split_times.join(":")
  end

  def full_time?
    if hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    student_names.map do |student_name|
      student_name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    split_times = start_time.split(":")
    new_hour = split_times[0].to_i + hours_in_school_day
    if new_hour > 12
      new_hour -= 12
    end
    split_times[0] = new_hour.to_s
    split_times.join(":")
  end

end
