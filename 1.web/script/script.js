var locatedTriggers = document.querySelectorAll(".boton_menu");
var panel = document.getElementsByClassName("panel")[0];
var triggerDiscord = document.getElementById("discord_logo");
var lateral = document.getElementById("panel_lateral");

locatedTriggers.forEach(function (trigger) {
    trigger.addEventListener("click", function() {
        launchMenu(trigger);
    });
});

function launchMenu(trigger){
    trigger.classList.toggle("active");
    if (panel.classList.contains("panel_active")) {
      panel.classList.remove("panel_active");
      if (lateral.classList.contains("disc_activo")){
        lateral.classList.remove("disc_activo");
        triggerDiscord.classList.remove("ready");
      }
    } else {
      panel.classList.add("panel_active");
    } 
};

triggerDiscord.addEventListener("click", function(){
    this.classList.toggle("ready");
    if(lateral.classList.contains("disc_activo")){
      lateral.classList.remove("disc_activo");
    }
    else{
      lateral.classList.add("disc_activo");
    }
});

var panel1 = document.getElementById("disparador");
panel1.addEventListener("click", function(){
    if (document.getElementById("artWork").classList.contains("hidden")){
        document.getElementById("artWork").classList.remove("hidden");
        document.getElementById("disparador").classList.add("inactive");
    }
    else{
        document.getElementById("artWork").classList.add("hidden");
        document.getElementById("disparador").classList.remove("inactive");
    }
});