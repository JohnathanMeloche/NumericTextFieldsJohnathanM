-- This program generates random numbers 
-- then it asks the user a random math question
-- and finally then displays if they got it right or wrong
-- Johnathan M ICS20
-- Numeric Text Fields

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

  -------------------
--| Local Variables |
  -------------------
--loads Ting sound effect
local Ting = audio.loadSound("Sounds/ding.mp3")
--channel for Ting
local playTing
--params for TIng Sound
local optionsTing = 
{
	channel = 1,
	duration = 1000
}
audio.setVolume ( 1, optionsTing)

--loads background music file
local backgroundMusic = audio.loadSound ("Sounds/Party.mp3")
-- create channel for background music
local backgroundMusicChannel
--sets params for background music
local optionsbackgroundMusic =
{
	channel = 2
}
audio.setVolume ( 0.01, optionsbackgroundMusic)
	backgroundMusicChannel = audio.play (backgroundMusic)


--background image
local backgroundImage = display.newImageRect("Images/background.jpg", 1920, 1920)

	--centers the background image
	backgroundImage.x = display.contentWidth/2
	backgroundImage.y = display.contentWidth/2

--background rectangle image
local backgroundrect = display.newImageRect("Images/rectblue.jpg", 1950, 600)
	
	--properties of backgroundrect
	backgroundrect.x = display.contentWidth/2
	backgroundrect.y = 1170
	backgroundrect.strokeWidth = 30
	backgroundrect:setStrokeColor(1, .5, 0)

-- text that shows when redbutton has been clicked or touched
local clicktext = display.newText("Correct!", 500, 500, "Images/vinet.ttf", 140)
	clicktext.isVisible = false
	clicktext:setFillColor(1, 0.2, 0)

--local particles = require("particles")

local pex = require "pony.com.ponywolf.pex"

--[[
local questionObject

local numericField

local randomNumber1

local randomNumber2

local userAnswer

local correctAnswer
]]--

local particle = pex.load("Images/particle.pex", "Images/texture.png")

--local particle = pex.load(particles.part_fire_pex, particles.part_fire_tex)

local emitter = display.newEmitter(particle)
	emitter.x = display.contentCenterX
	emitter.y = display.contentCenterY



-- creates variable and sets properties for Red Button
local redbutton = display.newImageRect("Images/Redbutton.png", 400, 200)
	redbutton.x = display.contentWidth/2
	redbutton.y = 1140
	redbutton.isVisible = true

-- sets emitter parameters
local emitterparams = {
    startColorAlpha = 1,
    startParticleSizeVariance = 53.47,
    startColorGreen = 0.3031555,
    yCoordFlipped = -1,
    blendFuncSource = 770,
    rotatePerSecondVariance = 153.95,
    particleLifespan = 0.7237,
    tangentialAcceleration = -144.74,
    finishColorBlue = 0,
    finishColorGreen = 0,
    blendFuncDestination = 1,
    startParticleSize = 80,
    startColorRed = 1,
    textureFileName = "Images/fire.png",
    startColorVarianceAlpha = 1,
    maxParticles = 900,
    finishParticleSize = 1600,
    duration = -1,
    finishColorRed = 1,
    maxRadiusVariance = 72.63,
    finishParticleSizeVariance = 64,
    gravityy = -700,
    speedVariance = 90.79,
    tangentialAccelVariance = -92.11,
    angleVariance = -142.62,
    angle = -244.11
}
 
-- Create the emitter
local firemitter = display.newEmitter(emitterparams)
 
-- Center the emitter within the content area
	firemitter.x = 500
	firemitter.y = 500
	firemitter.isVisible = false



-- function for blue button to change when touched
local function Redbuttonclick(touch)

	if (touch.phase == "began") then
		redbutton.isVisible = false
		clicktext.isVisible = true
		emitter.isVisible = true
		playTing = audio.play (Ting)
	end

	if (touch.phase == "ended") then
		redbutton.isVisible = true
		clicktext.isVisible = false
		emitter.isVisible = false
	end

end







-- event listeners for the respective functions
redbutton:addEventListener("touch", Redbuttonclick)








