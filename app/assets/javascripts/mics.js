$(function() {
  today = new Date();

  /*dateをaccordionの日付と同じ書式にする*/
  today_formatted = today.getFullYear() + "-" + ("00" + (today.getMonth() + 1)).slice(-2) + "-" + ("00" + (today.getDate())).slice(-2);
  deadline_formatted = today.getFullYear() + "-" + ("00" + (today.getMonth() + 1)).slice(-2) + "-" + ("00" + (today.getDate() + 7)).slice(-2);

  /*日付に合わせてaccordion配色変更*/
  for (var i = 0; i < $('.uk-accordion-title').size(); i++) {
    var $accordion_date = $('.uk-accordion-title').eq(i).text().replace(/\r?\n/g, '');
    var $accordion = $('.day-wrap').eq(i)
    
    if ($accordion_date === today_formatted) {
      $accordion.css("background", "#690000");
    } else if ($accordion_date >= today_formatted && $accordion_date <= deadline_formatted) {
      $accordion.css("background", "#222854");
    } else if ($accordion_date > deadline_formatted) {
      $accordion.css("background", "#626894");
    } else {
      $accordion.css("background", "#C2C8F4");
    }
  }
});