{
  "$GMObject":"",
  "%Name":"oPlayer",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"oEbullet","path":"objects/oEbullet/oEbullet.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":7,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":4,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"oPlayer",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"has_gun","filters":[],"listItems":[],"multiselect":false,"name":"has_gun","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"jumping_state","filters":[],"listItems":[],"multiselect":false,"name":"jumping_state","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"JUMPING_STATE.FALLING","varType":4,},
    {"$GMObjectProperty":"v1","%Name":"jumping_frame","filters":[],"listItems":[],"multiselect":false,"name":"jumping_frame","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"vsp","filters":[],"listItems":[],"multiselect":false,"name":"vsp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"hsp","filters":[],"listItems":[],"multiselect":false,"name":"hsp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"walksp","filters":[],"listItems":[],"multiselect":false,"name":"walksp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"6","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"jumping_speed","filters":[],"listItems":[],"multiselect":false,"name":"jumping_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"8","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"falling_speed","filters":[],"listItems":[],"multiselect":false,"name":"falling_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"8","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"controller","filters":[],"listItems":[],"multiselect":false,"name":"controller","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"keyboard","filters":[],"listItems":[],"multiselect":false,"name":"keyboard","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"hascontrol","filters":[],"listItems":[],"multiselect":false,"name":"hascontrol","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"can_jump","filters":[],"listItems":[],"multiselect":false,"name":"can_jump","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"dustCd","filters":[],"listItems":[],"multiselect":false,"name":"dustCd","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"gunkick_x","filters":[],"listItems":[],"multiselect":false,"name":"gunkick_x","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"key_left","filters":[],"listItems":[],"multiselect":false,"name":"key_left","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"key_action","filters":[],"listItems":[],"multiselect":false,"name":"key_action","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"key_right","filters":[],"listItems":[],"multiselect":false,"name":"key_right","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"key_jump","filters":[],"listItems":[],"multiselect":false,"name":"key_jump","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"key_down","filters":[],"listItems":[],"multiselect":false,"name":"key_down","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"key_shoot","filters":[],"listItems":[],"multiselect":false,"name":"key_shoot","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"active_controller","filters":[],"listItems":[],"multiselect":false,"name":"active_controller","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"oController","path":"objects/oController/oController.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"oController","varType":5,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"sPlayer",
    "path":"sprites/sPlayer/sPlayer.yy",
  },
  "spriteMaskId":{
    "name":"sPlayer",
    "path":"sprites/sPlayer/sPlayer.yy",
  },
  "visible":true,
}