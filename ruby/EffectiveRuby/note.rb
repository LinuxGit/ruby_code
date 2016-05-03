# better than $:,
$LOAD_PATH # better than $:,
# others you can
require 'english'

#string index
"90.2"[-1].to_i.even?

#string sub
"Louis".sub!('ou', 'uo')

#delete_if | reject return a new array
[1, 2, 3, 4].reject { |x| x.even? }

"glass_case_of_emotion".tr('_', ' ')
#=> "glass case of emotion"





