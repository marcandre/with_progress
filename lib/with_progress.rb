require 'with_progress/version'
require 'with_progress/extensions/enumerable'
require 'ruby-progressbar'
require 'backports/2.0.0/range/size'

module WithProgress
  DEFAULTS = {:format => ENV['RUBY_WITH_PROGRESS'] || '%t: |%B| %E'}
end

