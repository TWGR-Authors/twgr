  def Person.method_missing(m, *args)
    if m.start_with?("all_with_")
      attr = m[9..-1]
      if Person.public_method_defined?(attr)
        people.find_all do |person|
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end
end
