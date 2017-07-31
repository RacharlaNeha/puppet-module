define show_message(
  String $message,
) {
  notify { $title:
    message => $message,
  }
}

$messages  = {
  'meassage1'  =>  { 'message' => 'This is message1' },
  'meassage2'  =>  { 'message' => 'This is message2' },
}

create_resources(show_message, $messages)
