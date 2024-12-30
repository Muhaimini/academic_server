module GeneratedNumber extend ActiveSupport::Concern
  module ClassMethods
    def has_generated_number(column, args)
      before_create do
        raise "missing prefix" if args[:prefix].nil? or args[:prefix].blank?
        raise "missing digits" if args[:digits].nil? or args[:digits].blank?

        prefix = args[:prefix]

        last_record = self.class.where("#{column} LIKE '#{prefix}%'").order("#{column} asc").last
        if last_record.present?
          last_ref_number = last_record.send(column)
          last_ref_number.slice! prefix
          suffix = (last_ref_number.to_i + 1)
          result = "#{prefix}#{suffix.to_s.rjust(args[:digits], "0")}"
        else
          result = "#{prefix}#{1.to_s.rjust(args[:digits], "0")}"
        end

        self[column] = result
      end
    end
  end
end
