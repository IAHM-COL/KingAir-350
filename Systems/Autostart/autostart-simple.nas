#*****************************************************
#* Simple autostart routine to fire both  engines    *
#* KingAir-350                                       * 
#* (C) Israel Hernandez 2023                         *
#* GPL v3 or Higher                                  *
#*****************************************************

var StartUp = func() {
    gui.popupTip("Starting Engines");
    settimer (APUon, 1);
    settimer (enginesIgnition, 5);
    settimer (enginesSpoolUp, 25);
    settimer (APUoff, 35);
}

var enginesIgnition = func {
    setprop("controls/electric/engine[0]/bus-tie",1);
    setprop("controls/electric/engine[0]/generator",1);
    setprop("controls/engines/engine[0]/cutoff", 1);
    setprop("controls/engines/engine[0]/fuel-pump", 1);
    setprop("controls/engines/engine[0]/ignition", 1);
    setprop("controls/engines/engine[0]/starter", 1);
    setprop("controls/electric/engine[1]/bus-tie",1);
    setprop("controls/electric/engine[1]/generator",1);
    setprop("controls/engines/engine[1]/cutoff", 1);
    setprop("controls/engines/engine[1]/fuel-pump", 1);
    setprop("controls/engines/engine[1]/ignition", 1);
    setprop("controls/engines/engine[1]/starter", 1);
}

var enginesSpoolUp = func {
    setprop("controls/engines/engine/cutoff", 0); 
    setprop("controls/engines/engine[1]/cutoff", 0);   
}

var APUon = func {
    setprop("controls/electric/battery-switch",1);
    setprop("controls/APU/off-start-run", 1);
    setprop("controls/electric/APU-generator", 1);
}

var APUoff = func {
    setprop("controls/electric/APU-generator",0);
}
