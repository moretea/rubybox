module RubyBox
  MAYOR   = "0"
  MINOR   = "0"
  PATCH   = "1"
  POSTFIX = nil

  VERSION = [MAYOR, MINOR, PATCH, POSTFIX].reject{ |x| x.nil? }.collect(&:to_s).join(".")
end
