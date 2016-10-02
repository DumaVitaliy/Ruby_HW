s="aabbbccc"
"aabbbccc".gsub(/([[:alpha:]])\1*/) do |group| 
   group.size > 1 ? "#{group[0]}#{group.size}" : group
end

