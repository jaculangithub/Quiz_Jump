function check_answer(ans) {
    if (ans == correct_answer) {
        result = "Correct!";
    } else {
        result = "Wrong!";
    }
    show_result = true;
    alarm[0] = room_speed * 2; // Show result for 2 seconds
}
