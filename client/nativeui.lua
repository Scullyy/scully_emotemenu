UIMenuRectangle = setmetatable({}, UIMenuRectangle)
UIMenuRectangle.__index = UIMenuRectangle
UIMenuRectangle.__call = function() return 'Rectangle' end

UIMenuText = setmetatable({}, UIMenuText)
UIMenuText.__index = UIMenuText
UIMenuText.__call = function() return 'Text' end

UIMenuSprite = setmetatable({}, UIMenuSprite)
UIMenuSprite.__index = UIMenuSprite
UIMenuSprite.__call = function() return 'Sprite' end

UIMenuItem = setmetatable({}, UIMenuItem)
UIMenuItem.__index = UIMenuItem
UIMenuItem.__call = function() return 'UIMenuItem', 'UIMenuItem' end

UIMenuCheckboxItem = setmetatable({}, UIMenuCheckboxItem)
UIMenuCheckboxItem.__index = UIMenuCheckboxItem
UIMenuCheckboxItem.__call = function() return 'UIMenuItem', 'UIMenuCheckboxItem' end

UIMenuListItem = setmetatable({}, UIMenuListItem)
UIMenuListItem.__index = UIMenuListItem
UIMenuListItem.__call = function() return 'UIMenuItem', 'UIMenuListItem' end

UIMenuSliderItem = setmetatable({}, UIMenuSliderItem)
UIMenuSliderItem.__index = UIMenuSliderItem
UIMenuSliderItem.__call = function() return 'UIMenuItem', 'UIMenuSliderItem' end

UIMenuColouredItem = setmetatable({}, UIMenuColouredItem)
UIMenuColouredItem.__index = UIMenuColouredItem
UIMenuColouredItem.__call = function() return 'UIMenuItem', 'UIMenuColouredItem' end

UIMenuProgressItem = setmetatable({}, UIMenuProgressItem)
UIMenuProgressItem.__index = UIMenuProgressItem
UIMenuProgressItem.__call = function() return 'UIMenuItem', 'UIMenuProgressItem' end

UIMenuHeritageWindow = setmetatable({}, UIMenuHeritageWindow)
UIMenuHeritageWindow.__index = UIMenuHeritageWindow
UIMenuHeritageWindow.__call = function() return 'UIMenuWindow', 'UIMenuHeritageWindow' end

UIMenuGridPanel = setmetatable({}, UIMenuGridPanel)
UIMenuGridPanel.__index = UIMenuGridPanel
UIMenuGridPanel.__call = function() return 'UIMenuPanel', 'UIMenuGridPanel' end

UIMenuColourPanel = setmetatable({}, UIMenuColourPanel)
UIMenuColourPanel.__index = UIMenuColourPanel
UIMenuColourPanel.__call = function() return 'UIMenuPanel', 'UIMenuColourPanel' end

UIMenuPercentagePanel = setmetatable({}, UIMenuPercentagePanel)
UIMenuPercentagePanel.__index = UIMenuPercentagePanel
UIMenuPercentagePanel.__call = function() return 'UIMenuPanel', 'UIMenuPercentagePanel' end

UIMenu = setmetatable({}, UIMenu)
UIMenu.__index = UIMenu
UIMenu.__call = function() return 'UIMenu' end

UIMenuHandler = setmetatable({}, UIMenuHandler)
UIMenuHandler.__index = UIMenuHandler

CharacterMap = { [' '] = 6, ['!'] = 6, ['"'] = 6, ['#'] = 11,['$'] = 10, ['%'] = 17,['&'] = 13, ['\\'] = 4,['('] = 6, [')'] = 6,['*'] = 7, ['+'] = 10, [','] = 4, ['-'] = 6,  ['.'] = 4,  ['/'] = 7,  ['0'] = 12, ['1'] = 7,  ['2'] = 11, ['3'] = 11, ['4'] = 11, ['5'] = 11, ['6'] = 12, ['7'] = 10, ['8'] = 11, ['9'] = 11, [':'] = 5,  [';'] = 4,  ['<'] = 9,  ['='] = 9,  ['>'] = 9,  ['?'] = 10, ['@'] = 15, ['A'] = 12, ['B'] = 13, ['C'] = 14, ['D'] = 14, ['E'] = 12, ['F'] = 12, ['G'] = 15, ['H'] = 14, ['I'] = 5,  ['J'] = 11, ['K'] = 13, ['L'] = 11, ['M'] = 16, ['N'] = 14, ['O'] = 16, ['P'] = 12, ['Q'] = 15, ['R'] = 13, ['S'] = 12, ['T'] = 11, ['U'] = 13, ['V'] = 12, ['W'] = 18, ['X'] = 11, ['Y'] = 11, ['Z'] = 12, ['['] = 6,  [']'] = 6,  ['^'] = 9,  ['_'] = 18, ['`'] = 8,  ['a'] = 11, ['b'] = 12, ['c'] = 11, ['d'] = 12, ['e'] = 12, ['f'] = 5,  ['g'] = 13, ['h'] = 11, ['i'] = 4,  ['j'] = 4,  ['k'] = 10, ['l'] = 4,  ['m'] = 18, ['n'] = 11, ['o'] = 12, ['p'] = 12, ['q'] = 12, ['r'] = 7,  ['s'] = 9,  ['t'] = 5,  ['u'] = 11, ['v'] = 10, ['w'] = 14, ['x'] = 9,  ['y'] = 10, ['z'] = 9,  ['{'] = 6,  ['|'] = 3,  ['}'] = 6 }

Badges = {
    {
        texture = { normal = '', selected = '' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'mp_medal_bronze', selected = 'mp_medal_bronze' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'mp_medal_gold', selected = 'mp_medal_gold' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'medal_silver', selected = 'medal_silver' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'mp_alerttriangle', selected = 'mp_alerttriangle' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'mp_hostcrown', selected = 'mp_hostcrown' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_ammo_icon_a', selected = 'shop_ammo_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_armour_icon_a', selected = 'shop_armour_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_barber_icon_a', selected = 'shop_barber_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_clothing_icon_a', selected = 'shop_clothing_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_franklin_icon_a', selected = 'shop_franklin_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_garage_bike_icon_a', selected = 'shop_garage_bike_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_garage_icon_a', selected = 'shop_garage_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_gunclub_icon_a', selected = 'shop_gunclub_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_health_icon_a', selected = 'shop_health_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_makeup_icon_a', selected = 'shop_makeup_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_mask_icon_a', selected = 'shop_mask_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_michael_icon_a', selected = 'shop_michael_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_new_star', selected = 'shop_new_star' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_tattoos_icon_a', selected = 'shop_tattoos_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_trevor_icon_a', selected = 'shop_trevor_icon_b' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_lock', selected = 'shop_lock' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'shop_tick_icon', selected = 'shop_tick_icon' },
        dictionary = 'commonmenu'
    },
    {
        texture = { normal = 'keyboard_icon', selected = 'keyboard_icon' },
        dictionary = 'menubuilder'
    }
}

local tonumber = tonumber
local tostring = tostring
local GetActiveScreenResolution = GetActiveScreenResolution
local GetScreenResolution = GetScreenResolution
local GetControlNormal = GetControlNormal
local GetSafeZoneSize = GetSafeZoneSize
local IsUsingKeyboard = IsUsingKeyboard
local DrawRect = DrawRect
local AddTextComponentSubstringPlayerName = AddTextComponentSubstringPlayerName
local BeginTextCommandGetWidth = BeginTextCommandGetWidth
local EndTextCommandGetWidth = EndTextCommandGetWidth
local SetTextFont = SetTextFont
local SetTextScale = SetTextScale
local SetTextColour = SetTextColour
local SetTextDropShadow = SetTextDropShadow
local SetTextOutline = SetTextOutline
local SetTextCentre = SetTextCentre
local SetTextRightJustify = SetTextRightJustify
local SetTextWrap = SetTextWrap
local BeginTextCommandDisplayText = BeginTextCommandDisplayText
local EndTextCommandDisplayText = EndTextCommandDisplayText
local HasStreamedTextureDictLoaded = HasStreamedTextureDictLoaded
local RequestStreamedTextureDict = RequestStreamedTextureDict
local DrawSprite = DrawSprite
local IsDisabledControlJustReleased = IsDisabledControlJustReleased
local IsDisabledControlJustPressed = IsDisabledControlJustPressed
local IsDisabledControlPressed = IsDisabledControlPressed
local HasScaleformMovieLoaded = HasScaleformMovieLoaded
local RequestScaleformMovie = RequestScaleformMovie
local EnableAllControlActions = EnableAllControlActions
local DisableAllControlActions = DisableAllControlActions
local EnableControlAction = EnableControlAction
local HideHudComponentThisFrame = HideHudComponentThisFrame
local DrawScaleformMovieFullscreen = DrawScaleformMovieFullscreen
local SetScriptGfxAlign = SetScriptGfxAlign
local SetScriptGfxAlignParams = SetScriptGfxAlignParams
local ResetScriptGfxAlign = ResetScriptGfxAlign
local ShowCursorThisFrame = ShowCursorThisFrame
local SetGameplayCamRelativeHeading = SetGameplayCamRelativeHeading
local SetMouseCursorSprite = SetMouseCursorSprite

local function normalizeToResolution(Value, Value2)
    return Value / 1920, Value2 / 1080
end

local function roundDecimals(num, numDecimalPlaces)
    return tonumber(string.format('%.' .. (numDecimalPlaces or 0) .. 'f', num))
end

local function toBool(input)
    if input == 'true' or tonumber(input) == 1 or input == true then
        return true
    else
        return false
    end
end

local function splitString(inputstr, sep)
    if sep == nil then sep = '%s' end

    local t = {}
    local i = 1

    for str in string.gmatch(inputstr, '([^'..sep..']+)') do
        t[i] = str
        i = i + 1
    end

    return t
end

local function stringStarts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end

local function isMouseInBounds(X, Y, Width, Height)
    local MX, MY = roundDecimals(GetControlNormal(0, 239) * 1920), roundDecimals(GetControlNormal(0, 240) * 1080)

    MX, MY = normalizeToResolution(MX, MY)
    X, Y = normalizeToResolution(X, Y)
    Width, Height = normalizeToResolution(Width, Height)

    return (MX >= X and MX <= X + Width) and (MY > Y and MY < Y + Height)
end

local function getSafeZoneBounds()
    local SafeSize = GetSafeZoneSize()

    SafeSize = roundDecimals(SafeSize, 2)
    SafeSize = (SafeSize * 100) - 90
    SafeSize = 10 - SafeSize

    local W, H = 1920, 1080

    return {X = roundDecimals(SafeSize * ((W/H) * 5.4)), Y = roundDecimals(SafeSize * 5.4)}
end

local function getCharacterCount(str)
    local characters = 0

    for c in str:gmatch('[%z\1-\127\194-\244][\128-\191]*') do
        local a = c:byte(1, -1)

        if a ~= nil then
            characters = characters + 1
        end
    end

    return characters
end

local function getByteCount(str)
    local bytes = 0

    for c in str:gmatch('[%z\1-\127\194-\244][\128-\191]*') do
        local a,b,c,d = c:byte(1, -1)

        if a ~= nil then
            bytes = bytes + 1
        end
        if b ~= nil then
            bytes = bytes + 1
        end
        if c ~= nil then
            bytes = bytes + 1
        end
        if d ~= nil then
            bytes = bytes + 1
        end
    end

    return bytes
end

local function addLongStringForAscii(str)
    local maxbytelength = 99

    for i = 0, getCharacterCount(str), 99 do
        AddTextComponentSubstringPlayerName(string.sub(str, i, math.min(maxbytelength, getCharacterCount(str) - i)))
    end
end

local function addLongStringForUtf8(str)
    local maxbytelength = 99
    local bytecount = getByteCount(str)

    if bytecount < maxbytelength then
        AddTextComponentSubstringPlayerName(str)
        return
    end

    local startIndex = 0

    for i = 0, getCharacterCount(str), 1 do
        local length = i - startIndex

        if getByteCount(string.sub(str, startIndex, length)) > maxbytelength then
            AddTextComponentSubstringPlayerName(string.sub(str, startIndex, length - 1))

            i = i - 1
            startIndex = startIndex + (length - 1)
        end
    end

    AddTextComponentSubstringPlayerName(string.sub(str, startIndex, getCharacterCount(str) - startIndex))
end

local function addLongString(str)
    local bytecount = getByteCount(str)

    if bytecount == getCharacterCount(str) then
        addLongStringForAscii(str)
    else
        addLongStringForUtf8(str)
    end
end

local function measureStringWidthNoConvert(str, font, scale)
    BeginTextCommandGetWidth('STRING')
    addLongString(str)
    SetTextFont(font or 0)
    SetTextScale(1.0, scale or 0)

    return EndTextCommandGetWidth(true)
end

local function measureStringWidth(str, font, scale)
    return measureStringWidthNoConvert(str, font, scale) * 1920
end

local function measureString(str)
    local output = 0

    for i = 1, getCharacterCount(str), 1 do
        if CharacterMap[string.sub(str, i, i)] then
            output = output + CharacterMap[string.sub(str, i, i)] + 1
        end
    end

    return output
end

local function getBadge(id, selected)
    if not id then id = 1 end

    local badge = Badges[id] or Badges[1]

    return {
        texture = selected and badge.texture.selected or badge.texture.normal,
        dictionary = badge.dictionary,
        color = selected and {0, 0, 0, 255} or {255, 255, 255, 255}
    }
end

function UIMenuRectangle.New(X, Y, Width, Height, R, G, B, A)
    local _UIResRectangle = {
        X = tonumber(X) or 0,
        Y = tonumber(Y) or 0,
        Width = tonumber(Width) or 0,
        Height = tonumber(Height) or 0,
        _Colour = {R = tonumber(R) or 255, G = tonumber(G) or 255, B = tonumber(B) or 255, A = tonumber(A) or 255},
    }

    return setmetatable(_UIResRectangle, UIMenuRectangle)
end

function UIMenuRectangle:Position(X, Y)
    if tonumber(X) and tonumber(Y) then
        self.X = tonumber(X)
        self.Y = tonumber(Y)
    else
        return {X = self.X, Y = self.Y}
    end
end

function UIMenuRectangle:Size(Width, Height)
    if tonumber(Width) and tonumber(Height) then
        self.Width = tonumber(Width)
        self.Height = tonumber(Height)
    else
        return {Width = self.Width, Height = self.Height}
    end
end

function UIMenuRectangle:Color(R, G, B, A)
    if tonumber(R) or tonumber(G) or tonumber(B) or tonumber(A) then
        self._Colour.R = tonumber(R) or 255
        self._Colour.B = tonumber(B) or 255
        self._Colour.G = tonumber(G) or 255
        self._Colour.A = tonumber(A) or 255
    else
        return self._Colour
    end
end

function UIMenuRectangle:Draw()
    local Position = self:Position()
    local Size = self:Size()

    Size.Width, Size.Height = normalizeToResolution(Size.Width, Size.Height)
    Position.X, Position.Y = normalizeToResolution(Position.X, Position.Y)

    DrawRect(Position.X + Size.Width * 0.5, Position.Y + Size.Height * 0.5, Size.Width, Size.Height, self._Colour.R, self._Colour.G, self._Colour.B, self._Colour.A)
end

function UIMenuText.New(Text, X, Y, Scale, R, G, B, A, Font, Alignment, DropShadow, Outline, WordWrap)
    local _UIResText = {
        _Text = tostring(Text) or '',
        X = tonumber(X) or 0,
        Y = tonumber(Y) or 0,
        Scale = tonumber(Scale) or 0,
        _Colour = {R = tonumber(R) or 255, G = tonumber(G) or 255, B = tonumber(B) or 255, A = tonumber(A) or 255},
        Font = tonumber(Font) or 0,
        Alignment = Alignment or nil,
        DropShadow = DropShadow or nil,
        Outline = Outline or nil,
        WordWrap = tonumber(WordWrap) or 0,
    }

    return setmetatable(_UIResText, UIMenuText)
end

function UIMenuText:Position(X, Y)
    if tonumber(X) and tonumber(Y) then
        self.X = tonumber(X)
        self.Y = tonumber(Y)
    else
        return {X = self.X, Y = self.Y}
    end
end

function UIMenuText:Color(R, G, B, A)
    if tonumber(R) and tonumber(G) and tonumber(B) and tonumber(A) then
        self._Colour.R = tonumber(R)
        self._Colour.B = tonumber(B)
        self._Colour.G = tonumber(G)
        self._Colour.A = tonumber(A)
    else
        return self._Colour
    end
end

function UIMenuText:Text(Text)
    if tostring(Text) and Text ~= nil then
        self._Text = tostring(Text)
    else
        return self._Text
    end
end

function UIMenuText:Draw()
    local Position = self:Position()

    Position.X, Position.Y = normalizeToResolution(Position.X, Position.Y)

    SetTextFont(self.Font)
    SetTextScale(1.0, self.Scale)
    SetTextColour(self._Colour.R, self._Colour.G, self._Colour.B, self._Colour.A)

    if self.DropShadow then
        SetTextDropShadow()
    end
    if self.Outline then
        SetTextOutline()
    end

    if self.Alignment ~= nil then
        if self.Alignment == 1 or self.Alignment == 'Center' or self.Alignment == 'Centre' then
            SetTextCentre(true)
        elseif self.Alignment == 2 or self.Alignment == 'Right' then
            SetTextRightJustify(true)
            SetTextWrap(0, Position.X)
        end
    end

    if tonumber(self.WordWrap) then
        if tonumber(self.WordWrap) ~= 0 then
            local Width, _ = GetScreenResolution()

            SetTextWrap(Position.X, Position.X + (tonumber(self.WordWrap) / Width))
        end
    end

    BeginTextCommandDisplayText('STRING')
    addLongString(self._Text)
    EndTextCommandDisplayText(Position.X, Position.Y)
end

function UIMenuSprite.New(TxtDictionary, TxtName, X, Y, Width, Height, Heading, R, G, B, A)
    local _Sprite = {
        TxtDictionary = tostring(TxtDictionary),
        TxtName = tostring(TxtName),
        X = tonumber(X) or 0,
        Y = tonumber(Y) or 0,
        Width = tonumber(Width) or 0,
        Height = tonumber(Height) or 0,
        Heading = tonumber(Heading) or 0,
        _Colour = {R = tonumber(R) or 255, G = tonumber(G) or 255, B = tonumber(B) or 255, A = tonumber(A) or 255},
    }

    return setmetatable(_Sprite, UIMenuSprite)
end

function UIMenuSprite:Position(X, Y)
    if tonumber(X) and tonumber(Y) then
        self.X = tonumber(X)
        self.Y = tonumber(Y)
    else
        return {X = self.X, Y = self.Y}
    end
end

function UIMenuSprite:Size(Width, Height)
    if tonumber(Width) and tonumber(Width) then
        self.Width = tonumber(Width)
        self.Height = tonumber(Height)
    else
        return {Width = self.Width, Height = self.Height}
    end
end

function UIMenuSprite:Color(R, G, B, A)
    if tonumber(R) or tonumber(G) or tonumber(B) or tonumber(A) then
        self._Colour.R = tonumber(R) or 255
        self._Colour.B = tonumber(B) or 255
        self._Colour.G = tonumber(G) or 255
        self._Colour.A = tonumber(A) or 255
    else
        return self._Colour
    end
end

function UIMenuSprite:Draw()
    if not HasStreamedTextureDictLoaded(self.TxtDictionary) then
        RequestStreamedTextureDict(self.TxtDictionary, true)
    end

    local Position = self:Position()
    local Size = self:Size()

    Size.Width, Size.Height = normalizeToResolution(Size.Width, Size.Height)
    Position.X, Position.Y = normalizeToResolution(Position.X, Position.Y)

    DrawSprite(self.TxtDictionary, self.TxtName, Position.X + Size.Width * 0.5, Position.Y + Size.Height * 0.5, Size.Width, Size.Height, self.Heading, self._Colour.R, self._Colour.G, self._Colour.B, self._Colour.A)
end

function UIMenuItem.New(Text, Description)
    _UIMenuItem = {
        Rectangle = UIMenuRectangle.New(0, 0, 431, 38, 255, 255, 255, 20),
        Text = UIMenuText.New(tostring(Text) or '', 8, 0, 0.33, 245, 245, 245, 255, 0),
        _Description = tostring(Description) or '';
        SelectedSprite = UIMenuSprite.New('commonmenu', 'gradient_nav', 0, 0, 431, 38),
        LeftBadge = { UIMenuSprite = UIMenuSprite.New('commonmenu', '', 0, 0, 40, 40), Badge = 1},
        RightBadge = { UIMenuSprite = UIMenuSprite.New('commonmenu', '', 0, 0, 40, 40), Badge = 1},
        Label = {
            Text = UIMenuText.New('', 0, 0, 0.35, 245, 245, 245, 255, 0, 'Right'),
            MainColour = {R = 255, G = 255, B = 255, A = 255},
            HighlightColour = {R = 0, G = 0, B = 0, A = 255},
        },
        _Selected = false,
        _Hovered = false,
        _Enabled = true,
        _Offset = {X = 0, Y = 0},
        ParentMenu = nil,
        Panels = {},
        Activated = function(menu, item, panels) end,
        ActivatedPanel = function(menu, item, panel, panelvalue) end,
    }

    return setmetatable(_UIMenuItem, UIMenuItem)
end

function UIMenuItem:SetParentMenu(Menu)
    if Menu ~= nil and Menu() == 'UIMenu' then
        self.ParentMenu = Menu
    else
        return self.ParentMenu
    end
end

function UIMenuItem:Selected(bool)
    if bool ~= nil then
        self._Selected = toBool(bool)
    else
        return self._Selected
    end
end

function UIMenuItem:Hovered(bool)
    if bool ~= nil then
        self._Hovered = toBool(bool)
    else
        return self._Hovered
    end
end

function UIMenuItem:Enabled(bool)
    if bool ~= nil then
        self._Enabled = toBool(bool)
    else
        return self._Enabled
    end
end

function UIMenuItem:Description(str)
    if tostring(str) and str ~= nil then
        self._Description = tostring(str)
    else
        return self._Description
    end
end

function UIMenuItem:Offset(X, Y)
    if tonumber(X) or tonumber(Y) then
        if tonumber(X) then
            self._Offset.X = tonumber(X)
        end

        if tonumber(Y) then
            self._Offset.Y = tonumber(Y)
        end
    else
        return self._Offset
    end
end

function UIMenuItem:Position(Y)
    if tonumber(Y) then
        self.Rectangle:Position(self._Offset.X, Y + 144 + self._Offset.Y)
        self.SelectedSprite:Position(0 + self._Offset.X, Y + 144 + self._Offset.Y)
        self.Text:Position(8 + self._Offset.X, Y + 147 + self._Offset.Y)
        self.LeftBadge.UIMenuSprite:Position(0 + self._Offset.X, Y + 142 + self._Offset.Y)
        self.RightBadge.UIMenuSprite:Position(385 + self._Offset.X, Y + 142 + self._Offset.Y)
        self.Label.Text:Position(420 + self._Offset.X, Y + 148 + self._Offset.Y)
    end
end

function UIMenuItem:RightLabel(Text, MainColour, HighlightColour)
    if tostring(Text) and Text ~= nil then
        if type(MainColour) == 'table' then
            self.Label.MainColour = MainColour
        end

        if type(HighlightColour) == 'table' then
            self.Label.HighlightColour = HighlightColour
        end

        self.Label.Text:Text(tostring(Text))
    else
        return self.Label.Text:Text()
    end
end

function UIMenuItem:SetLeftBadge(Badge)
    if tonumber(Badge) then
        self.LeftBadge.Badge = tonumber(Badge)
    end
end

function UIMenuItem:SetRightBadge(Badge)
    if tonumber(Badge) then
        self.RightBadge.Badge = tonumber(Badge)
    end
end

function UIMenuItem:Text(Text)
    if tostring(Text) and Text ~= nil then
        self.Text:Text(tostring(Text))
    else
        return self.Text:Text()
    end
end

function UIMenuItem:AddPanel(Panel)
    if Panel() == 'UIMenuPanel' then
        table.insert(self.Panels, Panel)
        Panel:SetParentItem(self)
    end
end

function UIMenuItem:RemovePanelAt(Index)
    if tonumber(Index) then
        if self.Panels[Index] then
            table.remove(self.Panels, tonumber(Index))
        end
    end
end

function UIMenuItem:FindPanelIndex(Panel)
    if Panel() == 'UIMenuPanel' then
        for Index = 1, #self.Panels do
            if self.Panels[Index] == Panel then
                return Index
            end
        end
    end

    return nil
end

function UIMenuItem:FindPanelItem()
    for Index = #self.Items, 1, -1 do
        if self.Items[Index].Panel then
            return Index
        end
    end

    return nil
end

function UIMenuItem:Draw()
    self.Rectangle:Size(431 + self.ParentMenu.WidthOffset, self.Rectangle.Height)
    self.SelectedSprite:Size(431 + self.ParentMenu.WidthOffset, self.SelectedSprite.Height)

    if self._Hovered and not self._Selected then
        self.Rectangle:Draw()
    end

    if self._Selected then
        self.SelectedSprite:Draw()
    end

    if self._Enabled then
        if self._Selected then
            self.Text:Color(0, 0, 0, 255)
            self.Label.Text:Color(self.Label.HighlightColour.R, self.Label.HighlightColour.G, self.Label.HighlightColour.B, self.Label.HighlightColour.A)
        else
            self.Text:Color(245, 245, 245, 255)
            self.Label.Text:Color(self.Label.MainColour.R, self.Label.MainColour.G, self.Label.MainColour.B, self.Label.MainColour.A)
        end
    else
        self.Text:Color(163, 159, 148, 255)
        self.Label.Text:Color(163, 159, 148, 255)
    end

    if self.LeftBadge.Badge == 1 then
        self.Text:Position(8 + self._Offset.X, self.Text.Y)
    else
        local badge = getBadge(self.LeftBadge.Badge, self._Selected)

        self.Text:Position(35 + self._Offset.X, self.Text.Y)
        self.LeftBadge.UIMenuSprite.TxtDictionary = badge.dictionary
        self.LeftBadge.UIMenuSprite.TxtName = badge.texture
        self.LeftBadge.UIMenuSprite:Color(table.unpack(badge.color))
        self.LeftBadge.UIMenuSprite:Draw()
    end

    if self.RightBadge.Badge ~= 1 then
        local badge = getBadge(self.RightBadge.Badge, self._Selected)

        self.RightBadge.UIMenuSprite:Position(385 + self._Offset.X + self.ParentMenu.WidthOffset, self.RightBadge.UIMenuSprite.Y)
        self.RightBadge.UIMenuSprite.TxtDictionary = badge.dictionary
        self.RightBadge.UIMenuSprite.TxtName = badge.texture
        self.RightBadge.UIMenuSprite:Color(table.unpack(badge.color))
        self.RightBadge.UIMenuSprite:Draw()
    end

    if self.Label.Text:Text() ~= '' and string.len(self.Label.Text:Text()) > 0 then
        self.Label.Text:Position(420 + self._Offset.X + self.ParentMenu.WidthOffset, self.Label.Text.Y)
        self.Label.Text:Draw()
    end

    self.Text:Draw()
end

function UIMenuCheckboxItem.New(Text, Check, Description)
    local _UIMenuCheckboxItem = {
        Base = UIMenuItem.New(Text or '', Description or ''),
        CheckedSprite = UIMenuSprite.New('commonmenu', 'shop_box_blank', 410, 95, 50, 50),
        Checked = toBool(Check),
        CheckboxEvent = function(menu, item, checked) end,
    }

    return setmetatable(_UIMenuCheckboxItem, UIMenuCheckboxItem)
end

function UIMenuCheckboxItem:SetParentMenu(Menu)
    if Menu() == 'UIMenu' then
        self.Base.ParentMenu = Menu
    else
        return self.Base.ParentMenu
    end
end

function UIMenuCheckboxItem:Position(Y)
    if tonumber(Y) then
        self.Base:Position(Y)
        self.CheckedSprite:Position(380 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, Y + 138 + self.Base._Offset.Y)
    end
end

function UIMenuCheckboxItem:Selected(bool)
    if bool ~= nil then
        self.Base._Selected = toBool(bool)
    else
        return self.Base._Selected
    end
end

function UIMenuCheckboxItem:Hovered(bool)
    if bool ~= nil then
        self.Base._Hovered = toBool(bool)
    else
        return self.Base._Hovered
    end
end

function UIMenuCheckboxItem:Enabled(bool)
    if bool ~= nil then
        self.Base._Enabled = toBool(bool)
    else
        return self.Base._Enabled
    end
end

function UIMenuCheckboxItem:Description(str)
    if tostring(str) and str ~= nil then
        self.Base._Description = tostring(str)
    else
        return self.Base._Description
    end
end

function UIMenuCheckboxItem:Offset(X, Y)
    if tonumber(X) or tonumber(Y) then
        if tonumber(X) then
            self.Base._Offset.X = tonumber(X)
        end
        if tonumber(Y) then
            self.Base._Offset.Y = tonumber(Y)
        end
    else
        return self.Base._Offset
    end
end

function UIMenuCheckboxItem:Text(Text)
    if tostring(Text) and Text ~= nil then
        self.Base.Text:Text(tostring(Text))
    else
        return self.Base.Text:Text()
    end
end

function UIMenuCheckboxItem:Draw()
    self.Base:Draw()
    self.CheckedSprite:Position(380 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, self.CheckedSprite.Y)

    if self.Base:Selected() then
        if self.Checked then
            self.CheckedSprite.TxtName = 'shop_box_tickb'
        else
            self.CheckedSprite.TxtName = 'shop_box_blankb'
        end
    else
        if self.Checked then
            self.CheckedSprite.TxtName = 'shop_box_tick'
        else
            self.CheckedSprite.TxtName = 'shop_box_blank'
        end
    end

    self.CheckedSprite:Draw()
end

function UIMenuListItem.New(Text, Items, Index, Description)
    if type(Items) ~= 'table' then Items = {} end
    if Index == 0 then Index = 1 end

    local _UIMenuListItem = {
        Base = UIMenuItem.New(Text or '', Description or ''),
        Items = Items,
        LeftArrow = UIMenuSprite.New('commonmenu', 'arrowleft', 110, 105, 30, 30),
        RightArrow = UIMenuSprite.New('commonmenu', 'arrowright', 280, 105, 30, 30),
        ItemText = UIMenuText.New('', 290, 104, 0.35, 255, 255, 255, 255, 0, 'Right'),
        _Index = tonumber(Index) or 1,
        Panels = {},
        OnListChanged = function(menu, item, newindex) end,
        OnListSelected = function(menu, item, newindex) end,
    }

    return setmetatable(_UIMenuListItem, UIMenuListItem)
end

function UIMenuListItem:SetParentMenu(Menu)
    if Menu ~= nil and Menu() == 'UIMenu' then
        self.Base.ParentMenu = Menu
    else
        return self.Base.ParentMenu
    end
end

function UIMenuListItem:Position(Y)
    if tonumber(Y) then
        self.LeftArrow:Position(300 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, 147 + Y + self.Base._Offset.Y)
        self.RightArrow:Position(400 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, 147 + Y + self.Base._Offset.Y)
        self.ItemText:Position(300 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, 147 + Y + self.Base._Offset.Y)
        self.Base:Position(Y)
    end
end

function UIMenuListItem:Selected(bool)
    if bool ~= nil then
        self.Base._Selected = toBool(bool)
    else
        return self.Base._Selected
    end
end

function UIMenuListItem:Hovered(bool)
    if bool ~= nil then
        self.Base._Hovered = toBool(bool)
    else
        return self.Base._Hovered
    end
end

function UIMenuListItem:Enabled(bool)
    if bool ~= nil then
        self.Base._Enabled = toBool(bool)
    else
        return self.Base._Enabled
    end
end

function UIMenuListItem:Description(str)
    if tostring(str) and str ~= nil then
        self.Base._Description = tostring(str)
    else
        return self.Base._Description
    end
end

function UIMenuListItem:Offset(X, Y)
    if tonumber(X) or tonumber(Y) then
        if tonumber(X) then
            self.Base._Offset.X = tonumber(X)
        end

        if tonumber(Y) then
            self.Base._Offset.Y = tonumber(Y)
        end
    else
        return self.Base._Offset
    end
end

function UIMenuListItem:Text(Text)
    if tostring(Text) and Text ~= nil then
        self.Base.Text:Text(tostring(Text))
    else
        return self.Base.Text:Text()
    end
end

function UIMenuListItem:Index(Index)
    if tonumber(Index) then
        if tonumber(Index) > #self.Items then
            self._Index = 1
        elseif tonumber(Index) < 1 then
            self._Index = #self.Items
        else
            self._Index = tonumber(Index)
        end
    else
        return self._Index
    end
end

function UIMenuListItem:ItemToIndex(Item)
    for i = 1, #self.Items do
        if type(Item) == type(self.Items[i]) and Item == self.Items[i] then
            return i
        elseif type(self.Items[i]) == 'table' and (type(Item) == type(self.Items[i].Name) or type(Item) == type(self.Items[i].Value)) and (Item == self.Items[i].Name or Item == self.Items[i].Value) then
            return i
        end
    end
end

function UIMenuListItem:IndexToItem(Index)
    if tonumber(Index) then
        if tonumber(Index) == 0 then Index = 1 end

        if self.Items[tonumber(Index)] then
            return self.Items[tonumber(Index)]
        end
    end
end

function UIMenuListItem:AddPanel(Panel)
    if Panel() == 'UIMenuPanel' then
        table.insert(self.Panels, Panel)
        Panel:SetParentItem(self)
    end
end

function UIMenuListItem:RemovePanelAt(Index)
    if tonumber(Index) then
        if self.Panels[Index] then
            table.remove(self.Panels, tonumber(Index))
        end
    end
end

function UIMenuListItem:FindPanelIndex(Panel)
    if Panel() == 'UIMenuPanel' then
        for Index = 1, #self.Panels do
            if self.Panels[Index] == Panel then
                return Index
            end
        end
    end

    return nil
end

function UIMenuListItem:FindPanelItem()
    for Index = #self.Items, 1, -1 do
        if self.Items[Index].Panel then
            return Index
        end
    end

    return nil
end

function UIMenuListItem:Draw()
    self.Base:Draw()

    if self:Enabled() then
        if self:Selected() then
            self.ItemText:Color(0, 0, 0, 255)
            self.LeftArrow:Color(0, 0, 0, 255)
            self.RightArrow:Color(0, 0, 0, 255)
        else
            self.ItemText:Color(245, 245, 245, 255)
            self.LeftArrow:Color(245, 245, 245, 255)
            self.RightArrow:Color(245, 245, 245, 255)
        end
    else
        self.ItemText:Color(163, 159, 148, 255)
        self.LeftArrow:Color(163, 159, 148, 255)
        self.RightArrow:Color(163, 159, 148, 255)
    end

    local Text = (type(self.Items[self._Index]) == 'table') and tostring(self.Items[self._Index].Name) or tostring(self.Items[self._Index])
    local Offset = measureStringWidth(Text, 0, 0.35)

    self.ItemText:Text(Text)
    self.LeftArrow:Position(378 - Offset + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, self.LeftArrow.Y)

    if self:Selected() then
        self.LeftArrow:Draw()
        self.RightArrow:Draw()
        self.ItemText:Position(403 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, self.ItemText.Y)
    else
        self.ItemText:Position(418 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, self.ItemText.Y)
    end

    self.ItemText:Draw()
end

function UIMenuSliderItem.New(Text, Items, Index, Description, Divider)
    if type(Items) ~= 'table' then Items = {} end
    if Index == 0 then Index = 1 end

    local _UIMenuSliderItem = {
        Base = UIMenuItem.New(Text or '', Description or ''),
        Items = Items,
        ShowDivider = toBool(Divider),
        LeftArrow = UIMenuSprite.New('commonmenutu', 'arrowleft', 0, 105, 15, 15),
        RightArrow = UIMenuSprite.New('commonmenutu', 'arrowright', 0, 105, 15, 15),
        Background = UIMenuRectangle.New(0, 0, 150, 9, 15, 24, 33, 255),
        Slider = UIMenuRectangle.New(0, 0, 75, 9, 72,109,149, 255),
        Divider = UIMenuRectangle.New(0, 0, 2.5, 20, 245, 245, 245, 255),
        _Index = tonumber(Index) or 1,
        OnSliderChanged = function(menu, item, newindex) end,
        OnSliderSelected = function(menu, item, newindex) end,
    }

    return setmetatable(_UIMenuSliderItem, UIMenuSliderItem)
end

function UIMenuSliderItem:SetParentMenu(Menu)
    if Menu() == 'UIMenu' then
        self.Base.ParentMenu = Menu
    else
        return self.Base.ParentMenu
    end
end

function UIMenuSliderItem:Position(Y)
    if tonumber(Y) then
        self.Background:Position(250 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, Y + 158.5 + self.Base._Offset.Y)
        self.Slider:Position(250 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, Y + 158.5 + self.Base._Offset.Y)
        self.Divider:Position(323.5 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, Y + 153 + self.Base._Offset.Y)
        self.LeftArrow:Position(235 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, 155.5 + Y + self.Base._Offset.Y)
        self.RightArrow:Position(400 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, 155.5 + Y + self.Base._Offset.Y)
        self.Base:Position(Y)
    end
end

function UIMenuSliderItem:Selected(bool)
    if bool ~= nil then
        self.Base._Selected = toBool(bool)
    else
        return self.Base._Selected
    end
end

function UIMenuSliderItem:Hovered(bool)
    if bool ~= nil then
        self.Base._Hovered = toBool(bool)
    else
        return self.Base._Hovered
    end
end

function UIMenuSliderItem:Enabled(bool)
    if bool ~= nil then
        self.Base._Enabled = toBool(bool)
    else
        return self.Base._Enabled
    end
end

function UIMenuSliderItem:Description(str)
    if tostring(str) and str ~= nil then
        self.Base._Description = tostring(str)
    else
        return self.Base._Description
    end
end

function UIMenuSliderItem:Offset(X, Y)
    if tonumber(X) or tonumber(Y) then
        if tonumber(X) then
            self.Base._Offset.X = tonumber(X)
        end

        if tonumber(Y) then
            self.Base._Offset.Y = tonumber(Y)
        end
    else
        return self.Base._Offset
    end
end

function UIMenuSliderItem:Text(Text)
    if tostring(Text) and Text ~= nil then
        self.Base.Text:Text(tostring(Text))
    else
        return self.Base.Text:Text()
    end
end

function UIMenuSliderItem:Index(Index)
    if tonumber(Index) then
        if tonumber(Index) > #self.Items then
            self._Index = 1
        elseif tonumber(Index) < 1 then
            self._Index = #self.Items
        else
            self._Index = tonumber(Index)
        end
    else
        return self._Index
    end
end

function UIMenuSliderItem:ItemToIndex(Item)
    for i = 1, #self.Items do
        if type(Item) == type(self.Items[i]) and Item == self.Items[i] then
            return i
        end
    end
end

function UIMenuSliderItem:IndexToItem(Index)
    if tonumber(Index) then
        if tonumber(Index) == 0 then Index = 1 end
        if self.Items[tonumber(Index)] then
            return self.Items[tonumber(Index)]
        end
    end
end

function UIMenuSliderItem:Draw()
    self.Base:Draw()

    if self:Enabled() then
        if self:Selected() then
            self.LeftArrow:Color(0, 0, 0, 255)
            self.RightArrow:Color(0, 0, 0, 255)
        else
            self.LeftArrow:Color(245, 245, 245, 255)
            self.RightArrow:Color(245, 245, 245, 255)
        end
    else
        self.LeftArrow:Color(163, 159, 148, 255)
        self.RightArrow:Color(163, 159, 148, 255)
    end

    local Offset = ((self.Background.Width - self.Slider.Width)/(#self.Items - 1)) * (self._Index-1)

    self.Slider:Position(250 + self.Base._Offset.X + Offset + self.Base.ParentMenu.WidthOffset, self.Slider.Y)

    if self:Selected() then
        self.LeftArrow:Draw()
        self.RightArrow:Draw()
    end

    self.Background:Draw()
    self.Slider:Draw()

    if self.ShowDivider then
        self.Divider:Draw()
    end
end

function UIMenuColouredItem.New(Text, Description, MainColour, HighlightColour)
    if type(Color) ~= 'table' then Color = {R = 0, G = 0, B = 0, A = 255} end
    if type(HighlightColour) ~= 'table' then Color = {R = 255, G = 255, B = 255, A = 255} end

    local _UIMenuColouredItem = {
        Base = UIMenuItem.New(Text or '', Description or ''),
        Rectangle = UIMenuRectangle.New(0, 0, 431, 38, MainColour.R, MainColour.G, MainColour.B, MainColour.A),
        MainColour = MainColour,
        HighlightColour = HighlightColour,
        Activated = function(menu, item) end,
    }

    _UIMenuColouredItem.Base.SelectedSprite:Color(HighlightColour.R, HighlightColour.G, HighlightColour.B, HighlightColour.A)

    return setmetatable(_UIMenuColouredItem, UIMenuColouredItem)
end

function UIMenuColouredItem:SetParentMenu(Menu)
    if Menu() == 'UIMenu' then
        self.Base.ParentMenu = Menu
    else
        return self.Base.ParentMenu
    end
end

function UIMenuColouredItem:Position(Y)
    if tonumber(Y) then
        self.Base:Position(Y)
        self.Rectangle:Position(self.Base._Offset.X, Y + 144 + self.Base._Offset.Y)
    end
end

function UIMenuColouredItem:Selected(bool)
    if bool ~= nil then
        self.Base._Selected = toBool(bool)
    else
        return self.Base._Selected
    end
end

function UIMenuColouredItem:Hovered(bool)
    if bool ~= nil then
        self.Base._Hovered = toBool(bool)
    else
        return self.Base._Hovered
    end
end

function UIMenuColouredItem:Enabled(bool)
    if bool ~= nil then
        self.Base._Enabled = toBool(bool)
    else
        return self.Base._Enabled
    end
end

function UIMenuColouredItem:Description(str)
    if tostring(str) and str ~= nil then
        self.Base._Description = tostring(str)
    else
        return self.Base._Description
    end
end

function UIMenuColouredItem:Offset(X, Y)
    if tonumber(X) or tonumber(Y) then
        if tonumber(X) then
            self.Base._Offset.X = tonumber(X)
        end

        if tonumber(Y) then
            self.Base._Offset.Y = tonumber(Y)
        end
    else
        return self.Base._Offset
    end
end

function UIMenuColouredItem:Text(Text)
    if tostring(Text) and Text ~= nil then
        self.Base.Text:Text(tostring(Text))
    else
        return self.Base.Text:Text()
    end
end

function UIMenuColouredItem:RightLabel(Text, MainColour, HighlightColour)
    if tostring(Text) and Text ~= nil then
        if type(MainColour) == 'table' then
            self.Base.Label.MainColour = MainColour
        end

        if type(HighlightColour) == 'table' then
            self.Base.Label.HighlightColour = HighlightColour
        end

        self.Base.Label.Text:Text(tostring(Text))
    else
        return self.Base.Label.Text:Text()
    end
end

function UIMenuColouredItem:SetLeftBadge(Badge)
    if tonumber(Badge) then
        self.Base.LeftBadge.Badge = tonumber(Badge)
    end
end

function UIMenuColouredItem:SetRightBadge(Badge)
    if tonumber(Badge) then
        self.Base.RightBadge.Badge = tonumber(Badge)
    end
end

function UIMenuColouredItem:Draw()
    self.Rectangle:Size(431 + self.ParentMenu.WidthOffset, self.Rectangle.Height)
    self.Rectangle:Draw()
    self.Base:Draw()
end

function UIMenuProgressItem.New(Text, Items, Index, Description, Counter)
    if type(Items) ~= 'table' then Items = {} end
    if Index == 0 then Index = 1 end

    local _UIMenuProgressItem = {
        Base = UIMenuItem.New(Text or '', Description or ''),
        Data = {
            Items = Items,
            Counter = toBool(Counter),
            Max = 407.5,
            Index = tonumber(Index) or 1,
        },
        Background = UIMenuRectangle.New(0, 0, 415, 20),
        Bar = UIMenuRectangle.New(0, 0, 407.5, 12.5),
        OnProgressChanged = function(menu, item, newindex) end,
        OnProgressSelected = function(menu, item, newindex) end,
    }

    _UIMenuProgressItem.Base.Rectangle.Height = 60
    _UIMenuProgressItem.Base.SelectedSprite.Height = 60

    if _UIMenuProgressItem.Data.Counter then
        _UIMenuProgressItem.Base:RightLabel(_UIMenuProgressItem.Data.Index..'/'..#_UIMenuProgressItem.Data.Items)
    else
        _UIMenuProgressItem.Base:RightLabel((type(_UIMenuProgressItem.Data.Items[_UIMenuProgressItem.Data.Index]) == 'table') and tostring(_UIMenuProgressItem.Data.Items[_UIMenuProgressItem.Data.Index].Name) or tostring(_UIMenuProgressItem.Data.Items[_UIMenuProgressItem.Data.Index]))
    end

    _UIMenuProgressItem.Bar.Width = _UIMenuProgressItem.Data.Index/#_UIMenuProgressItem.Data.Items * _UIMenuProgressItem.Data.Max

    return setmetatable(_UIMenuProgressItem, UIMenuProgressItem)
end

function UIMenuProgressItem:SetParentMenu(Menu)
    if Menu() == 'UIMenu' then
        self.Base.ParentMenu = Menu
    else
        return self.Base.ParentMenu
    end
end

function UIMenuProgressItem:Position(Y)
    if tonumber(Y) then
        self.Base:Position(Y)
        self.Background:Position(8 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, 177 + Y + self.Base._Offset.Y)
        self.Bar:Position(11.75 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, 180.75 + Y + self.Base._Offset.Y)
    end
end

function UIMenuProgressItem:Selected(bool)
    if bool ~= nil then
        self.Base._Selected = toBool(bool)
    else
        return self.Base._Selected
    end
end

function UIMenuProgressItem:Hovered(bool)
    if bool ~= nil then
        self.Base._Hovered = toBool(bool)
    else
        return self.Base._Hovered
    end
end

function UIMenuProgressItem:Enabled(bool)
    if bool ~= nil then
        self.Base._Enabled = toBool(bool)
    else
        return self.Base._Enabled
    end
end

function UIMenuProgressItem:Description(str)
    if tostring(str) and str ~= nil then
        self.Base._Description = tostring(str)
    else
        return self.Base._Description
    end
end

function UIMenuProgressItem:Offset(X, Y)
    if tonumber(X) or tonumber(Y) then
        if tonumber(X) then
            self.Base._Offset.X = tonumber(X)
        end
        if tonumber(Y) then
            self.Base._Offset.Y = tonumber(Y)
        end
    else
        return self.Base._Offset
    end
end

function UIMenuProgressItem:Text(Text)
    if tostring(Text) and Text ~= nil then
        self.Base.Text:Text(tostring(Text))
    else
        return self.Base.Text:Text()
    end
end

function UIMenuProgressItem:Index(Index)
    if tonumber(Index) then
        if tonumber(Index) > #self.Data.Items then
            self.Data.Index = 1
        elseif tonumber(Index) < 1 then
            self.Data.Index = #self.Data.Items
        else
            self.Data.Index = tonumber(Index)
        end

        if self.Data.Counter then
            self.Base:RightLabel(self.Data.Index..'/'..#self.Data.Items)
        else
            self.Base:RightLabel((type(self.Data.Items[self.Data.Index]) == 'table') and tostring(self.Data.Items[self.Data.Index].Name) or tostring(self.Data.Items[self.Data.Index]))
        end

        self.Bar.Width = self.Data.Index/#self.Data.Items * self.Data.Max
    else
        return self.Data.Index
    end
end

function UIMenuProgressItem:ItemToIndex(Item)
    for i = 1, #self.Data.Items do
        if type(Item) == type(self.Data.Items[i]) and Item == self.Data.Items[i] then
            return i
        elseif type(self.Data.Items[i]) == 'table' and (type(Item) == type(self.Data.Items[i].Name) or type(Item) == type(self.Data.Items[i].Value)) and (Item == self.Data.Items[i].Name or Item == self.Data.Items[i].Value) then
            return i
        end
    end
end

function UIMenuProgressItem:IndexToItem(Index)
    if tonumber(Index) then
        if tonumber(Index) == 0 then Index = 1 end

        if self.Data.Items[tonumber(Index)] then
            return self.Data.Items[tonumber(Index)]
        end
    end
end

function UIMenuProgressItem:CalculateProgress(CursorX)
    local Progress = CursorX - self.Bar.X

    self:Index(roundDecimals(#self.Data.Items * (((Progress >= 0 and Progress <= self.Data.Max) and Progress or ((Progress < 0) and 0 or self.Data.Max))/self.Data.Max)))
end

function UIMenuProgressItem:Draw()
    self.Base:Draw()

    if self.Base._Selected then
        self.Background:Color(0, 0, 0, 255)
        self.Bar:Color(240, 240, 240, 255)
    else
        self.Background:Color(240, 240, 240, 255)
        self.Bar:Color(0, 0, 0, 255)
    end

    self.Background:Draw()
    self.Bar:Draw()
end

function UIMenuHeritageWindow.New(Mum, Dad)
    if not tonumber(Mum) then Mum = 0 end
    if not (Mum >= 0 and Mum <= 21) then Mum = 0 end
    if not tonumber(Dad) then Dad = 0 end
    if not (Dad >= 0 and Dad <= 23) then Dad = 0 end

    _UIMenuHeritageWindow = {
        Background = UIMenuSprite.New('pause_menu_pages_char_mom_dad', 'mumdadbg', 0, 0, 431, 228),
        MumSprite = UIMenuSprite.New('char_creator_portraits', ((Mum < 21) and 'female_'..Mum or 'special_female_'..(tonumber(string.sub(Mum, 2, 2)) - 1)), 0, 0, 228, 228),
        DadSprite = UIMenuSprite.New('char_creator_portraits', ((Dad < 21) and 'male_'..Dad or 'special_male_'..(tonumber(string.sub(Dad, 2, 2)) - 1)), 0, 0, 228, 228),
        Mum = Mum,
        Dad = Dad,
        _Offset = {X = 0, Y = 0},
        ParentMenu = nil,
    }

    return setmetatable(_UIMenuHeritageWindow, UIMenuHeritageWindow)
end

function UIMenuHeritageWindow:SetParentMenu(Menu)
    if Menu() == 'UIMenu' then
        self.ParentMenu = Menu
    else
        return self.ParentMenu
    end
end

function UIMenuHeritageWindow:Offset(X, Y)
    if tonumber(X) or tonumber(Y) then
        if tonumber(X) then
            self._Offset.X = tonumber(X)
        end

        if tonumber(Y) then
            self._Offset.Y = tonumber(Y)
        end
    else
        return self._Offset
    end
end

function UIMenuHeritageWindow:Position(Y)
    if tonumber(Y) then
        self.Background:Position(self._Offset.X, 144 + Y + self._Offset.Y)
        self.MumSprite:Position(self._Offset.X + (self.ParentMenu.WidthOffset/2) + 25, 144 + Y + self._Offset.Y)
        self.DadSprite:Position(self._Offset.X + (self.ParentMenu.WidthOffset/2) + 195, 144 + Y + self._Offset.Y)
    end
end

function UIMenuHeritageWindow:Index(Mum, Dad)
    if not tonumber(Mum) then Mum = self.Mum end
    if not (Mum >= 0 and Mum <= 21) then Mum = self.Mum end
    if not tonumber(Dad) then Dad = self.Dad end
    if not (Dad >= 0 and Dad <= 23) then Dad = self.Dad end

    self.Mum = Mum
    self.Dad = Dad

    self.MumSprite.TxtName = ((self.Mum < 21) and 'female_'..self.Mum or 'special_female_'..(tonumber(string.sub(Mum, 2, 2)) - 1))
    self.DadSprite.TxtName = ((self.Dad < 21) and 'male_'..self.Dad or 'special_male_'..(tonumber(string.sub(Dad, 2, 2)) - 1))
end

function UIMenuHeritageWindow:Draw()
    self.Background:Size(431 + self.ParentMenu.WidthOffset, 228)
    self.Background:Draw()
    self.DadSprite:Draw()
    self.MumSprite:Draw()
end

function UIMenuGridPanel.New(TopText, LeftText, RightText, BottomText)
    _UIMenuGridPanel = {
        Data = {
            Enabled = true,
        },
        Background = UIMenuSprite.New('commonmenu', 'gradient_bgd', 0, 0, 431, 275),
        Grid = UIMenuSprite.New('pause_menu_pages_char_mom_dad', 'nose_grid', 0, 0, 200, 200, 0),
        Circle = UIMenuSprite.New('mpinventory','in_world_circle', 0, 0, 20, 20, 0),
        Audio = {Slider = 'CONTINUOUS_SLIDER', Library = 'HUD_FRONTEND_DEFAULT_SOUNDSET', Id = nil},
        ParentItem = nil,
        Text = {
            Top = UIMenuText.New(TopText or 'Top', 0, 0, 0.35, 255, 255, 255, 255, 0, 'Centre'),
            Left = UIMenuText.New(LeftText or 'Left', 0, 0, 0.35, 255, 255, 255, 255, 0, 'Centre'),
            Right = UIMenuText.New(RightText or 'Right', 0, 0, 0.35, 255, 255, 255, 255, 0, 'Centre'),
            Bottom = UIMenuText.New(BottomText or 'Bottom', 0, 0, 0.35, 255, 255, 255, 255, 0, 'Centre'),
        },
    }

    return setmetatable(_UIMenuGridPanel, UIMenuGridPanel)
end

function UIMenuGridPanel:SetParentItem(Item)
    if Item() == 'UIMenuItem' then
        self.ParentItem = Item
    else
        return self.ParentItem
    end
end

function UIMenuGridPanel:Enabled(Enabled)
    if type(Enabled) == 'boolean' then
        self.Data.Enabled = Enabled
    else
        return self.Data.Enabled
    end
end

function UIMenuGridPanel:CirclePosition(X, Y)
    if tonumber(X) and tonumber(Y) then
        self.Circle.X = (self.Grid.X + 20) + ((self.Grid.Width - 40) * ((X >= 0.0 and X <= 1.0) and X or 0.0)) - (self.Circle.Width/2)
        self.Circle.Y = (self.Grid.Y + 20) + ((self.Grid.Height - 40) * ((Y >= 0.0 and Y <= 1.0) and Y or 0.0)) - (self.Circle.Height/2)
    else
        return roundDecimals((self.Circle.X - (self.Grid.X + 20) + (self.Circle.Width/2))/(self.Grid.Width - 40), 2), roundDecimals((self.Circle.Y - (self.Grid.Y + 20) + (self.Circle.Height/2))/(self.Grid.Height - 40), 2)
    end
end

function UIMenuGridPanel:Position(Y)
    if tonumber(Y) then
        local ParentOffsetX, ParentOffsetWidth = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset

        self.Background:Position(ParentOffsetX, Y)
        self.Grid:Position(ParentOffsetX + 115.5 + (ParentOffsetWidth/2), 37.5 + Y)
        self.Text.Top:Position(ParentOffsetX + 215.5 + (ParentOffsetWidth/2), 5 + Y)
        self.Text.Left:Position(ParentOffsetX + 57.75 + (ParentOffsetWidth/2), 120 + Y)
        self.Text.Right:Position(ParentOffsetX + 373.25 + (ParentOffsetWidth/2), 120 + Y)
        self.Text.Bottom:Position(ParentOffsetX + 215.5 + (ParentOffsetWidth/2), 240 + Y)

        if not self.CircleLocked then
            self.CircleLocked = true
            self:CirclePosition(0.5, 0.5)
        end
    end
end

function UIMenuGridPanel:UpdateParent(X, Y)
    local _, ParentType = self.ParentItem()

    if ParentType == 'UIMenuListItem' then
        local PanelItemIndex = self.ParentItem:FindPanelItem()

        if PanelItemIndex then
            self.ParentItem.Items[PanelItemIndex].Value[self.ParentItem:FindPanelIndex(self)] = {X = X, Y = Y}
            self.ParentItem:Index(PanelItemIndex)
            self.ParentItem.Base.ParentMenu.OnListChange(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        else
            local PanelIndex = self.ParentItem:FindPanelIndex(self)

            for Index = 1, #self.ParentItem.Items do
                if type(self.ParentItem.Items[Index]) == 'table' then
                    if not self.ParentItem.Items[Index].Panels then self.ParentItem.Items[Index].Panels = {} end
                    self.ParentItem.Items[Index].Panels[PanelIndex] = {X = X, Y = Y}
                else
                    self.ParentItem.Items[Index] = {Name = tostring(self.ParentItem.Items[Index]), Value = self.ParentItem.Items[Index], Panels = {[PanelIndex] = {X = X, Y = Y}}}
                end
            end

            self.ParentItem.Base.ParentMenu.OnListChange(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        end
    elseif ParentType == 'UIMenuItem' then
        self.ParentItem.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, {X = X, Y = Y})
    end
end

function UIMenuGridPanel:Functions()
    local SafeZone = {X = 0, Y = 0}

    if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
       SafeZone = getSafeZoneBounds()
    end

    if isMouseInBounds(self.Grid.X + 20 + SafeZone.X, self.Grid.Y + 20 + SafeZone.Y, self.Grid.Width - 40, self.Grid.Height - 40) then
        if IsDisabledControlJustPressed(1, 24) and IsUsingKeyboard(0) then
            if not self.Pressed then
                self.Pressed = true

                CreateThread(function()
                    self.Audio.Id = GetSoundId()

                    PlaySoundFrontend(self.Audio.Id, self.Audio.Slider, self.Audio.Library, 1)

                    while IsDisabledControlPressed(0, 24) and isMouseInBounds(self.Grid.X + 20 + SafeZone.X, self.Grid.Y + 20 + SafeZone.Y, self.Grid.Width - 40, self.Grid.Height - 40) do
                        Wait(0)
                        local CursorX, CursorY = roundDecimals(GetControlNormal(0, 239) * 1920) - SafeZone.X - (self.Circle.Width/2), roundDecimals(GetControlNormal(0, 240) * 1080) - SafeZone.Y - (self.Circle.Height/2)

                        self.Circle:Position(((CursorX > (self.Grid.X + 10 + self.Grid.Width - 40)) and (self.Grid.X + 10 + self.Grid.Width - 40) or ((CursorX < (self.Grid.X + 20 - (self.Circle.Width/2))) and (self.Grid.X + 20 - (self.Circle.Width/2)) or CursorX)), ((CursorY > (self.Grid.Y + 10 + self.Grid.Height - 40)) and (self.Grid.Y + 10 + self.Grid.Height - 40) or ((CursorY < (self.Grid.Y + 20 - (self.Circle.Height/2))) and (self.Grid.Y + 20 - (self.Circle.Height/2)) or CursorY)))
                    end

                    StopSound(self.Audio.Id)
                    ReleaseSoundId(self.Audio.Id)

                    self.Pressed = false
                end)
                CreateThread(function()
                    while IsDisabledControlPressed(0, 24) and isMouseInBounds(self.Grid.X + 20 + SafeZone.X, self.Grid.Y + 20 + SafeZone.Y, self.Grid.Width - 40, self.Grid.Height - 40) do
                        Wait(75)
                        local ResultX, ResultY = roundDecimals((self.Circle.X - (self.Grid.X + 20) + (self.Circle.Width/2))/(self.Grid.Width - 40), 2), roundDecimals((self.Circle.Y - (self.Grid.Y + 20) + (self.Circle.Height/2))/(self.Grid.Height - 40), 2)

                        self:UpdateParent((((ResultX >= 0.0 and ResultX <= 1.0) and ResultX or ((ResultX <= 0) and 0.0) or 1.0) * 2) - 1, (((ResultY >= 0.0 and ResultY <= 1.0) and ResultY or ((ResultY <= 0) and 0.0) or 1.0) * 2) - 1)
                    end
                end)
            end
        end
    end
end

function UIMenuGridPanel:Draw()
    if self.Data.Enabled then
        self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 275)
        self.Background:Draw()
        self.Grid:Draw()
        self.Circle:Draw()
        self.Text.Top:Draw()
        self.Text.Left:Draw()
        self.Text.Right:Draw()
        self.Text.Bottom:Draw()
        self:Functions()
    end
end

function UIMenuColourPanel.New(Title, Colors)
    _UIMenuColourPanel = {
        Data = {
            Pagination = {
                Min = 1,
                Max = 8,
                Total = 8,
            },
            Index = 1000,
            Items = Colors,
            Title = Title or 'Title',
            Enabled = true,
            Value = 1,
        },
        Background = UIMenuSprite.New('commonmenu', 'gradient_bgd', 0, 0, 431, 112),
        Bar = {},
        LeftArrow = UIMenuSprite.New('commonmenu', 'arrowleft', 0, 0, 30, 30),
        RightArrow = UIMenuSprite.New('commonmenu', 'arrowright', 0, 0, 30, 30),
        SelectedRectangle = UIMenuRectangle.New(0, 0, 44.5, 8),
        Text = UIMenuText.New(Title..' (1 of '..#Colors..')' or 'Title'..' (1 of '..#Colors..')', 0, 0, 0.35, 255, 255, 255, 255, 0, 'Centre'),
        ParentItem = nil,
    }

    for Index = 1, #Colors do
        if Index < 10 then
            table.insert(_UIMenuColourPanel.Bar, UIMenuRectangle.New(0, 0, 44.5, 44.5, table.unpack(Colors[Index])))
        else
            break
        end
    end

    if #_UIMenuColourPanel.Data.Items ~= 0 then
        _UIMenuColourPanel.Data.Index = 1000 - (1000 % #_UIMenuColourPanel.Data.Items)
        _UIMenuColourPanel.Data.Pagination.Max = _UIMenuColourPanel.Data.Pagination.Total + 1
        _UIMenuColourPanel.Data.Pagination.Min = 0
    end

    return setmetatable(_UIMenuColourPanel, UIMenuColourPanel)
end

function UIMenuColourPanel:SetParentItem(Item)
    if Item() == 'UIMenuItem' then
        self.ParentItem = Item
    else
        return self.ParentItem
    end
end

function UIMenuColourPanel:Enabled(Enabled)
    if type(Enabled) == 'boolean' then
        self.Data.Enabled = Enabled
    else
        return self.Data.Enabled
    end
end

function UIMenuColourPanel:Position(Y)
    if tonumber(Y) then
        local ParentOffsetX, ParentOffsetWidth = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset

        self.Background:Position(ParentOffsetX, Y)
        for Index = 1, #self.Bar do
            self.Bar[Index]:Position(15 + (44.5 * (Index - 1)) + ParentOffsetX + (ParentOffsetWidth/2), 55 + Y)
        end
        self.SelectedRectangle:Position(15 + (44.5 * ((self:CurrentSelection() - self.Data.Pagination.Min) - 1)) + ParentOffsetX + (ParentOffsetWidth/2), 47 + Y)
        self.LeftArrow:Position(7.5 + ParentOffsetX + (ParentOffsetWidth/2), 15 + Y)
        self.RightArrow:Position(393.5 + ParentOffsetX + (ParentOffsetWidth/2), 15 + Y)
        self.Text:Position(215.5 + ParentOffsetX + (ParentOffsetWidth/2), 15 + Y)
    end
end

function UIMenuColourPanel:CurrentSelection(value, PreventUpdate)
    if tonumber(value) then
        if #self.Data.Items == 0 then
            self.Data.Index = 0
        end

        self.Data.Index = 1000000 - (1000000 % #self.Data.Items) + tonumber(value)

        if self:CurrentSelection() > self.Data.Pagination.Max then
            self.Data.Pagination.Min = self:CurrentSelection() - (self.Data.Pagination.Total + 1)
            self.Data.Pagination.Max = self:CurrentSelection()
        elseif self:CurrentSelection() < self.Data.Pagination.Min then
            self.Data.Pagination.Min = self:CurrentSelection() - 1
            self.Data.Pagination.Max = self:CurrentSelection() + (self.Data.Pagination.Total + 1)
        end

        self:UpdateSelection(PreventUpdate)
    else
        if #self.Data.Items == 0 then
            return 1
        else
            if self.Data.Index % #self.Data.Items == 0 then
                return 1
            else
                return self.Data.Index % #self.Data.Items + 1
            end
        end
    end
end

function UIMenuColourPanel:UpdateParent(Color)
    local _, ParentType = self.ParentItem()

    if ParentType == 'UIMenuListItem' then
        local PanelItemIndex = self.ParentItem:FindPanelItem()
        local PanelIndex = self.ParentItem:FindPanelIndex(self)

        if PanelItemIndex then
            self.ParentItem.Items[PanelItemIndex].Value[PanelIndex] = Color
            self.ParentItem:Index(PanelItemIndex)
            self.ParentItem.Base.ParentMenu.OnListChange(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        else
            for Index = 1, #self.ParentItem.Items do
                if type(self.ParentItem.Items[Index]) == 'table' then
                    if not self.ParentItem.Items[Index].Panels then self.ParentItem.Items[Index].Panels = {} end
                    self.ParentItem.Items[Index].Panels[PanelIndex] = Color
                else
                    self.ParentItem.Items[Index] = {Name = tostring(self.ParentItem.Items[Index]), Value = self.ParentItem.Items[Index], Panels = {[PanelIndex] = Color}}
                end
            end

            self.ParentItem.Base.ParentMenu.OnListChange(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        end
    elseif ParentType == 'UIMenuItem' then
        self.ParentItem.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, Color)
    end
end

function UIMenuColourPanel:UpdateSelection(PreventUpdate)
    local CurrentSelection = self:CurrentSelection()

    if not PreventUpdate then
        self:UpdateParent(CurrentSelection)
    end

    self.SelectedRectangle:Position(15 + (44.5 * ((CurrentSelection - self.Data.Pagination.Min) - 1)) + self.ParentItem:Offset().X, self.SelectedRectangle.Y)

    for Index = 1, 9 do
        self.Bar[Index]:Color(table.unpack(self.Data.Items[self.Data.Pagination.Min + Index]))
    end

    self.Text:Text(self.Data.Title..' ('..CurrentSelection..' of '..#self.Data.Items..')')
end

function UIMenuColourPanel:Functions()
    local SafeZone = {X = 0, Y = 0}

    if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
       SafeZone = getSafeZoneBounds()
    end

    if isMouseInBounds(self.LeftArrow.X + SafeZone.X, self.LeftArrow.Y + SafeZone.Y, self.LeftArrow.Width, self.LeftArrow.Height) then
        if IsDisabledControlJustPressed(1, 24) and IsUsingKeyboard(0) then
            if #self.Data.Items > self.Data.Pagination.Total + 1 then
                if self:CurrentSelection() <= self.Data.Pagination.Min + 1 then
                    if self:CurrentSelection() == 1 then
                        self.Data.Pagination.Min = #self.Data.Items - (self.Data.Pagination.Total + 1)
                        self.Data.Pagination.Max = #self.Data.Items
                        self.Data.Index = 1000 - (1000 % #self.Data.Items)
                        self.Data.Index = self.Data.Index + (#self.Data.Items - 1)
                        self:UpdateSelection()
                    else
                        self.Data.Pagination.Min = self.Data.Pagination.Min - 1
                        self.Data.Pagination.Max = self.Data.Pagination.Max - 1
                        self.Data.Index = self.Data.Index - 1
                        self:UpdateSelection()
                    end
                else
                    self.Data.Index = self.Data.Index - 1
                    self:UpdateSelection()
                end
            else
                self.Data.Index = self.Data.Index - 1
                self:UpdateSelection()
            end
        end
    end

    if isMouseInBounds(self.RightArrow.X + SafeZone.X, self.RightArrow.Y + SafeZone.Y, self.RightArrow.Width, self.RightArrow.Height) then
        if IsDisabledControlJustPressed(1, 24) and IsUsingKeyboard(0) then
            if #self.Data.Items > self.Data.Pagination.Total + 1 then
                if self:CurrentSelection() >= self.Data.Pagination.Max then
                    if self:CurrentSelection() == #self.Data.Items then
                        self.Data.Pagination.Min = 0
                        self.Data.Pagination.Max = self.Data.Pagination.Total + 1
                        self.Data.Index = 1000 - (1000 % #self.Data.Items)
                        self:UpdateSelection()
                    else
                        self.Data.Pagination.Max = self.Data.Pagination.Max + 1
                        self.Data.Pagination.Min = self.Data.Pagination.Max - (self.Data.Pagination.Total + 1)
                        self.Data.Index = self.Data.Index + 1
                        self:UpdateSelection()
                    end
                else
                    self.Data.Index = self.Data.Index + 1
                    self:UpdateSelection()
                end
            else
                self.Data.Index = self.Data.Index + 1
                self:UpdateSelection()
            end
        end
    end

    for Index = 1, #self.Bar do
        if isMouseInBounds(self.Bar[Index].X + SafeZone.X, self.Bar[Index].Y + SafeZone.Y, self.Bar[Index].Width, self.Bar[Index].Height) then
            if IsDisabledControlJustPressed(1, 24) and IsUsingKeyboard(0) then
                self:CurrentSelection(self.Data.Pagination.Min + Index - 1)
            end
        end
    end
end

function UIMenuColourPanel:Draw()
    if self.Data.Enabled then
        self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 112)
        self.Background:Draw()
        self.LeftArrow:Draw()
        self.RightArrow:Draw()
        self.Text:Draw()
        self.SelectedRectangle:Draw()

        for Index = 1, #self.Bar do
            self.Bar[Index]:Draw()
        end

        self:Functions()
    end
end

function UIMenuPercentagePanel.New(MinText, MaxText)
    _UIMenuPercentagePanel = {
        Data = {
            Enabled = true,
        },
        Background = UIMenuSprite.New('commonmenu', 'gradient_bgd', 0, 0, 431, 76),
        ActiveBar = UIMenuRectangle.New(0, 0, 413, 10, 245, 245, 245, 255),
        BackgroundBar = UIMenuRectangle.New(0, 0, 413, 10, 87, 87, 87, 255),
        Text = {
            Min = UIMenuText.New(MinText or '0%', 0, 0, 0.35, 255, 255, 255, 255, 0, 'Centre'),
            Max = UIMenuText.New('100%', 0, 0, 0.35, 255, 255, 255, 255, 0, 'Centre'),
            Title = UIMenuText.New(MaxText or 'Opacity', 0, 0, 0.35, 255, 255, 255, 255, 0, 'Centre'),
        },
        Audio = {Slider = 'CONTINUOUS_SLIDER', Library = 'HUD_FRONTEND_DEFAULT_SOUNDSET', Id = nil},
        ParentItem = nil,
    }

    return setmetatable(_UIMenuPercentagePanel, UIMenuPercentagePanel)
end

function UIMenuPercentagePanel:SetParentItem(Item)
    if Item() == 'UIMenuItem' then
        self.ParentItem = Item
    else
        return self.ParentItem
    end
end

function UIMenuPercentagePanel:Enabled(Enabled)
    if type(Enabled) == 'boolean' then
        self.Data.Enabled = Enabled
    else
        return self.Data.Enabled
    end
end

function UIMenuPercentagePanel:Position(Y)
    if tonumber(Y) then
        local ParentOffsetX, ParentOffsetWidth = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset

        self.Background:Position(ParentOffsetX, Y)
        self.ActiveBar:Position(ParentOffsetX + (ParentOffsetWidth/2) + 9, 50 + Y)
        self.BackgroundBar:Position(ParentOffsetX + (ParentOffsetWidth/2) + 9, 50 + Y)
        self.Text.Min:Position(ParentOffsetX + (ParentOffsetWidth/2) + 25, 15 + Y)
        self.Text.Max:Position(ParentOffsetX + (ParentOffsetWidth/2) + 398, 15 + Y)
        self.Text.Title:Position(ParentOffsetX + (ParentOffsetWidth/2) + 215.5, 15 + Y)
    end
end

function UIMenuPercentagePanel:Percentage(Value)
    if tonumber(Value) then
        local Percent = ((Value < 0.0) and 0.0) or ((Value > 1.0) and 1.0 or Value)

        self.ActiveBar:Size(self.BackgroundBar.Width * Percent, self.ActiveBar.Height)
    else
        local SafeZone = {X = 0, Y = 0}

        if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
           SafeZone = getSafeZoneBounds()
        end

        local Progress = (roundDecimals(GetControlNormal(0, 239) * 1920) - SafeZone.X) - self.ActiveBar.X

        return roundDecimals(((Progress >= 0 and Progress <= 413) and Progress or ((Progress < 0) and 0 or 413))/self.BackgroundBar.Width, 2)
    end
end

function UIMenuPercentagePanel:UpdateParent(Percentage)
    local _, ParentType = self.ParentItem()

    if ParentType == 'UIMenuListItem' then
        local PanelItemIndex = self.ParentItem:FindPanelItem()

        if PanelItemIndex then
            self.ParentItem.Items[PanelItemIndex].Value[self.ParentItem:FindPanelIndex(self)] = Percentage
            self.ParentItem:Index(PanelItemIndex)
            self.ParentItem.Base.ParentMenu.OnListChange(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        else
            local PanelIndex = self.ParentItem:FindPanelIndex(self)

            for Index = 1, #self.ParentItem.Items do
                if type(self.ParentItem.Items[Index]) == 'table' then
                    if not self.ParentItem.Items[Index].Panels then self.ParentItem.Items[Index].Panels = {} end

                    self.ParentItem.Items[Index].Panels[PanelIndex] = Percentage
                else
                    self.ParentItem.Items[Index] = {Name = tostring(self.ParentItem.Items[Index]), Value = self.ParentItem.Items[Index], Panels = {[PanelIndex] = Percentage}}
                end
            end

            self.ParentItem.Base.ParentMenu.OnListChange(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        end
    elseif ParentType == 'UIMenuItem' then
        self.ParentItem.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, Percentage)
    end
end

function UIMenuPercentagePanel:Functions()
    local SafeZone = {X = 0, Y = 0}

    if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
       SafeZone = getSafeZoneBounds()
    end

    if isMouseInBounds(self.BackgroundBar.X + SafeZone.X, self.BackgroundBar.Y - 4 + SafeZone.Y, self.BackgroundBar.Width, self.BackgroundBar.Height + 8) then
        if IsDisabledControlJustPressed(1, 24) and IsUsingKeyboard(0) then
            if not self.Pressed then
                self.Pressed = true

                CreateThread(function()
                    self.Audio.Id = GetSoundId()
                    PlaySoundFrontend(self.Audio.Id, self.Audio.Slider, self.Audio.Library, 1)

                    while IsDisabledControlPressed(0, 24) and isMouseInBounds(self.BackgroundBar.X + SafeZone.X, self.BackgroundBar.Y - 4 + SafeZone.Y, self.BackgroundBar.Width, self.BackgroundBar.Height + 8) do
                        Wait(0)
                        local Progress = (roundDecimals(GetControlNormal(0, 239) * 1920) - SafeZone.X) - self.ActiveBar.X
                        self.ActiveBar:Size(((Progress >= 0 and Progress <= 413) and Progress or ((Progress < 0) and 0 or 413)), self.ActiveBar.Height)
                    end

                    StopSound(self.Audio.Id)
                    ReleaseSoundId(self.Audio.Id)

                    self.Pressed = false
                end)
                CreateThread(function()
                    while IsDisabledControlPressed(0, 24) and isMouseInBounds(self.BackgroundBar.X + SafeZone.X, self.BackgroundBar.Y - 4 + SafeZone.Y, self.BackgroundBar.Width, self.BackgroundBar.Height + 8) do
                        Wait(75)
                        local Progress = (roundDecimals(GetControlNormal(0, 239) * 1920) - SafeZone.X) - self.ActiveBar.X

                        self:UpdateParent(roundDecimals(((Progress >= 0 and Progress <= 413) and Progress or ((Progress < 0) and 0 or 413))/self.BackgroundBar.Width, 2))
                    end
                end)
            end
        end
    end
end

function UIMenuPercentagePanel:Draw()
    if self.Data.Enabled then
        self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 76)
        self.Background:Draw()
        self.BackgroundBar:Draw()
        self.ActiveBar:Draw()
        self.Text.Min:Draw()
        self.Text.Max:Draw()
        self.Text.Title:Draw()
        self:Functions()
    end
end

function UIMenu.New(Title, Subtitle, X, Y, TxtDictionary, TxtName)
    X, Y = tonumber(X) or 0, tonumber(Y) or 0

    if Title ~= nil then Title = tostring(Title) or '' else Title = '' end
    if Subtitle ~= nil then Subtitle = tostring(Subtitle) or '' else Subtitle = '' end
    if TxtDictionary ~= nil then TxtDictionary = tostring(TxtDictionary) or 'commonmenu' else TxtDictionary = 'commonmenu' end
    if TxtName ~= nil then TxtName = tostring(TxtName) or 'interaction_bgd' else TxtName = 'interaction_bgd' end

    local _UIMenu = {
        Logo = UIMenuSprite.New(TxtDictionary, TxtName, 0 + X, 0 + Y, 431, 107),
        Banner = nil,
        Title = UIMenuText.New(Title, 215 + X, 20 + Y, 1.15, 255, 255, 255, 255, 1, 1),
        Subtitle = {ExtraY = 0},
        WidthOffset = 69,
        Position = {X = X, Y = Y},
        Pagination = {Min = 0, Max = 9, Total = 9},
        PageCounter = {PreText = ''},
        Extra = {},
        Description = {},
        Items = {},
        Windows = {},
        Children = {},
        TxtDictionary = TxtDictionary,
        TxtName = TxtName,
        Controls = {
            Back = {
                Enabled = true,
            },
            Select = {
                Enabled = true,
            },
            Left = {
                Enabled = true,
            },
            Right = {
                Enabled = true,
            },
            Up = {
                Enabled = true,
            },
            Down = {
                Enabled = true,
            },
        },
        ParentMenu = nil,
        ParentItem = nil,
        _Visible = false,
        ActiveItem = 1000,
        Dirty = false;
        ReDraw = true,
        InstructionalScaleform = RequestScaleformMovie('INSTRUCTIONAL_BUTTONS'),
        InstructionalButtons = {},
        OnIndexChange = function(menu, newindex) end,
        OnListChange = function(menu, list, newindex) end,
        OnSliderChange = function(menu, slider, newindex) end,
        OnProgressChange = function(menu, progress, newindex) end,
        OnCheckboxChange = function(menu, item, checked) end,
        OnListSelect = function(menu, list, index) end,
        OnSliderSelect = function(menu, slider, index) end,
        OnProgressSelect = function(menu, progress, index) end,
        OnItemSelect = function(menu, item, index) end,
        OnMenuOpened = function(menu) end,
        OnMenuChanged = function(menu, newmenu, forward) end,
        OnMenuClosed = function(menu) end,
        Settings = {
            InstructionalButtons = true,
            MultilineFormats = true,
            ScaleWithSafezone = true,
            ResetCursorOnOpen = true,
            MouseControlsEnabled = true,
            MouseEdgeEnabled = true,
            ControlDisablingEnabled = true,
            ControlDisablingForGamePadOnly = false,
            Audio = {
                Library = 'HUD_FRONTEND_DEFAULT_SOUNDSET',
                UpDown = 'NAV_UP_DOWN',
                LeftRight = 'NAV_LEFT_RIGHT',
                Select = 'SELECT',
                Back = 'BACK',
                Error = 'ERROR',
            },
            EnabledControls = {
                GamePad = {
                    { padIndex = 0, control = 2 }, -- Look Up and Down
                    { padIndex = 0, control = 1 }, -- Look Left and Right
                    { padIndex = 0, control = 31 }, -- Move Up and Down
                    { padIndex = 0, control = 30 }, -- Move Left and Right
                    { padIndex = 0, control = 25 }, -- Aim
                    { padIndex = 0, control = 24 }, -- Attack
                },
                GamePadExtra = {},
                Keyboard = {
                    { padIndex = 0, control = 201 }, -- Select
                    { padIndex = 0, control = 195 }, -- X axis
                    { padIndex = 0, control = 196 }, -- Y axis
                    { padIndex = 0, control = 187 }, -- Down
                    { padIndex = 0, control = 188 }, -- Up
                    { padIndex = 0, control = 189 }, -- Left
                    { padIndex = 0, control = 190 }, -- Right
                    { padIndex = 0, control = 202 }, -- Back
                    { padIndex = 0, control = 217 }, -- Select
                    { padIndex = 0, control = 242 }, -- Scroll down
                    { padIndex = 0, control = 241 }, -- Scroll up
                    { padIndex = 0, control = 239 }, -- Cursor X
                    { padIndex = 0, control = 240 }, -- Cursor Y
                    { padIndex = 0, control = 31 }, -- Move Up and Down
                    { padIndex = 0, control = 30 }, -- Move Left and Right
                    { padIndex = 0, control = 21 }, -- Sprint
                    { padIndex = 0, control = 22 }, -- Jump
                    { padIndex = 0, control = 23 }, -- Enter
                    { padIndex = 0, control = 75 }, -- Exit Vehicle
                    { padIndex = 0, control = 71 }, -- Accelerate Vehicle
                    { padIndex = 0, control = 72 }, -- Vehicle Brake
                    { padIndex = 0, control = 59 }, -- Move Vehicle Left and Right
                    { padIndex = 0, control = 89 }, -- Fly Yaw Left
                    { padIndex = 0, control = 9 }, -- Fly Left and Right
                    { padIndex = 0, control = 8 }, -- Fly Up and Down
                    { padIndex = 0, control = 90 }, -- Fly Yaw Right
                    { padIndex = 0, control = 76 }, -- Vehicle Handbrake
                }                
            }
        }
    }

    if Subtitle ~= '' and Subtitle ~= nil then
        _UIMenu.Subtitle.Rectangle = UIMenuRectangle.New(0 + _UIMenu.Position.X, 107 + _UIMenu.Position.Y, 431, 37, 0, 0, 0, 255)
        _UIMenu.Subtitle.Text = UIMenuText.New(Subtitle, 8 + _UIMenu.Position.X, 110 + _UIMenu.Position.Y, 0.35, 245, 245, 245, 255, 0)
        _UIMenu.Subtitle.BackupText = Subtitle
        _UIMenu.Subtitle.Formatted = false

        if stringStarts(Subtitle, '~') then
            _UIMenu.PageCounter.PreText = string.sub(Subtitle, 1, 3)
        end

        _UIMenu.PageCounter.Text = UIMenuText.New('', 425 + _UIMenu.Position.X, 110 + _UIMenu.Position.Y, 0.35, 245, 245, 245, 255, 0, 'Right')
        _UIMenu.Subtitle.ExtraY = 37
    end

    _UIMenu.ArrowSprite = UIMenuSprite.New('commonmenu', 'shop_arrows_upanddown', 190 + _UIMenu.Position.X, 147 + 37 * (_UIMenu.Pagination.Total + 1) + _UIMenu.Position.Y - 37 + _UIMenu.Subtitle.ExtraY, 50, 50)
    _UIMenu.Extra.Up = UIMenuRectangle.New(0 + _UIMenu.Position.X, 144 + 38 * (_UIMenu.Pagination.Total + 1) + _UIMenu.Position.Y - 37 + _UIMenu.Subtitle.ExtraY, 431, 18, 0, 0, 0, 200)
    _UIMenu.Extra.Down = UIMenuRectangle.New(0 + _UIMenu.Position.X, 144 + 18 + 38 * (_UIMenu.Pagination.Total + 1) + _UIMenu.Position.Y - 37 + _UIMenu.Subtitle.ExtraY, 431, 18, 0, 0, 0, 200)

    _UIMenu.Description.Bar = UIMenuRectangle.New(_UIMenu.Position.X, 123, 431, 4, 0, 0, 0, 255)
    _UIMenu.Description.Rectangle = UIMenuSprite.New('commonmenu', 'gradient_bgd', _UIMenu.Position.X, 127, 431, 30)
    _UIMenu.Description.Text = UIMenuText.New('Description', _UIMenu.Position.X + 5, 125, 0.35)

    _UIMenu.Background = UIMenuSprite.New('commonmenu', 'gradient_bgd', _UIMenu.Position.X, 144 + _UIMenu.Position.Y - 37 + _UIMenu.Subtitle.ExtraY, 290, 25)

    _UIMenu.Logo:Size(431 + _UIMenu.WidthOffset, 107)
    _UIMenu.Title:Position(((_UIMenu.WidthOffset + 431) / 2) + _UIMenu.Position.X, 20 + _UIMenu.Position.Y)

    CreateThread(function()
        if not HasScaleformMovieLoaded(_UIMenu.InstructionalScaleform) then
            _UIMenu.InstructionalScaleform = RequestScaleformMovie('INSTRUCTIONAL_BUTTONS')

            while not HasScaleformMovieLoaded(_UIMenu.InstructionalScaleform) do
                Wait(0)
            end
        end
    end)

    return setmetatable(_UIMenu, UIMenu)
end

function UIMenu:UpdateSubtitle(text)
    self.Subtitle.Text = UIMenuText.New(text, 8 + self.Position.X, 110 + self.Position.Y, 0.35, 245, 245, 245, 255, 0)
    self.Subtitle.BackupText = text
end

function UIMenu:SetMenuWidthOffset(Offset)
    if tonumber(Offset) then
        self.WidthOffset = math.floor(tonumber(Offset))
        self.Logo:Size(431 + self.WidthOffset, 107)

        if self.Title.TxtName then
            self.Title:Position(((self.WidthOffset + 0)/2) + self.Position.X, 0 + self.Position.Y)
        else
            self.Title:Position(((self.WidthOffset + 431)/2) + self.Position.X, 20 + self.Position.Y)
        end

        if self.Subtitle.Rectangle ~= nil then
            self.Subtitle.Rectangle:Size(431 + self.WidthOffset + 100, 37)
            self.PageCounter.Text:Position(425 + self.Position.X + self.WidthOffset, 110 + self.Position.Y)
        end

        if self.Banner ~= nil then
            self.Banner:Size(431 + self.WidthOffset, 107)
        end
    end
end

function UIMenu:DisableControls()
    if IsUsingKeyboard(0) or IsUsingKeyboard(2) then
        if not self.Settings.ControlDisablingForGamePadOnly then
            DisableAllControlActions(2)

            for Index = 1, #self.Settings.EnabledControls.Keyboard do
                local currentInput = self.Settings.EnabledControls.Keyboard[Index]
    
                EnableControlAction(currentInput.padIndex, currentInput.control, true)
            end
        end
    else
        DisableAllControlActions(2)
        
        for Index = 1, #self.Settings.EnabledControls.GamePad do
            local currentInput = self.Settings.EnabledControls.GamePad[Index]

            EnableControlAction(currentInput.padIndex, currentInput.control, true)
        end

        for Index = 1, #self.Settings.EnabledControls.GamePadExtra do
            local currentInput = self.Settings.EnabledControls.GamePadExtra[Index]

            if currentInput.enabled() then
                EnableControlAction(currentInput.padIndex, currentInput.control, true)
            end
        end
    end
end

function UIMenu:InstructionalButtons(bool)
    if bool ~= nil then
        self.Settings.InstrucitonalButtons = toBool(bool)
    end
end

function UIMenu:SetBannerSprite(UIMenuSprite, IncludeChildren)
    if UIMenuSprite() == 'UIMenuSprite' then
        self.Logo = UIMenuSprite
        self.Logo:Size(431 + self.WidthOffset, 107)
        self.Logo:Position(self.Position.X, self.Position.Y)
        self.Banner = nil

        if IncludeChildren then
            for _, Menu in pairs(self.Children) do
                Menu.Logo = UIMenuSprite
                Menu.Logo:Size(431 + self.WidthOffset, 107)
                Menu.Logo:Position(self.Position.X, self.Position.Y)
                Menu.Banner = nil
            end
        end
    end
end

function UIMenu:SetBannerRectangle(Rectangle, IncludeChildren)
    if Rectangle() == 'Rectangle' then
        self.Banner = Rectangle
        self.Banner:Size(431 + self.WidthOffset, 107)
        self.Banner:Position(self.Position.X, self.Position.Y)
        self.Logo = nil

        if IncludeChildren then
            for _, Menu in pairs(self.Children) do
                Menu.Banner = Rectangle
                Menu.Banner:Size(431 + self.WidthOffset, 107)
                Menu:Position(self.Position.X, self.Position.Y)
                Menu.Logo = nil
            end
        end
    end
end

function UIMenu:CurrentSelection(value)
    if tonumber(value) then
        if #self.Items == 0 then
            self.ActiveItem = 0
        end

        self.Items[self:CurrentSelection()]:Selected(false)
        self.ActiveItem = 1000000 - (1000000 % #self.Items) + tonumber(value)

        if self:CurrentSelection() > self.Pagination.Max then
            self.Pagination.Min = self:CurrentSelection() - self.Pagination.Total
            self.Pagination.Max = self:CurrentSelection()
        elseif self:CurrentSelection() < self.Pagination.Min then
            self.Pagination.Min = self:CurrentSelection()
            self.Pagination.Max = self:CurrentSelection() + self.Pagination.Total
        end
    else
        if #self.Items == 0 then
            return 1
        else
            if self.ActiveItem % #self.Items == 0 then
                return 1
            else
                return self.ActiveItem % #self.Items + 1
            end
        end
    end
end

function UIMenu:CalculateWindowHeight()
    local Height = 0

    for i = 1, #self.Windows do
        Height = Height + self.Windows[i].Background:Size().Height
    end

    return Height
end

function UIMenu:CalculateItemHeightOffset(Item)
    if Item.Base then
        return Item.Base.Rectangle.Height
    else
        return Item.Rectangle.Height
    end
end

function UIMenu:CalculateItemHeight()
    local ItemOffset = 0 + self.Subtitle.ExtraY - 37

    for i = self.Pagination.Min + 1, self.Pagination.Max do
        local Item = self.Items[i]
        if Item ~= nil then
            ItemOffset = ItemOffset + self:CalculateItemHeightOffset(Item)
        end
    end

    return ItemOffset
end

function UIMenu:RecalculateDescriptionPosition()
    local WindowHeight = self:CalculateWindowHeight()

    self.Description.Bar:Position(self.Position.X, 149 + self.Position.Y + WindowHeight)
    self.Description.Rectangle:Position(self.Position.X, 149 + self.Position.Y + WindowHeight)
    self.Description.Text:Position(self.Position.X + 8, 155 + self.Position.Y + WindowHeight)
    self.Description.Bar:Size(431 + self.WidthOffset, 4)
    self.Description.Rectangle:Size(431 + self.WidthOffset, 30)
    self.Description.Bar:Position(self.Position.X, self:CalculateItemHeight() + ((#self.Items > (self.Pagination.Total + 1)) and 37 or 0) + self.Description.Bar:Position().Y)
    self.Description.Rectangle:Position(self.Position.X, self:CalculateItemHeight() + ((#self.Items > (self.Pagination.Total + 1)) and 37 or 0) + self.Description.Rectangle:Position().Y)
    self.Description.Text:Position(self.Position.X + 8, self:CalculateItemHeight() + ((#self.Items > (self.Pagination.Total + 1)) and 37 or 0) + self.Description.Text:Position().Y)
end

function UIMenu:CaclulatePanelPosition(HasDescription)
    local Height = self:CalculateWindowHeight() + 149 + self.Position.Y

    if HasDescription then
        Height = Height + self.Description.Rectangle:Size().Height + 5
    end

    return self:CalculateItemHeight() + ((#self.Items > (self.Pagination.Total + 1)) and 37 or 0) + Height
end

function UIMenu:AddWindow(Window)
    if Window() == 'UIMenuWindow' then
        Window:SetParentMenu(self)
        Window:Offset(self.Position.X, self.Position.Y)
        table.insert(self.Windows, Window)

        self.ReDraw = true

        self:RecalculateDescriptionPosition()
    end
end

function UIMenu:RemoveWindowAt(Index)
    if tonumber(Index) then
        if self.Windows[Index] then
            table.remove(self.Windows, Index)

            self.ReDraw = true

            self:RecalculateDescriptionPosition()
        end
    end
end

function UIMenu:AddItem(Item)
    if Item() == 'UIMenuItem' then
        local SelectedItem = self:CurrentSelection()

        Item:SetParentMenu(self)
        Item:Offset(self.Position.X, self.Position.Y)
        Item:Position((#self.Items * 25) - 37 + self.Subtitle.ExtraY)
        table.insert(self.Items, Item)
        self:RecalculateDescriptionPosition()
        self:CurrentSelection(SelectedItem)
    end
end

function UIMenu:RemoveItemAt(Index)
    if tonumber(Index) then
        if self.Items[Index] then
            local SelectedItem = self:CurrentSelection()

            if #self.Items > self.Pagination.Total and self.Pagination.Max == #self.Items - 1 then
                self.Pagination.Min = self.Pagination.Min - 1
                self.Pagination.Max = self.Pagination.Max + 1
            end

            table.remove(self.Items, tonumber(Index))
            self:RecalculateDescriptionPosition()
            self:CurrentSelection(SelectedItem)
        end
    end
end

function UIMenu:RefreshIndex()
    if #self.Items == 0 then
        self.ActiveItem = 1000
        self.Pagination.Max = self.Pagination.Total + 1
        self.Pagination.Min = 0
        return
    end

    self.Items[self:CurrentSelection()]:Selected(false)
    self.ActiveItem = 1000 - (1000 % #self.Items)
    self.Pagination.Max = self.Pagination.Total + 1
    self.Pagination.Min = 0
    self.ReDraw = true
end

function UIMenu:RefreshIndexRecursively()
    self:RefreshIndex()

    for _, Item in pairs(self.Children) do
        if Item.RefreshIndexRecursively then
            Item:RefreshIndexRecursively()
        end
    end
end

function UIMenu:Clear()
    self.Items = {}
    self.ReDraw = true
    self:RecalculateDescriptionPosition()
end

function UIMenu:MultilineFormat(str)
    if tostring(str) then
        local PixelPerLine = 425 + self.WidthOffset
        local AggregatePixels = 0
        local output = ''
        local words = splitString(tostring(str), ' ')

        for i = 1, #words do
            local offset = measureStringWidth(words[i], 0, 0.35)

            AggregatePixels = AggregatePixels + offset

            if AggregatePixels > PixelPerLine then
                output = output .. '\n' .. words[i] .. ' '
                AggregatePixels = offset + measureString(' ')
            else
                output = output .. words[i] .. ' '
                AggregatePixels = AggregatePixels + measureString(' ')
            end
        end

        return output
    end
end

function UIMenu:DrawCalculations()
    local WindowHeight = self:CalculateWindowHeight()

    if self.Settings.MultilineFormats then
        if self.Subtitle.Rectangle and not self.Subtitle.Formatted then
            self.Subtitle.Formatted = true
            self.Subtitle.Text:Text(self:MultilineFormat(self.Subtitle.Text:Text()))

            local Linecount = #splitString(self.Subtitle.Text:Text(), '\n')
            self.Subtitle.ExtraY = ((Linecount == 1) and 37 or ((Linecount + 1) * 22))
            self.Subtitle.Rectangle:Size(431 + self.WidthOffset, self.Subtitle.ExtraY)
        end
    elseif self.Subtitle.Formatted then
        self.Subtitle.Formatted = false
        self.Subtitle.ExtraY = 37
        self.Subtitle.Rectangle:Size(431 + self.WidthOffset, self.Subtitle.ExtraY)
        self.Subtitle.Text:Text(self.Subtitle.BackupText)
    end

    self.Background:Size(431 + self.WidthOffset, self:CalculateItemHeight() + WindowHeight + ((self.Subtitle.ExtraY > 0) and 0 or 37))
    self.Extra.Up:Size(431 + self.WidthOffset, 18)
    self.Extra.Down:Size(431 + self.WidthOffset, 18)
    self.Extra.Up:Position(self.Position.X, 144 + self:CalculateItemHeight() + self.Position.Y + WindowHeight)
    self.Extra.Down:Position(self.Position.X, 144 + 18 + self:CalculateItemHeight() + self.Position.Y + WindowHeight)

    if self.WidthOffset > 0 then
        self.ArrowSprite:Position(190 + self.Position.X + (self.WidthOffset / 2), 137 + self:CalculateItemHeight() + self.Position.Y + WindowHeight)
    else
        self.ArrowSprite:Position(190 + self.Position.X + self.WidthOffset, 137 + self:CalculateItemHeight() + self.Position.Y + WindowHeight)
    end

    self.ReDraw = false

    if #self.Items ~= 0 and self.Items[self:CurrentSelection()]:Description() ~= '' then
        self:RecalculateDescriptionPosition()

        local description = self.Items[self:CurrentSelection()]:Description()

        if self.Settings.MultilineFormats then
            self.Description.Text:Text(self:MultilineFormat(description))
        else
            self.Description.Text:Text(description)
        end

        local Linecount = #splitString(self.Description.Text:Text(), '\n')

        self.Description.Rectangle:Size(431 + self.WidthOffset, ((Linecount == 1) and 37 or ((Linecount + 1) * 22)))
    end
end

function UIMenu:Visible(bool)
    if bool ~= nil then
        MenuBuilder.process = bool
        self._Visible = toBool(bool)
        self.JustOpened = toBool(bool)
        self.Dirty = toBool(bool)

        self:UpdateScaleform()

        if self.ParentMenu ~= nil or toBool(bool) == false then
            return
        end

        if self.Settings.ResetCursorOnOpen then
            local W, H = GetScreenResolution()

            SetCursorLocation(W / 2, H / 2)
            SetMouseCursorSprite(1)
        end

        collectgarbage()
    else
        return self._Visible
    end
end

function UIMenu:ProcessControl()
    if not self._Visible then
        return
    end

    if self.JustOpened then
        self.JustOpened = false
        return
    end

    if self.Controls.Back.Enabled and (IsDisabledControlJustReleased(2, 177) or IsDisabledControlJustReleased(2, 199)) then
        self:GoBack()

    end

    if #self.Items == 0 then
        return
    end

    if not self.UpPressed then
        if self.Controls.Up.Enabled and (IsDisabledControlJustPressed(1, 172) or IsDisabledControlJustPressed(1, 241)) then
            CreateThread(function()
                self.UpPressed = true

                if #self.Items > self.Pagination.Total + 1 then
                    self:GoUpOverflow()
                else
                    self:GoUp()
                end

                self:UpdateScaleform()

                Wait(175)

                while self.Controls.Up.Enabled and (IsDisabledControlPressed(2, 172) or IsDisabledControlPressed(2, 241)) do
                    if #self.Items > self.Pagination.Total + 1 then
                        self:GoUpOverflow()
                    else
                        self:GoUp()
                    end

                    self:UpdateScaleform()
                    Wait(125)
                end

                self.UpPressed = false
            end)
        end
    end

    if not self.DownPressed then
        if self.Controls.Down.Enabled and (IsDisabledControlJustPressed(1, 173) or IsDisabledControlJustPressed(1, 242)) then
            CreateThread(function()
                self.DownPressed = true

                if #self.Items > self.Pagination.Total + 1 then
                    self:GoDownOverflow()
                else
                    self:GoDown()
                end

                self:UpdateScaleform()
                Wait(175)

                while self.Controls.Down.Enabled and (IsDisabledControlPressed(2, 173) or IsDisabledControlPressed(2, 242)) do
                    if #self.Items > self.Pagination.Total + 1 then
                        self:GoDownOverflow()
                    else
                        self:GoDown()
                    end
                    self:UpdateScaleform()
                    Wait(125)
                end

                self.DownPressed = false
            end)
        end
    end

    if not self.LeftPressed then
        if self.Controls.Left.Enabled and (IsDisabledControlPressed(2, 174)) then
            CreateThread(function()
                if not self.LeftPressed then
                    self.LeftPressed = true

                    self:GoLeft()
                    Wait(150)

                    while self.Controls.Left.Enabled and (IsDisabledControlPressed(2, 174)) do
                        self:GoLeft()
                        Wait(200)
                    end

                    self.LeftPressed = false
                end
            end)
        end
    end

    if not self.RightPressed then
        if self.Controls.Right.Enabled and (IsDisabledControlPressed(2, 175)) then
            CreateThread(function()
                if not self.RightPressed then
                    self.RightPressed = true

                    self:GoRight()
                    Wait(150)

                    while self.Controls.Right.Enabled and (IsDisabledControlPressed(2, 175)) do
                        self:GoRight()
                        Wait(200)
                    end

                    self.RightPressed = false
                end
            end)
        end
    end

    if self.Controls.Select.Enabled and IsDisabledControlJustPressed(1, 201) then
        self:SelectItem()
    end
end

function UIMenu:GoUpOverflow()
    if #self.Items <= self.Pagination.Total + 1 then
        return
    end

    if self:CurrentSelection() <= self.Pagination.Min + 1 then
        if self:CurrentSelection() == 1 then
            self.Pagination.Min = #self.Items - (self.Pagination.Total + 1)
            self.Pagination.Max = #self.Items
            self.Items[self:CurrentSelection()]:Selected(false)
            self.ActiveItem = 1000 - (1000 % #self.Items)
            self.ActiveItem = self.ActiveItem + (#self.Items - 1)
            self.Items[self:CurrentSelection()]:Selected(true)
        else
            self.Pagination.Min = self.Pagination.Min - 1
            self.Pagination.Max = self.Pagination.Max - 1
            self.Items[self:CurrentSelection()]:Selected(false)
            self.ActiveItem = self.ActiveItem - 1
            self.Items[self:CurrentSelection()]:Selected(true)
        end
    else
        self.Items[self:CurrentSelection()]:Selected(false)
        self.ActiveItem = self.ActiveItem - 1
        self.Items[self:CurrentSelection()]:Selected(true)
    end

    PlaySoundFrontend(-1, self.Settings.Audio.UpDown, self.Settings.Audio.Library, true)
    self.OnIndexChange(self, self:CurrentSelection())

    self.ReDraw = true
end

function UIMenu:GoUp()
    if #self.Items > self.Pagination.Total + 1 then
        return
    end

    self.Items[self:CurrentSelection()]:Selected(false)
    self.ActiveItem = self.ActiveItem - 1
    self.Items[self:CurrentSelection()]:Selected(true)

    PlaySoundFrontend(-1, self.Settings.Audio.UpDown, self.Settings.Audio.Library, true)
    self.OnIndexChange(self, self:CurrentSelection())

    self.ReDraw = true
end

function UIMenu:GoDownOverflow()
    if #self.Items <= self.Pagination.Total + 1 then
        return
    end

    if self:CurrentSelection() >= self.Pagination.Max then
        if self:CurrentSelection() == #self.Items then
            self.Pagination.Min = 0
            self.Pagination.Max = self.Pagination.Total + 1
            self.Items[self:CurrentSelection()]:Selected(false)
            self.ActiveItem = 1000 - (1000 % #self.Items)
            self.Items[self:CurrentSelection()]:Selected(true)
        else
            self.Pagination.Max = self.Pagination.Max + 1
            self.Pagination.Min = self.Pagination.Max - (self.Pagination.Total + 1)
            self.Items[self:CurrentSelection()]:Selected(false)
            self.ActiveItem = self.ActiveItem + 1
            self.Items[self:CurrentSelection()]:Selected(true)
        end
    else
        self.Items[self:CurrentSelection()]:Selected(false)
        self.ActiveItem = self.ActiveItem + 1
        self.Items[self:CurrentSelection()]:Selected(true)
    end

    PlaySoundFrontend(-1, self.Settings.Audio.UpDown, self.Settings.Audio.Library, true)
    self.OnIndexChange(self, self:CurrentSelection())

    self.ReDraw = true
end

function UIMenu:GoDown()
    if #self.Items > self.Pagination.Total + 1 then
        return
    end

    self.Items[self:CurrentSelection()]:Selected(false)
    self.ActiveItem = self.ActiveItem + 1
    self.Items[self:CurrentSelection()]:Selected(true)

    PlaySoundFrontend(-1, self.Settings.Audio.UpDown, self.Settings.Audio.Library, true)
    self.OnIndexChange(self, self:CurrentSelection())

    self.ReDraw = true
end

function UIMenu:GoLeft()
    local _, subtype = self.Items[self:CurrentSelection()]()

    if subtype ~= 'UIMenuListItem' and subtype ~= 'UIMenuSliderItem' and subtype ~= 'UIMenuProgressItem' then
        return
    end

    if not self.Items[self:CurrentSelection()]:Enabled() then
        PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
        return
    end

    if subtype == 'UIMenuListItem' then
        local Item = self.Items[self:CurrentSelection()]

        Item:Index(Item._Index - 1)
        self.OnListChange(self, Item, Item._Index)
        Item.OnListChanged(self, Item, Item._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif subtype == 'UIMenuSliderItem' then
        local Item = self.Items[self:CurrentSelection()]

        Item:Index(Item._Index - 1)
        self.OnSliderChange(self, Item, Item:Index())
        Item.OnSliderChanged(self, Item, Item._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif subtype == 'UIMenuProgressItem' then
        local Item = self.Items[self:CurrentSelection()]

        Item:Index(Item.Data.Index - 1)
        self.OnProgressChange(self, Item, Item.Data.Index)
        Item.OnProgressChanged(self, Item, Item.Data.Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    end
end

function UIMenu:GoRight()
    local _, subtype = self.Items[self:CurrentSelection()]()

    if subtype ~= 'UIMenuListItem' and subtype ~= 'UIMenuSliderItem' and subtype ~= 'UIMenuProgressItem' then
        return
    end

    if not self.Items[self:CurrentSelection()]:Enabled() then
        PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
        return
    end

    if subtype == 'UIMenuListItem' then
        local Item = self.Items[self:CurrentSelection()]

        Item:Index(Item._Index + 1)
        self.OnListChange(self, Item, Item._Index)
        Item.OnListChanged(self, Item, Item._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif subtype == 'UIMenuSliderItem' then
        local Item = self.Items[self:CurrentSelection()]

        Item:Index(Item._Index + 1)
        self.OnSliderChange(self, Item, Item:Index())
        Item.OnSliderChanged(self, Item, Item._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif subtype == 'UIMenuProgressItem' then
        local Item = self.Items[self:CurrentSelection()]

        Item:Index(Item.Data.Index + 1)
        self.OnProgressChange(self, Item, Item.Data.Index)
        Item.OnProgressChanged(self, Item, Item.Data.Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    end
end

function UIMenu:SelectItem()
    if not self.Items[self:CurrentSelection()]:Enabled() then
        PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
        return
    end

    local Item = self.Items[self:CurrentSelection()]
    local _, subtype = Item()

    if subtype == 'UIMenuCheckboxItem' then
        Item.Checked = not Item.Checked

        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnCheckboxChange(self, Item, Item.Checked)
        Item.CheckboxEvent(self, Item, Item.Checked)
    elseif subtype == 'UIMenuListItem' then
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnListSelect(self, Item, Item._Index)
        Item.OnListSelected(self, Item, Item._Index)
    elseif subtype == 'UIMenuSliderItem' then
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnSliderSelect(self, Item, Item._Index)
        Item.OnSliderSelected(Item._Index)
    elseif subtype == 'UIMenuProgressItem' then
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnProgressSelect(self, Item, Item.Data.Index)
        Item.OnProgressSelected(Item.Data.Index)
    else
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnItemSelect(self, Item, self:CurrentSelection())
        Item.Activated(self, Item)

        if not self.Children[Item] then
            return
        end

        self:Visible(false)
        self.Children[Item]:Visible(true)
        self.Children[Item].OnMenuOpened(self.Children[Item])
        self.OnMenuChanged(self, self.Children[self.Items[self:CurrentSelection()]], true)
    end
end

function UIMenu:GoBack()
    PlaySoundFrontend(-1, self.Settings.Audio.Back, self.Settings.Audio.Library, true)
    self:Visible(false)

    if self.ParentMenu ~= nil then
        self.ParentMenu:Visible(true)
        self.ParentMenu.OnMenuOpened(self.ParentMenu)
        self.OnMenuChanged(self, self.ParentMenu, false)

        if self.Settings.ResetCursorOnOpen then
            local W, H = GetActiveScreenResolution()

            SetCursorLocation(W / 2, H / 2)
        end
    end

    self.OnMenuClosed(self)
end

function UIMenu:BindMenuToItem(Menu, Item)
    if Menu() == 'UIMenu' and Item() == 'UIMenuItem' then
        Menu.ParentMenu = self
        Menu.ParentItem = Item
        self.Children[Item] = Menu
    end
end

function UIMenu:ReleaseMenuFromItem(Item)
    if Item() == 'UIMenuItem' then
        if not self.Children[Item] then
            return false
        end

        self.Children[Item].ParentMenu = nil
        self.Children[Item].ParentItem = nil
        self.Children[Item] = nil

        return true
    end
end

function UIMenu:Draw()
    if not self._Visible then
        return
    end

    HideHudComponentThisFrame(19)

    if self.Settings.ControlDisablingEnabled or self.Settings.ControlDisablingForGamePadOnly then
        self:DisableControls()
    end

    if self.Settings.InstructionalButtons then
        DrawScaleformMovieFullscreen(self.InstructionalScaleform, 255, 255, 255, 255, 0)
    end

    if self.Settings.ScaleWithSafezone then
        SetScriptGfxAlign(76, 84)
        SetScriptGfxAlignParams(0, 0, 0, 0)
    end

    if self.ReDraw then
        self:DrawCalculations()
    end

    if self.Logo then
        self.Logo:Draw()
    elseif self.Banner then
        self.Banner:Draw()
    end

    self.Title:Draw()

    if self.Subtitle.Rectangle then
        self.Subtitle.Rectangle:Draw()
        self.Subtitle.Text:Draw()
    end

    if #self.Items ~= 0 or #self.Windows ~= 0 then
        self.Background:Draw()
    end

    if #self.Windows ~= 0 then
        local WindowOffset = 0
        for index = 1, #self.Windows do
            if self.Windows[index - 1] then
                WindowOffset = WindowOffset + self.Windows[index - 1].Background:Size().Height
            end
            local Window = self.Windows[index]
            Window:Position(WindowOffset + self.Subtitle.ExtraY - 37)
            Window:Draw()
        end
    end

    if #self.Items == 0 then
        if self.Settings.ScaleWithSafezone then
            ResetScriptGfxAlign()
        end

        return
    end

    local CurrentSelection = self:CurrentSelection()

    self.Items[CurrentSelection]:Selected(true)

    if self.Items[CurrentSelection]:Description() ~= '' then
        self.Description.Bar:Draw()
        self.Description.Rectangle:Draw()
        self.Description.Text:Draw()
    end

    if self.Items[CurrentSelection].Panels ~= nil then
        if #self.Items[CurrentSelection].Panels ~= 0 then
            local PanelOffset = self:CaclulatePanelPosition(self.Items[CurrentSelection]:Description() ~= '')

            for index = 1, #self.Items[CurrentSelection].Panels do
                if self.Items[CurrentSelection].Panels[index - 1] then
                    PanelOffset = PanelOffset + self.Items[CurrentSelection].Panels[index - 1].Background:Size().Height + 5
                end

                self.Items[CurrentSelection].Panels[index]:Position(PanelOffset)
                self.Items[CurrentSelection].Panels[index]:Draw()
            end
        end
    end

    local WindowHeight = self:CalculateWindowHeight()

    if #self.Items <= self.Pagination.Total + 1 then
        local ItemOffset = self.Subtitle.ExtraY - 37 + WindowHeight

        for index = 1, #self.Items do
            local Item = self.Items[index]

            Item:Position(ItemOffset)
            Item:Draw()
            ItemOffset = ItemOffset + self:CalculateItemHeightOffset(Item)
        end
    else
        local ItemOffset = self.Subtitle.ExtraY - 37 + WindowHeight

        for index = self.Pagination.Min + 1, self.Pagination.Max, 1 do
            if self.Items[index] then
                local Item = self.Items[index]

                Item:Position(ItemOffset)
                Item:Draw()
                ItemOffset = ItemOffset + self:CalculateItemHeightOffset(Item)
            end
        end

        self.Extra.Up:Draw()
        self.Extra.Down:Draw()
        self.ArrowSprite:Draw()

        if self.PageCounter.Text ~= nil then
            local Caption = self.PageCounter.PreText .. CurrentSelection .. ' / ' .. #self.Items

            self.PageCounter.Text:Text(Caption)
            self.PageCounter.Text:Draw()
        end
    end

    if self.Settings.ScaleWithSafezone then
        ResetScriptGfxAlign()
    end
end

function UIMenu:ProcessMouse()
    if not self._Visible or self.JustOpened or #self.Items == 0 or not IsUsingKeyboard(2) or not self.Settings.MouseControlsEnabled then
        EnableControlAction(0, 2, true)
        EnableControlAction(0, 1, true)
        EnableControlAction(0, 25, true)
        EnableControlAction(0, 24, true)

        if self.Dirty then
            for _, Item in pairs(self.Items) do
                if Item:Hovered() then
                    Item:Hovered(false)
                end
            end
        end

        return
    end

    local SafeZone = {X = 0, Y = 0}
    local WindowHeight = self:CalculateWindowHeight()

    if self.Settings.ScaleWithSafezone then
       SafeZone = getSafeZoneBounds()
    end

    local Limit = #self.Items
    local ItemOffset = 0

    ShowCursorThisFrame()

    if #self.Items > self.Pagination.Total + 1 then
        Limit = self.Pagination.Max
    end

    if isMouseInBounds(0, 0, 30, 1080) and self.Settings.MouseEdgeEnabled then
        SetGameplayCamRelativeHeading(GetGameplayCamRelativeHeading() + 5)
        SetMouseCursorSprite(6)
    elseif isMouseInBounds(1920 - 30, 0, 30, 1080) and self.Settings.MouseEdgeEnabled then
        SetGameplayCamRelativeHeading(GetGameplayCamRelativeHeading() - 5)
        SetMouseCursorSprite(7)
    elseif self.Settings.MouseEdgeEnabled then
        SetMouseCursorSprite(1)
    end

    for i = self.Pagination.Min + 1, Limit, 1 do
        local X, Y = self.Position.X + SafeZone.X, self.Position.Y + 144 - 37 + self.Subtitle.ExtraY + ItemOffset + SafeZone.Y + WindowHeight
        local Item = self.Items[i]
        local _, SubType = Item()
        local Width, Height = 431 + self.WidthOffset, self:CalculateItemHeightOffset(Item)

        if isMouseInBounds(X, Y, Width, Height) then
            Item:Hovered(true)

            if not self.Controls.MousePressed then
                if IsDisabledControlJustPressed(1, 24) and IsUsingKeyboard(0) then
                    CreateThread(function()
                        local _X, _Y, _Width, _Height = X, Y, Width, Height

                        self.Controls.MousePressed = true

                        if Item:Selected() and Item:Enabled() then
                            if SubType == 'UIMenuListItem' then
                                if isMouseInBounds(Item.LeftArrow.X + SafeZone.X, Item.LeftArrow.Y + SafeZone.Y, Item.LeftArrow.Width, Item.LeftArrow.Height) then
                                    self:GoLeft()
                                elseif not isMouseInBounds(Item.RightArrow.X + SafeZone.X, Item.RightArrow.Y + SafeZone.Y, Item.RightArrow.Width, Item.RightArrow.Height) then
                                    self:SelectItem()
                                end
                                if isMouseInBounds(Item.RightArrow.X + SafeZone.X, Item.RightArrow.Y + SafeZone.Y, Item.RightArrow.Width, Item.RightArrow.Height) then
                                    self:GoRight()
                                elseif not isMouseInBounds(Item.LeftArrow.X + SafeZone.X, Item.LeftArrow.Y + SafeZone.Y, Item.LeftArrow.Width, Item.LeftArrow.Height) then
                                    self:SelectItem()
                                end
                            elseif SubType == 'UIMenuSliderItem' then
                                if isMouseInBounds(Item.LeftArrow.X + SafeZone.X, Item.LeftArrow.Y + SafeZone.Y, Item.LeftArrow.Width, Item.LeftArrow.Height) then
                                    self:GoLeft()
                                elseif not isMouseInBounds(Item.RightArrow.X + SafeZone.X, Item.RightArrow.Y + SafeZone.Y, Item.RightArrow.Width, Item.RightArrow.Height) then
                                    self:SelectItem()
                                end
                                if isMouseInBounds(Item.RightArrow.X + SafeZone.X, Item.RightArrow.Y + SafeZone.Y, Item.RightArrow.Width, Item.RightArrow.Height) then
                                    self:GoRight()
                                elseif not isMouseInBounds(Item.LeftArrow.X + SafeZone.X, Item.LeftArrow.Y + SafeZone.Y, Item.LeftArrow.Width, Item.LeftArrow.Height) then
                                    self:SelectItem()
                                end
                            elseif SubType == 'UIMenuProgressItem' then
                                if isMouseInBounds(Item.Bar.X + SafeZone.X, Item.Bar.Y + SafeZone.Y - 12, Item.Data.Max, Item.Bar.Height + 24) then
                                    Item:CalculateProgress(roundDecimals(GetControlNormal(0, 239) * 1920) - SafeZone.X)
                                    self.OnProgressChange(self, Item, Item.Data.Index)
                                    Item.OnProgressChanged(self, Item, Item.Data.Index)
                                else
                                    self:SelectItem()
                                end
                            else
                                self:SelectItem()
                            end
                        elseif not Item:Selected() then
                            self:CurrentSelection(i-1)
                            PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
                            self.OnIndexChange(self, self:CurrentSelection())
                            self.ReDraw = true
                            self:UpdateScaleform()
                        elseif not Item:Enabled() and Item:Selected() then
                            PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
                        end

                        Wait(175)

                        while IsDisabledControlPressed(0, 24) and isMouseInBounds(_X, _Y, _Width, _Height) do
                            if Item:Selected() and Item:Enabled() then
                                if SubType == 'UIMenuListItem' then
                                    if isMouseInBounds(Item.LeftArrow.X + SafeZone.X, Item.LeftArrow.Y + SafeZone.Y, Item.LeftArrow.Width, Item.LeftArrow.Height) then
                                        self:GoLeft()
                                    end
                                    if isMouseInBounds(Item.RightArrow.X + SafeZone.X, Item.RightArrow.Y + SafeZone.Y, Item.RightArrow.Width, Item.RightArrow.Height) then
                                        self:GoRight()
                                    end
                                elseif SubType == 'UIMenuSliderItem' then
                                    if isMouseInBounds(Item.LeftArrow.X + SafeZone.X, Item.LeftArrow.Y + SafeZone.Y, Item.LeftArrow.Width, Item.LeftArrow.Height) then
                                        self:GoLeft()
                                    end
                                    if isMouseInBounds(Item.RightArrow.X + SafeZone.X, Item.RightArrow.Y + SafeZone.Y, Item.RightArrow.Width, Item.RightArrow.Height) then
                                        self:GoRight()
                                    end
                                elseif SubType == 'UIMenuProgressItem' then
                                    if isMouseInBounds(Item.Bar.X + SafeZone.X, Item.Bar.Y + SafeZone.Y - 12, Item.Data.Max, Item.Bar.Height + 24) then
                                        Item:CalculateProgress(roundDecimals(GetControlNormal(0, 239) * 1920) - SafeZone.X)
                                        self.OnProgressChange(self, Item, Item.Data.Index)
                                        Item.OnProgressChanged(self, Item, Item.Data.Index)
                                    else
                                        self:SelectItem()
                                    end
                                end
                            elseif not Item:Selected() then
                                self:CurrentSelection(i-1)
                                PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
                                self.OnIndexChange(self, self:CurrentSelection())
                                self.ReDraw = true
                                self:UpdateScaleform()
                            elseif not Item:Enabled() and Item:Selected() then
                                PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
                            end

                            Wait(125)
                        end

                        self.Controls.MousePressed = false
                    end)
                end
            end
        else
            Item:Hovered(false)
        end

        ItemOffset = ItemOffset + self:CalculateItemHeightOffset(Item)
    end

    local ExtraX, ExtraY = self.Position.X + SafeZone.X, 144 + self:CalculateItemHeight() + self.Position.Y + SafeZone.Y + WindowHeight

    if #self.Items <= self.Pagination.Total + 1 then return end

    if isMouseInBounds(ExtraX, ExtraY, 431 + self.WidthOffset, 18) then
        self.Extra.Up:Color(30, 30, 30, 255)

        if not self.Controls.MousePressed then
            if IsDisabledControlJustPressed(1, 24) and IsUsingKeyboard(0) then
                CreateThread(function()
                    local _ExtraX, _ExtraY = ExtraX, ExtraY

                    self.Controls.MousePressed = true

                    if #self.Items > self.Pagination.Total + 1 then
                        self:GoUpOverflow()
                    else
                        self:GoUp()
                    end

                    Wait(175)

                    while IsDisabledControlPressed(0, 24) and isMouseInBounds(_ExtraX, _ExtraY, 431 + self.WidthOffset, 18) do
                        if #self.Items > self.Pagination.Total + 1 then
                            self:GoUpOverflow()
                        else
                            self:GoUp()
                        end

                        Wait(125)
                    end

                    self.Controls.MousePressed = false
                end)
            end
        end
    else
        self.Extra.Up:Color(0, 0, 0, 200)
    end

    if isMouseInBounds(ExtraX, ExtraY + 18, 431 + self.WidthOffset, 18) then
        self.Extra.Down:Color(30, 30, 30, 255)

        if not self.Controls.MousePressed then
            if IsDisabledControlJustPressed(1, 24) and IsUsingKeyboard(0) then
                CreateThread(function()
                    local _ExtraX, _ExtraY = ExtraX, ExtraY

                    self.Controls.MousePressed = true

                    if #self.Items > self.Pagination.Total + 1 then
                        self:GoDownOverflow()
                    else
                        self:GoDown()
                    end

                    Wait(175)

                    while IsDisabledControlPressed(0, 24) and isMouseInBounds(_ExtraX, _ExtraY + 18, 431 + self.WidthOffset, 18) do
                        if #self.Items > self.Pagination.Total + 1 then
                            self:GoDownOverflow()
                        else
                            self:GoDown()
                        end

                        Wait(125)
                    end

                    self.Controls.MousePressed = false
                end)
            end
        end
    else
        self.Extra.Down:Color(0, 0, 0, 200)
    end
end

function UIMenu:AddInstructionButton(button)
    if type(button) == 'table' and #button == 2 then
        table.insert(self.InstructionalButtons, button)
    end
end

function UIMenu:RemoveInstructionButton(button)
    if type(button) == 'table' then
        for i = 1, #self.InstructionalButtons do
            if button == self.InstructionalButtons[i] then
                table.remove(self.InstructionalButtons, i)
                break
            end
        end
    else
        if tonumber(button) then
            if self.InstructionalButtons[tonumber(button)] then
                table.remove(self.InstructionalButtons, tonumber(button))
            end
        end
    end
end

function UIMenu:AddEnabledControl(Type, ControlInfo)
    table.insert(self.Settings.EnabledControls[Type], ControlInfo)
end

function UIMenu:RemoveEnabledControl(Inputgroup, Control, Type)
    for Index = 1, #self.Settings.EnabledControls[Type] do
        if Inputgroup == self.Settings.EnabledControls[Type][Index].padIndex and Control == self.Settings.EnabledControls[Type][Index].control then
            table.remove(self.Settings.EnabledControls[Type], Index)
            break
        end
    end
end

local BeginScaleformMovieMethod = BeginScaleformMovieMethod
local EndScaleformMovieMethodReturnValue = EndScaleformMovieMethodReturnValue
local ScaleformMovieMethodAddParamInt = ScaleformMovieMethodAddParamInt
local ScaleformMovieMethodAddParamTextureNameString = ScaleformMovieMethodAddParamTextureNameString

function UIMenu:UpdateScaleform()
    if not self._Visible or not self.Settings.InstructionalButtons then
        return
    end

    BeginScaleformMovieMethod(self.InstructionalScaleform, 'CLEAR_ALL')
    EndScaleformMovieMethodReturnValue()

    BeginScaleformMovieMethod(self.InstructionalScaleform, 'TOGGLE_MOUSE_BUTTONS')
    ScaleformMovieMethodAddParamInt(0)
    EndScaleformMovieMethodReturnValue()

    BeginScaleformMovieMethod(self.InstructionalScaleform, 'CREATE_CONTAINER')
    EndScaleformMovieMethodReturnValue()

    BeginScaleformMovieMethod(self.InstructionalScaleform, 'SET_DATA_SLOT')
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamTextureNameString(GetControlInstructionalButton(2, 176, 0))
    ScaleformMovieMethodAddParamTextureNameString('Select')
    EndScaleformMovieMethodReturnValue()

    if self.Controls.Back.Enabled then
        BeginScaleformMovieMethod(self.InstructionalScaleform, 'SET_DATA_SLOT')
        ScaleformMovieMethodAddParamInt(1)
        ScaleformMovieMethodAddParamTextureNameString(GetControlInstructionalButton(2, 177, 0))
        ScaleformMovieMethodAddParamTextureNameString('Back')
        EndScaleformMovieMethodReturnValue()
    end

    local count = 2

    for i = 1, #self.InstructionalButtons do
        if self.InstructionalButtons[i] then
            if #self.InstructionalButtons[i] == 2 then
                BeginScaleformMovieMethod(self.InstructionalScaleform, 'SET_DATA_SLOT')
                ScaleformMovieMethodAddParamInt(count)
                ScaleformMovieMethodAddParamTextureNameString(self.InstructionalButtons[i][1])
                ScaleformMovieMethodAddParamTextureNameString(self.InstructionalButtons[i][2])
                EndScaleformMovieMethodReturnValue()
                count = count + 1
            end
        end
    end

    BeginScaleformMovieMethod(self.InstructionalScaleform, 'DRAW_INSTRUCTIONAL_BUTTONS')
    ScaleformMovieMethodAddParamInt(-1)
    EndScaleformMovieMethodReturnValue()
end

function UIMenuHandler.New()
    local _MenuPool = {
        Menus = {}
    }

    return setmetatable(_MenuPool, UIMenuHandler)
end

function UIMenuHandler:AddSubMenu(Menu, Title, Subtitle, Description, KeepPosition, KeepBanner)
    if Menu() == 'UIMenu' then
        local Item = UIMenuItem.New(Title, Description or '')

        Menu:AddItem(Item)

        local SubMenu

        if KeepPosition then
            SubMenu = UIMenu.New(Menu.Title._Text, Subtitle, Menu.Position.X, Menu.Position.Y, Menu.TxtDictionary, Menu.TxtName)
        else
            SubMenu = UIMenu.New(Menu.Title._Text, Subtitle, 0, 0, Menu.TxtDictionary, Menu.TxtName)
        end

        if KeepBanner then
            if Menu.Logo ~= nil then
                SubMenu.Logo = Menu.Logo
            else
                SubMenu.Logo = nil
                SubMenu.Banner = Menu.Banner
            end
        end

        self:Add(SubMenu)
        Menu:BindMenuToItem(SubMenu, Item)

        return SubMenu, Item
    end
end

function UIMenuHandler:Add(Menu)
    if Menu() == 'UIMenu' then
        table.insert(self.Menus, Menu)
    end
end

function UIMenuHandler:RemoveMenu(index)
    for _, Menu in pairs(self.Menus) do
        if Menu == index then
            Menu = nil
            break
        end
    end
end

function UIMenuHandler:Clear()
	self = {
		Menus = {}
	}

	collectgarbage()
end

function UIMenuHandler:Remove()
	self = nil

	collectgarbage()
end

function UIMenuHandler:MouseEdgeEnabled(bool)
    if bool ~= nil then
        for _, Menu in pairs(self.Menus) do
            Menu.Settings.MouseEdgeEnabled = toBool(bool)
        end
    end
end

function UIMenuHandler:ControlDisablingEnabled(bool)
    if bool ~= nil then
        for _, Menu in pairs(self.Menus) do
            Menu.Settings.ControlDisablingEnabled = toBool(bool)
        end
    end
end

function UIMenuHandler:ResetCursorOnOpen(bool)
    if bool ~= nil then
        for _, Menu in pairs(self.Menus) do
            Menu.Settings.ResetCursorOnOpen = toBool(bool)
        end
    end
end

function UIMenuHandler:MultilineFormats(bool)
    if bool ~= nil then
        for _, Menu in pairs(self.Menus) do
            Menu.Settings.MultilineFormats = toBool(bool)
        end
    end
end

function UIMenuHandler:Audio(Attribute, Setting)
    if Attribute ~= nil and Setting ~= nil then
        for _, Menu in pairs(self.Menus) do
            if Menu.Settings.Audio[Attribute] then
                Menu.Settings.Audio[Attribute] = Setting
            end
        end
    end
end

function UIMenuHandler:WidthOffset(offset)
    if tonumber(offset) then
        for _, Menu in pairs(self.Menus) do
            Menu:SetMenuWidthOffset(tonumber(offset))
        end
    end
end

function UIMenuHandler:CounterPreText(str)
    if str ~= nil then
        for _, Menu in pairs(self.Menus) do
            Menu.PageCounter.PreText = tostring(str)
        end
    end
end

function UIMenuHandler:DisableInstructionalButtons(bool)
    if bool ~= nil then
        for _, Menu in pairs(self.Menus) do
            Menu.Settings.InstructionalButtons = toBool(bool)
        end
    end
end

function UIMenuHandler:MouseControlsEnabled(bool)
    if bool ~= nil then
        for _, Menu in pairs(self.Menus) do
            Menu.Settings.MouseControlsEnabled = toBool(bool)
        end
    end
end

function UIMenuHandler:RefreshIndex()
    for _, Menu in pairs(self.Menus) do
        Menu:RefreshIndex()
    end
end

function UIMenuHandler:ProcessMenus()
    self:ProcessControl()
    self:Draw()
end

function UIMenuHandler:ProcessControl()
    for _, Menu in pairs(self.Menus) do
        if Menu:Visible() then
            Menu:ProcessControl()
            break
        end
    end
end

function UIMenuHandler:ProcessMouse()
    for _, Menu in pairs(self.Menus) do
        if Menu:Visible() then
            Menu:ProcessMouse()
            break
        end
    end
end

function UIMenuHandler:Draw()
    for _, Menu in pairs(self.Menus) do
        if Menu:Visible() then
            Menu:Draw()
            break
        end
    end
end

function UIMenuHandler:IsAnyMenuOpen()
    local open = false

    for _, Menu in pairs(self.Menus) do
        if Menu:Visible() then
            open = true
            break
        end
    end

    return open
end

function UIMenuHandler:CloseAllMenus()
    for _, Menu in pairs(self.Menus) do
        if Menu:Visible() then
            Menu:Visible(false)
            Menu.OnMenuClosed(Menu)
            break
        end
    end
end

function UIMenuHandler:SetBannerSprite(UIMenuSprite)
    if UIMenuSprite() == 'UIMenuSprite' then
        for _, Menu in pairs(self.Menus) do
            Menu:SetBannerSprite(UIMenuSprite)
        end
    end
end

function UIMenuHandler:SetBannerRectangle(Rectangle)
    if Rectangle() == 'Rectangle' then
        for _, Menu in pairs(self.Menus) do
            Menu:SetBannerRectangle(Rectangle)
        end
    end
end

function UIMenuHandler:TotalItemsPerPage(Value)
    if tonumber(Value) then
        for _, Menu in pairs(self.Menus) do
            Menu.Pagination.Total = Value - 1
        end
    end
end