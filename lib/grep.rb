class Grep
    @@line_num = '-n'
    @@insensitive = '-i'
    @@output_filename = '-l'
    @@invert = '-v'
    @@match_whole_line = '-x'
    def self.grep(pattern, flags, files)
        regex_pattern = prepare_regexp(pattern, flags)
        files_amount = files.length > 1
        final_output = ""
        files.each.with_index { |filename, file_nr|
            File.foreach(filename).with_index { |line, index| 
                is_match = line.match(regex_pattern).nil? == flags.include?(@@invert)
                if is_match 
                    output_line = []
                    output_line << filename if (files_amount || flags.include?(@@output_filename))
                    output_line << (index + 1).to_s if ((flags.include?(@@line_num)) && !(flags.include?(@@output_filename)))
                    output_line << line unless flags.include?(@@output_filename)
                    final_output << output_line.join(":")
                    if flags.include?(@@output_filename)
                        final_output << "\n"
                        break
                    end
                end
            }
        }
        return final_output.rstrip
    end

    def self.prepare_regexp(pattern, flags)
        sufix = prefix = '.*'
        if flags.include? @@match_whole_line
            prefix = '^'
            sufix = '$'
        end
        pattern = "#{prefix}#{pattern}#{sufix}"
        if flags.include? @@insensitive
            regex_pattern = Regexp.new pattern, Regexp::IGNORECASE
        else
            regex_pattern = Regexp.new pattern
        end
    end 
end



