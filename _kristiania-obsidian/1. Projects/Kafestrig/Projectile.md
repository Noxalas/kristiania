# Projectile
Created: 2021-12-29 17:42
Type: [[Modular Weapons]]

## Description
```ad-note
title: Description

Base class for a projectile. Extends `KinematicBody2D`.

**Lifecycle of a projectile**:
1. An [[Projectile Emitters|emitter]] spawns a projectile.
2. `setup()` is called by the emitter.
3. `_post_setup()` is called.
4. `_update_movement()` moves the projectile according to *all* of the emitter's [[Projectile Motions|projectile motions]].
5. The projectile either runs out of it's lifetime or collides with an object. 
	- If the projectile hits an object, it calls `_impact()` and emits the `collided` signal
	- If the projectile runs out of life, it calls `_miss()` and emits the `missed` signal.

The `_miss()` and `_impact()` functions are there for cleanup. The signals are what's used to communicate with the rest of the modular weapon system. 

```
---

## Properties
| Type | Name | Default value |
| ---- | ---- | ------------- |
|      |      |               | 

---

## Methods
| Return type | Method name                                                                                                    |
| ----------- | -------------------------------------------------------------------------------------------------------------- |
| void        | *[[Projectile#^baf712\|setup]]* ( Vector2 \_position, Vector2 \_direction, Array \_motions, float \_lifetime ) |
| void        | *[[Projectile#^96991d\|_post_setup]]* ()                                                                       |
| void        | *[[Projectile#^747297\|_impact]]* ()                                                                           |
| void        | *[[Projectile#^d7e8c2\|_miss]]* ()                                                                             |
| Vector2     | *[[Projectile#^4924bb\|_update_movement]]* (float delta)                                                       | 

---

## Signals
- **collided (** Node target, Vector2 hit_location **)**

Emitted when *[[Projectile#^747297\|_impact()]]* is called. Used to communicate back to the projectile's emitter/weapons system. 

---
- **missed (** Vector2 miss_location **)**

Emitted when *[[Projectile#^d7e8c2\|_miss()]]* is called. Used to communicate back to the projectile's emitter/weapons system. 

---

## Property Descriptions
- 

| Default | Setter | Getter |
|:-------:|:------:|:------:|
|   --    |   --   |   --   |



---

## Method Descriptions

- void **setup** **(** Vector2 \_position, Vector2 \_direction, Array \_motions, float \_lifetime **)**

Base setup function to configure spawned projectiles. Calls \_post_setup() when it is done. ^baf712

---
- void **\_post_setup** **( )**

Virtual function for any specialized setup required by a derived class. Called by setup(). ^96991d

---
- void **\_impact** **( )**

Virtual function called when a projectile hits a target. It's where it can clean itself up if needed. (i.e. `queue_free()`) ^747297

---
- void **\_miss** **( )**

Virtual function called when a projectile hits no target. It's where it can clean itself up if needed. (i.e. `queue_free()`) ^d7e8c2

---
- Vector2 **\_update_movement** **(** float delta **)**

Calculates and returns the projectile's movement this frame. Can mutate the projectile's state. ^4924bb

## References
1. 