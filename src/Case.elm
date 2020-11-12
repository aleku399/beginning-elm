module Case exposing (main)

import Html

weekday dayInNumber = 
    case dayInNumber of
       0 ->
            "Sunday"
       1 ->
            "Monday"
       2  -> 
            "Tuesday"
       _ ->
            "Unknown day"

hashtag dayInNumber =
    case weekday dayInNumber of
        "Sunday" ->
            "#SinDay"

        "Monday" ->
            "#MondayBlues"

        "Tuesday" ->
            "#TakeMeBackTuesday"

        "Wednesday" ->
            "#HumpDay"

        "Thursday" ->
            "#ThrowbackThursday"

        "Friday" ->
            "#FlashbackFriday"

        "Saturday" ->
            "#Caturday"

        _ ->
            "#Whatever"
palindrome word =
  let
    arrStr =
        String.toList (String.toLower word)

    arrJoin =
         List.filter Char.isLower arrStr
 
    in
    arrJoin == List.reverse arrJoin

stringBool value =
  if value then
    "True"

  else
    "False"

main =
  Html.text (stringBool (palindrome "As I pee, sir, I see Pisa"))
