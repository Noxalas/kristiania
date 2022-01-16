# Projectile Events
Created: 2021-12-30 12:56
Type: [[Modular Weapons]]
Status: #status/

## Description
```ad-note
title: Description

Base class for an event for when a projectile hits and/or misses.

The [[Projectile Events#^f2945d\|trigger()]] function is provided and filters out misses from events that do not trigger on miss. It calls [[Projectile Events#^9be1f8\|_do_trigger()]], which is the specialized implementation of the event. Like spawning an explosion, or a new, temporary projectile emitter.
```
---

## Properties
| Type | Name               | Default value |
| ---- | ------------------ | ------------- |
| bool | [[Projectile Events#^58dbc1\|triggers_on_misses]] | false         |

---

## Methods
| Return | Method name                                                                                                                  |
| ------ | ---------------------------------------------------------------------------------------------------------------------------- |
| void   | [[Projectile Events#^f2945d\|trigger]] *(_spawn_location: Vector2, _spawn_parent: Node, _weapons_system, _missed: bool)*     |
| void   | [[Projectile Events#^9be1f8\|_do_trigger]] *(_spawn_location: Vector2, _spawn_parent: Node, _weapons_system, _missed: bool)* | 

---

## Property Descriptions
- bool **triggers_on_misses** ^58dbc1

| Default | Setter | Getter |
|:-------:|:------:|:------:|
| `false` |   --   |   --   |

If `true`, the impact event will trigger on projectile misses.

---

## Method Descriptions
- void **trigger** **(** Vector2 _spawn_location, Node _spawn_parent, Node _weapons_system, bool _missed **)** ^f2945d

Base function for triggering an impact event at the `_spawn_location`. Will check if it should or shouldn't trigger on miss and only call the virtual `_do_trigger` on a match.

---

- void **_do_trigger** **(** Vector2 _spawn_location, Node _spawn_parent, Node _weapons_system, bool _missed **)** ^9be1f8

Virtual implementation specific call for triggering an impact event. Shouldn't be called by anything other than the [[Projectile Events#^f2945d\|trigger]] method.

---

## References
1. 