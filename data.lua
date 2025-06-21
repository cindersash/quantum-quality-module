local item_sounds = require("__base__.prototypes.item_sounds")

local quantum_quality_module_recipe = {
    type = "recipe",
    name = "quantum-quality-module",
    category = "electronics-or-assembling",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "quantum-processor", amount = 5},
      {type = "item", name = "quality-module-3", amount = 3},
    },
    energy_required = 15,
    results = {{type="item", name="quantum-quality-module", amount=1}}
}

local quantum_quality_module = {
    type = "module",
    name = "quantum-quality-module",
    icon = "__quantum-quality-module__/graphics/quantum-quality-module-icon.png",
    subgroup = "module",
    color_hint = { text = "Q" },
    category = "quality",
    tier = 1,
    order = "d[quality]-c[quantum-quality-module]",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    weight = 20 * kg,
    effect = { quality = 10.0, consumption = 10.0, speed = -0.5 }
}

local quantum_quality_module_tech = {
    type = "technology",
    name = "quantum-quality-module",
    icon = "__quantum-quality-module__/graphics/quantum-quality-module.png",
    icon_size = 256,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "quantum-quality-module"
        }
    },
    prerequisites = {"quality-module-3", "quantum-processor"},
    unit =
    {
        count = 300,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"cryogenic-science-pack", 1}
        },
        time = 60
    },
    upgrade = true,
    order = "i-c-d"
}

data:extend({quantum_quality_module, quantum_quality_module_recipe, quantum_quality_module_tech})
