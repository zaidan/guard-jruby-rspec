require "guard/rspec_formatter"

superclass = if Guard::RSpecFormatter.instance_of? Module # guard-rspec-1.x
               Object
             elsif Guard::RSpecFormatter.instance_of? Class # guard-rspec-2.x
               Guard::RSpecFormatter
             else
               fail 'Guard::RSpecFormatter is neither class nor module'
             end

class Guard::JRubyRSpec::Formatter
  class Guard::JRubyRSpec::Formatter::NotificationRSpec < superclass
    include Guard::RSpecFormatter if Guard::RSpecFormatter.instance_of? Module

    def dump_summary(duration, total, failures, pending)
      message = guard_message(total, failures, pending, duration)
      image   = guard_image(failures, pending)
      notify(message, image)
    end
  end
end
