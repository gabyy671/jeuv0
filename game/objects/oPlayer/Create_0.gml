/*
oController * activeController;
var primaryController = oControllerP1;
var secondaryController = oControllerP1_BIS;

if (instance_exists(primaryController)) {
    activeController = primaryController;
} else if (instance_exists(secondaryController)) {
    activeController = secondaryController;
} else {
    instance_destroy();
}
*/


/*
ControllerP1 / keyboard controller0
ControllerP2	controller1
ControllerP3	controller2
ControllerP4	controller3

if (global.bis)
instance create(ControllerP1_BIS);
instance_destroy();

ControllerP1_BIS	keyboard
ControllerP2_BIS	controller0
ControllerP3_BIS	controller1
ControllerP4_BIS	controller2
*/