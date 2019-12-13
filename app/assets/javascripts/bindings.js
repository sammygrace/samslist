;(function() {
  var buttons = document.querySelectorAll('[data-carousel-target-id]');
  for (var i=0; i<buttons.length; i++) {
    buttons[i].addEventListener('click', function(event) {
      var button = event.currentTarget;
      var index = button.attributes['data-carousel-target-id'].value;
      var indicator = document.querySelector(`[data-slide-to='${index}']`);
      indicator.click();
    });
  }
})();

;(function() {
  var next_buttons = document.querySelectorAll("a[href='#next']");
  for (var i=0; i<next_buttons.length; i++) {
    next_buttons[i].addEventListener('click', function(event) {
      var button = event.currentTarget;
      var current_tab = button.closest('.tab-pane')
      var next_tab = current_tab.nextSibling.nextSibling;
      var index = next_tab.attributes['id'].value;
      var indicator = document.querySelector(`[href='#${index}']`);
      indicator.click();
    });
  };
})();

;(function() {
  var prev_buttons= document.querySelectorAll("a[href='#prev']");
  for (var i=0; i<prev_buttons.length; i++) {
    prev_buttons[i].addEventListener('click', function(event) {
      var button = event.currentTarget;
      var current_tab = button.closest('.tab-pane')
      var next_tab = current_tab.previousSibling.previousSibling;
      var index = next_tab.attributes['id'].value;
      var indicator = document.querySelector(`[href='#${index}']`);
      indicator.click();
    });
  };
})();
