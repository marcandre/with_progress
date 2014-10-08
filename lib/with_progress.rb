require 'with_progress/version'
require 'with_progress/extensions/enumerable'
require 'ruby-progressbar'

module WithProgress
  DEFAULTS = {:format => ENV['RUBY_WITH_PROGRESS'] || '%t: |%B| %E'}
end

