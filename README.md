CtrlP Objects Plugin
====================

Adds these custom CtrlP commands:

* `CtrlPModels`
* `CtrlPViews`
* `CtrlPControllers`
* `CtrlPTemplates`
* `CtrlPPresenters`

It uses a simple `find -type f -ipath '*model*'` so it will find every file with "model" in the path, for example:

* app/assets/javascripts/models/User.js
* app/models/user.rb
