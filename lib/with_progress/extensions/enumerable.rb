module Enumerable
  def with_progress(options = {})
    return to_enum(:with_progress, options) { size rescue nil } unless block_given?

    options = WithProgress::DEFAULTS.merge(options)
    unless options.has_key?(:total)
      options[:total] = size rescue self.end - self.begin + (exclude_end? ? 0 : 1) rescue nil
    end

    bar = ProgressBar.create(options)
    each do |*args|
      result = yield *args
      bar.increment
      result
    end
  ensure
    bar.stop if bar
  end
end
