{
  "$GMObject":"",
  "%Name":"oBoss",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":64,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"oBoss",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"propertyId":{"name":"size","path":"objects/oEnemy/oEnemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"4",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"pShootable","path":"objects/pShootable/pShootable.yy",},"propertyId":{"name":"hp","path":"objects/pShootable/pShootable.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"15",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"propertyId":{"name":"hasweapon","path":"objects/oEnemy/oEnemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
  ],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":{
    "name":"oEnemyBig",
    "path":"objects/oEnemyBig/oEnemyBig.yy",
  },
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
    {"$GMObjectProperty":"v1","%Name":"is_boss_active","filters":[],"listItems":[],"multiselect":false,"name":"is_boss_active","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"max_hp","filters":[],"listItems":[],"multiselect":false,"name":"max_hp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"15","varType":1,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"sEnemy",
    "path":"sprites/sEnemy/sEnemy.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}