$(document).ready ->
  
  $("#datetimepicker1").datetimepicker language: "ar-EG"
  $("#datetimepicker2").datetimepicker language: "ar-EG"
  
  $("#group").bind "ajax:success", (evt, data, status, xhr) ->
    select = $("#vacation_user_id")
    if data isnt null
      select.removeAttr "disabled"
      select.empty()
      $.each data, (key, value) ->
        $("<option/>").val(value["id"]).text(value["name"]).appendTo select

    else
      select.empty()
      select.attr "disabled", "disabled"



  