var locatedTriggers = document.querySelectorAll(".boton_menu");
var panel = document.getElementsByClassName("panel")[0];

locatedTriggers.forEach(function (trigger) {
    trigger.addEventListener("click", function() {
        launchMenu(trigger);
    });
});

function launchMenu(trigger){
    trigger.classList.toggle("active");
    if (panel.classList.contains("panel_active")) {
      panel.classList.remove("panel_active");
    } else {
      panel.classList.add("panel_active");
    } 
};