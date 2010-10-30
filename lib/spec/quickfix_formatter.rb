require 'spec/runner/formatter/base_formatter'

module Spec::Runner::Formatter
  class QuickfixFormatter < Spec::Runner::Formatter::BaseFormatter
    # turn this on to output multiline error in quickfix. This kinda abuses
    # quickfix but can provide the backtrace
    MULTI_LINE_ERRORS = false

    def initialize(options, output)
      @options = options
      @output = output
      unless @output.is_a?(IO)
        @output = File.new(output, 'w')
      end
    end

    # use with this errorformat
    # set errorformat=%f:%l\ %n\ %m
    def example_failed(example, counter, failure)
      first_time = true

      failure.exception.backtrace.reverse.each do |frame|
        file, line, message = parse_backtrace(frame)
        message = failure.header if message.blank?

        if first_time and failure.exception.message.present?
          first_time = false
          message += failure.exception.message
        end

        @output.puts "%s:%d %d %s" % [file, line, counter, message]
        @output.flush

        MULTI_LINE_ERRORS or break
      end
    end

    private

      BACKTRACE_REGEXP = %r/^([^:]+):(\d+):?(.*)/

      def parse_backtrace(trace)
        BACKTRACE_REGEXP.match(trace)[1..3]
      end
  end
end
