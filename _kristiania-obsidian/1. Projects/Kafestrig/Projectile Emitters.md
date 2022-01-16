# Projectile Emitters
Created: 2021-12-29 18:15
Type: [[Modular Weapons]]

## Description
```ad-note
title: Description

Base class for a projectile emitter.
Its job is to spawn or control a projectile.

Its job is to spawn or control a projectile through the [[Projectile Emitters#^2442b6\|_do_fire]] method.
To actually fire a projectile, the base [[Projectile Emitters#^d8f993\|fire()]] method is provided and can be called from `_unhandled_input()`, for example. 
```
---

## Properties
| Type  | Name                                                     | Default value |
| ----- | -------------------------------------------------------- | ------------- |
| int   | *[[Projectile Emitters#^3ec981\|damage_per_collision]]*  | 5             |
| float | *[[Projectile Emitters#^123d2b\|projectile_per_second]]* | 1.0           |
| float | *[[Projectile Emitters#^e4e0ed\|projectile_lifetime]]*   | 1.0           |

---

## Methods
| Return type | Method name                                                                                    |
| ----------- | ---------------------------------------------------------------------------------------------- |
| void        | *[[Projectile Emitters#^d8f993\|fire]]* ()                                                     |
| void        | *[[Projectile Emitters#^2442b6\|_do_fire]]* (Vector2 \_dir, Array \_motions, float \_lifetime) |
| void        | *[[Projectile Emitters#^b0ab7b\|_on_projectile_collided]]* (Node target, Vector2 hit_location) |
| void        | *[[Projectile Emitters#^a82d31\|_on_projectile_missed]]* (Vector2 miss_location)               | 

---

## Property Descriptions
- int **damage_per_collision** 

| Default | Getter | Setter |
|:-------:|:------:|:------:|
|    5    |   --   |   --   |

How much damage is dealt to the `Node`-inherited object. ^3ec981

---
- float **projectiles_per_second** 

| Default | Getter | Setter |
|:-------:|:------:|:------:|
|   1.0   |   --   |   --   |

The emitters cooldown for how often it can emit projectiles. ^123d2b

---
- float **projectile_lifetime** 

| Default | Getter | Setter |
|:-------:|:------:|:------:|
|   1.0   |   --   |   --   | 

How long a projectile can live, before it counts as a miss. ^e4e0ed

---

## Method Descriptions
- void **fire** **(**   **)** 

Base function to shoot a projectile. Calls the virtual `_do_fire()` function. ^d8f993

---
- void **_do_fire** **(** Vector2 _direction, Array _motions, float _lifetime **)** 

Virtual function, called from `fire()`. ^2442b6
```ad-warning
Should not be called by anything other than the `fire()` method.
```

---
- void **_on_projectile_collided** **(** Node target, Vector2 hit_location **)** 

Emits the `damaged` signal and triggers any [[Projectile Events|impact event]] in the system. ^b0ab7b

---
- void **_on_projectile_missed** **(** Vector2 miss_location **)** 

Triggers any `missed` event in the system. ^a82d31

---

## References
1. 