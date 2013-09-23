window.templatify = (html) ->
  (serialized_model) -> _.template(html, serialized_model);
