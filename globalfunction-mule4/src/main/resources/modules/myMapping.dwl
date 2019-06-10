%dw 2.0
import dw::core::Strings
fun capitalizeKey(value:String) = Strings::capitalize(value) ++ "mouli"
---
payload mapObject ((value, key) ->
    {
      (capitalizeKey(key as String)) : value
      key=value
    }
  )
