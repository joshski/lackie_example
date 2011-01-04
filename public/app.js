window.controller = {
  inspectScreen: function() {
    var html = document.getElementById("App").innerHTML;
    return html;
  }
}

function createLogAction(command) {
  return function() {
    var message = "Pressed " + command;
    document.getElementById("App").innerHTML = message;
    return message;
  }
}

var commands = ["up", "down", "left", "right", "select", "reset"];
for (var i = 0; i < commands.length; i++) {
  window.controller[commands[i]] = createLogAction(commands[i]);
}