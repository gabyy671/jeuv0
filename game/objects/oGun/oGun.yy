{
  "$GMObject":"",
  "%Name":"oGun",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"oGun",
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
    {"$GMObjectProperty":"v1","%Name":"target","filters":[],"listItems":[],"multiselect":false,"name":"target","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"oPlayer","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"recoil","filters":[],"listItems":[],"multiselect":false,"name":"recoil","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"6","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"firing_delay","filters":[],"listItems":[],"multiselect":false,"name":"firing_delay","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"20","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"dmg","filters":[],"listItems":[],"multiselect":false,"name":"dmg","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"bullet_spd","filters":[],"listItems":[],"multiselect":false,"name":"bullet_spd","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"25","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"spread","filters":[],"listItems":[],"multiselect":false,"name":"spread","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"5","varType":1,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"sGun",
    "path":"sprites/sGun/sGun.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}