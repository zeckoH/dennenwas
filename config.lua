Config = {}

Config.WaitingTime = 5000
Config.TakePercentage = true
Config.WashPercentage = 0.90 -- Witwas percentage
Config.ProducingTime = math.random(60, 120) --  TIJD IN MACHINE IN SECONDEN (!)
Config.CountingTime = math.random(90, 120) -- AFTELTIJD IN SECONDEN (!)

Config.Locations = {
    washinglab = {
        teleporters = {
            enter = vector3(-2758.1433, 2239.8872, 4.2996),
            exit = vector3(1138.13, -3199.07, -39.67)
        },
        process = {
            start = vector3(-2768.2712, 2260.9331, 3.6800),
            timer = vector3(-2770.2520, 2259.1519, 3.6800),
            output = vector3(-2772.5981, 2257.4155, 3.6800),
            cutter = vector3(-2770.2275, 2262.6094, 3.6800),
            counter = vector3(-2775.3826, 2260.3635, 3.6800)
        }
    }
}
