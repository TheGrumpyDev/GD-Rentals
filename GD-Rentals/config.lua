Config = {}

-- Branding
Config.Brand = {
    name = 'GD-Rentals', -- Can Change
    tagline = 'Fast rides for fresh starts'
}

Config.Label = Config.Brand.name
Config.WalkUpRentalMenu = false

-- Framework bridge
-- auto | qbx | qb | esx | standalone
Config.Framework = 'auto' -- Would Leave Alone
Config.FrameworkResources = {  -- DO NOT TOUCH!
    qbx = { 'qbx_core', 'qbx-core' },
    qb = { 'qb-core' },
    esx = { 'es_extended', 'esx_legacy' }
}

Config.Integrations = {
    useMoney = true,                             -- Set false for frameworkless free rentals
    keysEvent = 'vehiclekeys:client:SetOwner'   -- Set nil/false to disable keys integration
}

Config.Debug = true

-- UI bridge
-- auto | ox | qb | basic
Config.UISystem = 'auto'
Config.QbMenuResource = 'qb-menu' -- Do not change even if you are using ox_lib

-- Target bridge
-- auto | ox | qb
Config.TargetSystem = 'auto'

-- Rental behavior
Config.RentalPolicy = {
    durationMinutes = 25,          -- Rental expires after this many minutes
    useDurationOptions = true,     -- If true, players choose rental package duration
    durationOptions = {
        { id = 'quick', label = 'Quick Ride', minutes = 5, priceMultiplier = 0.55 },
        { id = 'standard', label = 'Standard', minutes = 15, priceMultiplier = 1.0 },
        { id = 'extended', label = 'Extended', minutes = 30, priceMultiplier = 1.7 }
    },
    cooldownSeconds = 60,          -- Delay between rental attempts
    maxActiveRentals = 1,          -- Hard limiter per player
    firstRentalFree = true,        -- First rental this server session is free
    depositOnFirstFree = false,    -- If true, first free rental still charges deposit
    spawnBlockRadius = 2.5         -- Spawn safety radius check
}

-- Refund behavior
Config.ReturnPolicy = {
    autoDeleteOnExpire = true,     -- Deletes local rented vehicle on expiry (client side)
    damageAffectsDeposit = true,   -- Damage reduces deposit refund
    minimumHealthForDeposit = 20   -- Below this health %, deposit refund is zero
}

-- Optional analytics hooks/logging
Config.Analytics = {
    enabled = true,
    printToConsole = false
}

-- Optional scene props at rental spot
Config.Scene = {
    npc = {
        enabled = true,
        model = 'a_m_y_business_01',
        scenario = 'WORLD_HUMAN_CLIPBOARD',
        offset = vec3(1.0, 0.2, 0.0),
        headingOffset = 180.0
    },
    prop = {
        enabled = true,
        model = 'prop_bench_01a',
        offset = vec3(-1.2, 0.0, -1.0),
        headingOffset = 90.0
    }
}

-- Visual style
Config.Style = {
    blip = {
        sprite = 226,
        color = 2,
        scale = 0.7,
        display = 4
    },
    target = {
        radius = 2.25,
        iconRent = 'fa-solid fa-bicycle',
        iconPreview = 'fa-solid fa-eye',
        iconRentNow = 'fa-solid fa-bag-shopping'
    },
    returnZone = {
        radius = 5.0,
        interactDistance = 2.5,
        marker = {
            type = 1,
            scale = vec3(1.4, 1.4, 0.5),
            color = { r = 50, g = 205, b = 50, a = 140 }
        }
    },
    rentalTimer = {
        enabled = true,
        position = vec2(0.885, 0.50),   -- middle-right area
        panelSize = vec2(0.18, 0.08),
        panelColor = { r = 12, g = 12, b = 12, a = 165 },
        accentColor = { r = 50, g = 205, b = 50, a = 220 }
    }
}

-- Spawn-area rental hub (single location)
Config.RentalLocations = {
    [1] = {
        id = 'spawn_hub',
        label = 'Spawn Hub',
        rental_coords = vector4(-546.6, -644.99, 32.23, 356.0),
        return_coords = vec3(-541.07, -647.63, 32.08),
        spawn_coords = vector4(-548.01, -647.75, 32.08, 87.13),
        default_veh = 'bmx',
        chosen_veh = 'bmx',
        active = true
    }
}

-- Catalog (supports bikes and other vehicle types)
Config.Vehicles = {
    [1] = { model = 'bmx', label = 'BMX', rental_cost = 12, return_reimbursement = 2, deposit = 30, available = true },
    [2] = { model = 'cruiser', label = 'Cruiser', rental_cost = 10, return_reimbursement = 1, deposit = 20, available = true },
    [3] = { model = 'scorcher', label = 'Scorcher', rental_cost = 15, return_reimbursement = 3, deposit = 30, available = true },
    [4] = { model = 'faggio', label = 'Faggio', rental_cost = 35, return_reimbursement = 8, deposit = 120, available = true }
}

-- Backward compatibility alias
Config.Bikes = Config.Vehicles