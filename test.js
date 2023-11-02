function updateKofiWidget() {
  kofiWidgetOverlay.draw('mimid', {
    'type': 'floating-chat',
    'floating-chat.donateButton.text': 'Support me',
    'floating-chat.donateButton.background-color': '#00b9fe',
    'floating-chat.donateButton.text-color': '#fff'
  });
}

// Call the function initially
updateKofiWidget();

// Set up an interval to call the function every 1 second
setInterval(updateKofiWidget, 1000);
