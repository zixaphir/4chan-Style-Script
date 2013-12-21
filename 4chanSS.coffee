d = document
defaultConfig =
  'Show Board Name': [
    true
    "Toggle visibility of the board name."
  ]
  'Show Text Board': [
    true
    "Toggle visibility of the text board link"
  ],
  "Show Logo": [
    true
    "Toggle visibility of the logo"
    null
    true
  ]
  "Show Logo Reflection": [
    true
    "Toggle visibility of the logo reflection"
    "Show Logo"
    true
    true
  ]
  "Fixed Logo Position": [
    true
    "Moves logo and board name into the sidebar"
  ]
  "Auto Hide Thread Watcher": [
    true
    "Hides watched threads unless the mouse is over the watcher"
  ]
  "Slim Threads": [
    false
    "Reduces the spacing between threads"
  ]
  "Slim Replies": [
    true
    "Reduces the size of replies"
  ]
  "Rounded Edges": [
    true
    "Makes certain elements have round edges"
  ]
  "Emoji Icons": [
    false
    "Show icons for different e-mails"
  ]
  "Smart Tripcode Hider": [
    false
    "Hides the name field if the value contains a tripcode"
  ]
  "Hide Checkboxes": [
    true
    "Hides the delete/report checkboxes"
  ]
  "Show/Hide Menu Entry": [
    true
    "Replaces the hide/show post button with a menu entry"
  ]
  "Underline Links": [
    false
    "If enabled links that are normally underlined will remain so"
  ]
  "Expanding Form Inputs": [
    true
    "Makes certain form elements expand on focus"
  ]
  "Custom Navigation Links": [
    true
    "Use specified links instead of showing all boards"
  ]
  "SFW/NSFW Themes": [
    true
    "Allows you to choose one theme for SFW boards and another for NSFW boards."
  ]
  "Style Scrollbars": [
    true
    "Make the scroll bar match the theme"
  ]
  "Style Post Info": [
    true
    "Style the post information to differ from the actual post."
  ]
  "Sage Identification": [
    3
    "Adds identification to posts that do not bump threads."
    [
      { name: "None", value: 1 }
      { name: "Text", value: 2 }
      { name: "Icon", value: 3 }
    ]
  ]
  "Emoji Position": [
    "after"
    "Changes the location of emoji icons"
    [
      { name: "Before", value: "before" }
      { name: "After",  value: "after"  }
    ]
  ]
  "Side Margin": [
    5
    "Change the size of the margin opposite of the sidebar",
    [
      { name: "Large",  value: 65 }
      { name: "Medium", value: 25 }
      { name: "Small",  value: 5  }
      { name: "None",   value: 0  }
    ]
  ]
  "Layout": [
    1
    "Change the layout of the main content",
    [
      { name: "Fit Width",   value: 1 }
      { name: "Fit Content", value: 2 }
      { name: "Centered",    value: 3 }
    ]
    true
  ],
  "Navigation Bar Position": [
    2
    "Sets the position of the navigation bar"
    [
      { name: "Top",    value: 1 }
      { name: "Bottom", value: 2 }
    ]
  ]
  "Post Form": [
    2
    "Change the transition for the post form"
    [
      { name: "Slide Up",  value: 1 }
      { name: "Fade",      value: 2 }
      { name: "Fixed",     value: 3 }
      { name: "Float",     value: 4 }
    ]
  ]
  "Sidebar Position": [
    1
    "Change the position of the sidebar"
    [
      { name: "Right",       value: 1 }
      { name: "Left",        value: 2 }
      { name: "Right (Old)", value: 4 }
      { name: "Left (Old)",  value: 5 }
      { name: "Disabled",    value: 3 }
    ]
    true
  ]
  "Pages Position": [
    1
    "Change the location of the page links"
    [
      { name: "Drop Down",      value: 1 }
      { name: "Fixed",          value: 2 }
      { name: "Fixed Vertical", value: 3 }
      { name: "Hidden",         value: 4 }
    ]
  ]
  "Font": [
    "sans-serif"
    "Set the default font family"
    [
      { name: "Default",       value: "sans-serif"    }
      { name: "Monospace",     value: "monospace"     }
      { name: "Ubuntu",        value: "Ubuntu"        }
      { name: "Consolas",      value: "Consolas"      }
      { name: "Droid Sans",    value: "Droid Sans"    }
      { name: "Segoe UI",      value: "Segoe UI"      }
      { name: "Calibri",       value: "Calibri"       }
      { name: "Arial",         value: "Arial"         }
      { name: "Lucida Grande", value: "Lucida Grande" }
      { name: "Helvetica",     value: "Helvetica"     }
    ]
  ]
  "Font Size": [
    12
    "Set the general size of text (Pixels)"
  ]
  "Bitmap Font": [
    false
    "Check @ if you are using a bitmap font"
  ]
  "Nav Links": [
    { text: "anime & manga",       link: "boards.4chan.org/a/"  }
    { text: "anime/cute",          link: "boards.4chan.org/c/"  }
    { text: "technology",          link: "boards.4chan.org/g/"  }
    { text: "video game generals", link: "boards.4chan.org/vg/" }
    { text: "otaku culture",       link: "boards.4chan.org/jp/" }
  ]
  "Nav Link Delimiter": [
    "&nbsp;-&nbsp;"
    "Sets the character which will separate navigation links"
  ]
  "Themes":           []
  "Hidden Themes":    []
  "Selected Theme":   0
  "NSFW Theme":       0
  "Selected Mascots": 0
  "Mascots":          []
  "Hidden Mascots":   []

MAX_FONT_SIZE = 18
MIN_FONT_SIZE = 8
NAMESPACE     = "4chanSS."
VERSION       = "3.0.12"
inputImages   = "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAgCAYAAAAv8DnQAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAP9JREFUOMvV0CFLQ2EYxfHfrtdiURgbmCxOmFPBJgZZ0CQD0Q+goFkwabWIyWIWFgwmy7Qp7DPI3GD7ACZlYLNcy31ljG0aDHrSy3N43nOef6ZULBiifczEQ8wV7OAtGmBO4wgfOI2whsXUnMAJ8rhCJ8IxDpHDHpZwixqM5XPZBBtYxioauEgjRLjBI2bRxTneQ6EYCS4xiTu89DbONJrtP88hwnV64hm28YRqyPsFDkmSGKUYFubnsqignM7rqDWa7dcAqoLdnsXwrgZQ5QG/l8MVIxX1ZPar/lUyUOsv+aMzv+0Qw3OrM4VNrKfzB9yXioVu6LDVx+EA4/+Gwycw/Uz36O07WwAAAABJRU5ErkJggg=="
fontListSWF   = "http://ahodesuka.github.com/FontList.swf"
themeInputs   = [
  { dName: "Body Background",  name: "bgColor",     property: "background-color" }
  { dName: "Reply Background", name: "mainColor",   property: "background-color" }
  { dName: "Reply Border",     name: "brderColor",  property: "border-color"     }
  { dName: "Input Background", name: "inputColor",  property: "background-color" }
  { dName: "Input Border",     name: "inputbColor", property: "border-color"     }
  { dName: "Backlinks",        name: "blinkColor",  property: "color"            }
  { dName: "4chan x Links",    name: "jlinkColor",  property: "color"            }
  { dName: "Links",            name: "linkColor",   property: "color"            }
  { dName: "Links Hovered",    name: "linkHColor",  property: "color"            }
  { dName: "Names",            name: "nameColor",   property: "color"            }
  { dName: "Quote",            name: "quoteColor",  property: "color"            }
  { dName: "Text",             name: "textColor",   property: "color"            }
  { dName: "Sage",             name: "sageColor",   property: "color"            }
  { dName: "Tripcodes",        name: "tripColor",   property: "color"            }
  { dName: "Titles",           name: "titleColor",  property: "color"            }
  { dName: "Timestamps",       name: "timeColor",   property: "color"            }
]

__toHexStr = ->
  s = ""
  i = 7

  while i-- >= 0
    s += ((@ >>> (i * 4)) & 0xf).toString 16
  return s

###
 STYLE SCRIPT LIBRARY
 More or less based off jQuery
###
class $
  constructor: (selector, root) ->
    if @ instanceof $
      @constructor = $
      @elems = []
      @length = -> @elems.length
      return @init selector, root
    else
      return new $ selector, root

  check: (el) -> return (if el.constructor is $ then el.get() else el)

  init: (selector, root) ->
    return @ unless selector?

    if selector.constructor is $
      return selector

    else if typeof selector is 'string'
      root = root or d

      # No closing tag for root node.
      tagCheck = /^<(\w+)([^>]*)>(.*)$/.exec selector

      root = @check root

      if tagCheck
        tag = d.createElement tagCheck[1]

        if tagCheck[2]
          atRegEx = /(\w+)=((?:"(?:[^"]+)"|'(?:[^']+)'|(?:\w+)))/g
          while not (attribs = atRegEx.exec tagCheck[2])?
            val = attribs[2]
            if (val[0] is '"' or val[0] is "'") and val[0] is val[val.length-1]
              val = val.substr 1, val.length-2

            tag.setAttribute attribs[1], val

        tag.innerHTML = tagCheck[2]
        @elems = [ tag ]

      else if /^#[A-Za-z][\w\-.:]+$/.test(selector) and root is d
        if (el = root.getElementById selector.substr 1)?
          @elems = [ el ]

      else if root.querySelectorAll?
        @elems = [root.querySelectorAll(selector)...]

    else if selector.nodeType
      @elems = [ selector ]

    else if Array.isArray selector
      @elems = [selector...]

    return @

  # DOM NODE RETRIEVAL
  clone: ->
    ret = []
    @each ret.push @cloneNode true
    new $ ret

  elements: ->
    return @ unless @hasSingleEl()
    @elems = [@elems[0].elements...]
    @

  get: (index) ->
    unless index?
      return @elems[0] if @elems.length is 1
      return @elems unless @hasSingleEl()
    else @elems[index]

  # DOM MANIPULATION
  prepend: (el) ->
    el = @check el
    @each -> @insertBefore el, @firstChild

  append: (el) ->
    el = @check el
    @each -> @appendChild el

  before: (el) ->
    el = @check el
    @each -> @parentNode.insertBefore el, @

  after: (el) ->
    el = @check el
    @each ->
      if @nextSibling?
        @parentNode.insertBefore el, @nextSibling
      else if @parentNode?
        @parentNode.appendChild el

  replace: (el) -> @each -> $(@).before(el).remove()

  html: (html) -> return (
    unless html?
      @elems[0].innerHTML
    else
      @each -> @innerHTML = html
  )

  text: (text) ->
    return if @length() is 0
    return unless text?
    @each -> @textContent = text

  appendText: (text) ->
    return unless text?
    @each -> @textContent += text

  attr: (name, val) ->
    unless val?
      return (unless @hasSingleEl()
        @
      else
        @elems[0].getAttribute name)
    else if val is ""
      return @each -> @removeAttribute name

    @each -> @setAttribute name, val

  disabled: (bDisabled) -> return (
    unless bDisabled?
      @elems[0].disabled
    else
      @each -> @disabled = bDisabled
  )

  toggle: (bHidden) -> @each ->
    that = $ @
    unless bHidden?
      bHidden = @attr("disabled") is "true"
    that.attr "hidden", bHidden or ""

  hide: ->
    @toggle true

  show: ->
    @toggle false

  val: (val) ->
    unless val?
      el = @elems[0]
      unless el?
        return false
      switch el.type
        when 'checkbox', 'radio'
          el.checked is true
        else
          if /^\d+$/.test el.value
            return parseInt el.value
          return el.value

    @each ->
      switch @type
        when 'checkbox', 'radio'
          @checked = val
        else
          @value = val

  checked: (state) -> @each -> @checked = state

  addClass: (classNames) ->
    classNames = classNames.split " "
    @each ->
      @className += (if @className then " " else "") name for name in classNames when !$(@).hassClass name
      return

  hasClass: (className) ->
    return false unless @hasSingleEl() or @elems[0].className?
    (new RegExp "\\b#{className}\\b").text @elems[0].className

  removeClass: (classNames) ->
    classNames = classNames.split " "
    @each ->
      elClassNames = @className.split " "
      newClassNames = []

      for name in elClassNames when pass
        pass = true
        for check in classNames
          if check is name
            pass = false
            break
        continue unless pass
        newClassNames.push name
      @className = newClassNames.join " "

  toggleClass: (classNames) ->
    classNames = classNames.split " "
    @each ->
      that = $ @
      remove = []
      add    = []
      for name in classNames
        if that.hasClass name
          remove.push name
        else
          add.push name

      that.removeClass remove.join " " if remove.length
      that.addClass add.join " " if add.length

  remove: -> @each -> @parentNode.removeChild @

  # DOM TRAVERSING
  parent: ->
    return @ unless @hasSingleEl()
    new $ @elems[0].parentNode

  children: (selector) ->
    return @ unless @hasSingleEl()
    selector = '*' unless selector
    new $ selector, @elems[0]

  nextSibling: (selector) ->
    return new $ null if (if @hasSingleEl() then !@elems[0].nextSibling? else true)

    # Copy
    unless selector?
      m = new $ selector, @elems[0].parentNode
      s = @elems[0].parentNode.childNodes
      i = s.length
      t = null

      while item = s[--i]
        return new $ null if s[i] is @elems[0] and not t?  # end and no matching siblings
        return new $ t    if s[i] is @elems[0] and t?      # end and matched siblings
        t = s[i]          if m.elems.indexOf(s[i]) isnt -1 # @ element matches the selector

    new $ @elems[0].nextSibling

  previousSibling: (selector) ->
    return new $ null if (if @hasSingleEl() then !@elems[0].previousSibling? else true)

    # Paste
    unless selector?
      m = new $ selector, @elems[0].parentNode
      s = @elems[0].parentNode.childNodes
      i = 0
      t = null

      while item = s[++i]
        return new $ null if s[i] is @elems[0] and not t?  # end and no matching siblings
        return new $ t    if s[i] is @elems[0] and t?      # end and matched siblings
        t = s[i]          if m.elems.indexOf(s[i]) isnt -1 # @ element matches the selector

    new $ @elems[0].previousSibling

  # EVENT METHODS
  bind:   (type, listener) -> @each -> @addEventListener    type, listener, false
  unbind: (type, listener) -> @each -> @removeEventListener type, listener, false
  blur:  -> @each -> @blur()
  click: -> @each -> @click()
  scrollIntoView: (alignWithTop) -> @each -> @scrollIntoView alignWithTop

  fire: (e) ->
    evt = d.createEvent "HTMLEvents"
    @each ->
      e.initEvent evt, true, true
      @dispatchEvent evt

  # HELPER METHODS
  delay: (fn, time) -> @each ->
    that = @
    setTimeout (-> fn.call that), time

  each: (fn, args) ->
    if args?
      args = [ args ] unless Array.isArray args
      fn.apply el, args for el in @elems
    else
      fn.call  el for el in @elems
    @

  exists: -> @elems.length > 0

  hasSingleEl: -> @elems.length is 1

  # INPUT RICE
  riceFile: -> @each ->
    that = $ @
    next = that.next
    return if that.attr "riced"
    div = $ "<div class=riceFile><div>BROWSE...</div><span></span>"
    that.attr("riced", true)
        .bind("change", -> that.nextSibling("span").text if $("#qr.dump").exists() then "" else @files[0].name)
        .bind("focus",  -> that.nextSibling("div").addClass "focus")
        .bind("blur",   -> that.nextSibling("div").removeClass "focus")
        .parent().prepend div.prepend @

  riceCheck: -> @each ->
    click = (e) ->
      e.preventDefault()
      @previousSibling.click()

    return if @isRiced
    return $(@nextSibling).bind "click", click if @nextSibling?.className is 'riceCheck'

    div = $("<div class=riceCheck>").bind "click", click
    $(@).hide().after(div)

    @isRiced = true

  jsColor: -> @each -> @color = new SS.jscolor.color @


# STYLE SCRIPT CLASSES AND METHODS
SS =
  browser: {}
  ppDark:
    com: "#969896"
    kwd: "#81a2be"
    typ: "#b294bb"
    str: "#b5bd68"
    pun: "#aac674"
    lit: "#8abeb7"

  init: (reload) ->
    unless reload
      return if /^about:neterror/.test d.dURI

      SS.browser.webkit = /AppleWebKit/.test navigator.userAgent
      SS.browser.gecko  = /Gecko\//.test navigator.userAgent
      SS.location       = SS.getLocation()

      # correct selected theme/mascots after updating
      # and the number defaults has changed.
      if m_VERSION = SS.Config.get("VERSION") isnt VERSION
        ntMascots = SS.Mascots.defaults.length # new total
        ntThemes  = SS.Themes.defaults.length
        otMascots = SS.Config.get("Total Mascots") or ntMascots # old total
        otThemes  = SS.Config.get("Total Themes")  or ntThemes
        sMascots  = SS.Config.get "Selected Mascots"
        sTheme    = SS.Config.get "Selected Theme"
        nsTheme   = SS.Config.get "NSFW Theme"

        if otMascots isnt ntMascots
          mDiff = ntMascots - otMascots
          i = sMascots.length - 1

          while sMascots[i] > otMascots
            sMascots[i--] += mDiff

        SS.Config.set "Selected Mascots", sMascots

        if otThemes isnt ntThemes
          if sTheme >= otThemes
            sTheme += ntThemes - otThemes
            SS.Config.set "Selected Theme", sTheme

            if nsTheme >= otThemes
              nsTheme += ntThemes - otThemes
              SS.Config.set "NSFW Theme", nsTheme

        SS.Config.set "VERSION", VERSION
        SS.Config.set "Total Mascots", ntMascots
        SS.Config.set "Total Themes", ntThemes

      SS.Config.init()
      SS.Themes.init()
      SS.Mascots.init()

      if $("link[rel=stylesheet]", d.head).exists()
        SS.insertCSS()
      else
        $(d).bind "DOMNodeInserted", SS.insertCSS

      if /complete|interactive/.test d.readyState
        SS.DOMLoaded()
      else
        $(d).bind "DOMContentLoaded", SS.DOMLoaded

    else
      SS.insertCSS()
      SS.DOMLoaded(true)

  # STYLING & DOM
  insertCSS: ->
    reload = $("#ch4SS").exists()

    if reload or $("link[rel=stylesheet]", d.head).exists()
      $(d).unbind("DOMNodeInserted", SS.insertCSS)
    else
      return

    css.remove() if not reload and not SS.location.catalog and (css = $ "link[rel*='stylesheet']:not([href*='flags'])").exists()

    SS.bHideSidebar = SS.location.sub isnt "boards" or SS.location.catalog or SS.location.board is "f"

    css = <%= grunt.file.read("style.css") %>

    if reload
      $("#ch4SS").text css
    else
      $(d.head).append $("<style type='text/css' id=ch4SS>").text css

  DOMLoaded: (reload) ->
    if SS.location.sub is "sys" # fix for firefux on report popups.
      d.head.innerHTML = d.head.innerHTML

    unless reload
      MutationObserver = window.MutationObserver or window.WebKitMutationObserver
      SS.options.init()

      $(d).bind("QRDialogCreation", SS.QRDialogCreationHandler)
                 .bind("QRPostSuccessful",   -> $(".riceFile>span", $("#qr")).text "")
                 .bind("WatcherThreadAdded", -> $("#watcher").addClass "show")
                 .delay (-> $(@).removeClass "show"), 2000

      observer = new MutationObserver (mutations) ->
        for nodes in mutations
          nodes = mutations[i].addedNodes
          $("input[type=checkbox]", node).riceCheck() for node in nodes

          observer.observe d, childList: true, subtree: true

          # things that need to change after 4chan X loads.
          $(d).bind '4chanXInitFinished', ->
            if not SS.QRhandled and (div = $("#qr")).exists()
              SS.QRDialogCreationHandler target: div
              div.bind "change", -> $(@).toggleClass "imgExpanded" if (div = $ "#imageType+label").exists()
              $("input[type=checkbox]", div).riceCheck() if (div = $ "#updater").exists()

    SS.pages.init()
    SS.menuEntries.init()
    SS.riceInputs.init()
    SS.logoReflect.init()

  QRDialogCreationHandler: (e) ->
    qr = e.target

    $("input[type=file]").riceFile().bind "click", (e) ->
      return $(@).nextSibling("span").text "" if e.shiftKey

      $(".move", qr).bind "click", -> $("form :focus", qr).blur() if SS.conf["Post Form"] isnt 4

      $("#dump~input", qr).each -> $(@).after $ "<span>#{$(@).attr 'placeholder'}" if SS.conf["Expanding Form Inputs"]

      $("input,textarea,select", qr).bind("focus", -> $("#qr").addClass("focus"))
                                    .bind "blur",  -> $("#qr").removeClass "focus"

      if SS.conf["Smart Tripcode Hider"]
        $("input[name=name]").each ->
          SS.tripHider.init $(@)
          SS.tripHider.handle(@)

          $("input[type=checkbox]", qr).riceCheck() unless SS.browser.webkit

      SS.QRhandled = true

  # CONFIG
  Config:
    hasGM: GM_deleteValue?
    init: ->
      parseVal = (key, val) ->
        if /^(Selected|Hidden)+\s(Mascots|Themes?)+$/.test key
          return parseInt val if key is "Selected Theme"
          return 0 if key is "Selected Mascots" and val is 0
          return (parseInt value for value in val)

        return (if Array.isArray(val) and typeof val[0] isnt "object" then val[0] else val)

      SS.conf = []

      for key of defaultConfig
        SS.conf[key] = parseVal key, @get key
        SS.conf["Small Font Size"] =
          if SS.conf["Font Size"] > 11 and !SS.conf["Bitmap Font"] then 12 else SS.conf["Font Size"]
        SS.conf["Sidebar Position String"] =
          if SS.conf["Sidebar Position"] isnt 2 and SS.conf["Sidebar Position"] isnt 5 then "right" else "left"
        SS.conf["Sidebar Position oString"] =
          if SS.conf["Sidebar Position String"] is "right" then "left" else "right"
      return

    get: (name) ->
      val = if @hasGM
        GM_getValue NAMESPACE + name
      else
        localStorage.getItem NAMESPACE + name

      return JSON.parse val if val?
      return defaultConfig[name]

    set: (name, val) ->
      name = NAMESPACE + name

      if typeof val isnt "number"
        val = JSON.stringify val

      return (if @hasGM
        GM_setValue name, val
      else
        localStorage.setItem name, val
      )

  # OPTIONS
  options:
    saveAndClose: true,
    init: ->
      a = $("<a id=themeoptionsLink title='4chan SS Options'>SS").bind("click", SS.options.show)
      $("#navtopright>a:last-child").replace(a)

    show: ->
      if $("#overlay").exists()
        SS.options.close()
      else
        overlay = $("<div id=overlay>").bind("click", SS.options.close)
        tOptions    = $("<div id=themeoptions class=reply>").bind "click", (e) -> e.stopPropagation()
        optionsHTML = [
          "<ul id=toNav>"
          "<li><label class=selected for=tcbMain>Main</label></li>"
          "<li><label for=tcbThemes>Themes</label></li>"
          "<li><label for=tcbMascots>Mascots</label></li>"
          "<li><label for=tcbNavLinks>Nav Links</label></li>"
          "</ul><div id=toWrapper><input type=radio name=toTab id=tcbMain hidden checked><div id=tMain>"
          "<p><a class=trbtn name=loadSysFonts title='Reqiures flash'>#{if SS.fontList then 'System Fonts Loaded!' else 'Load System Fonts'}</a></p>"
        ]
        bindNavLinks = (el) ->
          $(".handle", el)
            .bind("dragstart", (e) ->
              $(@parentNode).addClass("moving")
              e.dataTransfer.effectAllowed = "move"
              e.dataTransfer.setData("text/plain", @parentNode.id))
            .bind("dragend",   (e) -> $(@parentNode).delay (-> $(@).removeClass "moving"), 1)
            .bind("dragenter", (e) -> $(@parentNode).addClass    "over")
            .bind("dragleave", (e) -> $(@parentNode).removeClass "over")
        $(el)
          .bind("drop", (e) ->
            node = $ "#tNavLinks>##{e.dataTransfer.getData('text/plain')}"

            if e.dataTransfer.getData("text/plain") isnt @id

              if $(@).nextSibling(node).exists()
                $(@).before(node)
              else
                $(@).after(node)

            $(@).removeClass "over"
            e.preventDefault())
          .bind "dragover", (e) ->
            e.preventDefault()
            e.dataTransfer.dropEffect = "move"

        $("a[name=delLink]", el).bind("click", -> $(@).parent().remove())

      for key of defaultConfig
        continue if (key is "Style Scrollbars" and !SS.browser.webkit) or
                 key is "Nav Link Delimiter" or
                 /^(Selected|Hidden)+\s(Mascots|Themes?)+$/.test key

        val = SS.conf[key]
        des = defaultConfig[key][1]

        if (defaultConfig[key][4] is true) # sub-option
          pVal = SS.conf[defaultConfig[key][2]]
          id   = defaultConfig[key][2].replace(/\s/g, "_") + defaultConfig[key][3]
          Array::push.apply optionsHTML, [
            "<label class='mOption subOption " + id + "' title=\"" + des + "\""
            (if pVal is defaultConfig[key][3] then "" else "hidden") + "><span>" + key
            "</span><input" + (if val then " checked" else "") + " name='" + key + "' type=checkbox></label>"
          ]

        else if Array.isArray(defaultConfig[key][2]) # select
          opts   = if key is "Font" then SS.fontList or defaultConfig[key][2] else defaultConfig[key][2]
          cFonts = []
          Array::push.apply optionsHTML, [
            "<span class=mOption title=\"#{des}\"><span>E{keyE}</span>"
            "<select name='#{key}'#{if defaultConfig[key][3] is true then ' hasSub' else ''}>"
          ]

          for option in opts
            if typeof option is "object"
              {name, value} = option
            else
              name = value = option

            cFonts.push value if key is "Font"

            Array::push.apply optionsHTML, [
              "<option" + (if key is "Font" then " style=\"font-family:" + SS.formatFont(value) + "!important\"" else "")
              " value='" + value + "'" + (if value is val then " selected" else "") + ">" + name + "</option>"
            ]

          if key is "Font" and cFonts.indexOf SS.conf["Font"] is -1
            optionsHTML.push "<option style=\"font-family:" + SS.formatFont(SS.conf["Font"]) + "!important\" value='" + SS.conf["Font"] + "' selected>" + SS.conf["Font"] + "</option>"

          optionsHTML.push "</select></span>"

        else if key is "Font Size"
          Array::push.apply optionsHTML, [
            "<span class=mOption title=\"" + des + "\"><span>" + key + "</span>"
            "<input type=text name='Font Size' value=" + SS.conf["Font Size"] + "px></span>"
          ]

        else if key is "Themes"
          optionsHTML.push "</div><input type=radio name=toTab id=tcbThemes hidden><div id=tThemes>"

        else if key is "Mascots"
          optionsHTML.push "</div><input type=radio name=toTab id=tcbMascots hidden><div id=tMascot>"

        else if key is "Nav Links"
          links = SS.conf["Nav Links"]
          Array::push.apply optionsHTML, [
            "</div><input type=radio name=toTab id=tcbNavLinks hidden><div id=tNavLinks>"
            "<p><a class=trbtn name=addLink>add</a>"
            "<label>Delimiter: "
            "<input type=text name='Nav Link Delimiter' value='" + SS.conf["Nav Link Delimiter"]
            "' style='width:40px' title='" + defaultConfig["Nav Link Delimiter"][1] + "'></p>"
          ]


          if links?
            for {link, text} in links
              Array::push.apply optionsHTML, [
                "<div id=navlink" + i + " class=navlink><label>Text: <input type=text value='" + text + "'></label>"
                "<label>Link: <input type=text value='" + link + "'></label>"
                "<a class=trbtn name=delLink>remove</a><div class=handle draggable=true></div></div>"
              ]
          # checkbox
          else
            Array::push.apply optionsHTML, [
              "<label class=mOption title=\"" + des + "\"><span>" + key + "</span><input" + (if val then " checked" else "")
              " name='" + key + "' " + (if defaultConfig[key][3] is true then " hasSub" else "")  + " type=checkbox></label>"
            ]

          Array::push.apply optionsHTML, [
            "</div></div><div><span id=SSVersion>4chan SS v" + VERSION + "</span>"
            "<a class=trbtn name=save title='Hold any modifier to prevent window from closing'>save</a><a class=trbtn name=cancel>cancel</a></div>"
          ]
          tOptions.html optionsHTML.join ""
          overlay.append tOptions

          # options window
          $("#toNav li label", tOptions).bind "click", (e) ->
            return if $(@).hasClass "selected"

            $("#toNav li label.selected").removeClass("selected")
            $(@).addClass("selected")

          $("[hasSub]", tOptions).bind "change", ->
            id  = @.name.replace(/\s/g, "_") + $(@).val()
            sub = $("." + id)

            if sub.exists()
              sub.each -> $(@).show()
            else
               $("[class*='" + @.name.replace(/\s/g, "_") + "']").each -> $(@).hide()

          $("a[name=save]", tOptions).bind "click", SS.options.save
          $("a[name=cancel]",tOptions).bind "click", SS.options.close
          $(d).bind("keydown", SS.options.keydown)
              .bind("keyup",   SS.options.keyup)

          # main tab
          $("input[name='Font Size']", tOptions).bind("keydown", (e) ->
            val    = parseInt($(@).val())
            bitmap = $(@).parent().nextSibling().children("input[name='Bitmap Font']").val()

            if e.keyCode is 38 and val < MAX_FONT_SIZE or bitmap
              $(@).val("#{++val}px")
            else if e.keyCode is 40 and val > MIN_FONT_SIZE or bitmap
              $(@).val("#{--val}px")
          )

          $("a[name=loadSysFonts]", tOptions).bind "click", SS.options.loadSystemFonts unless SS.fontList

          # themes tab
          SS.options.createThemesTab  tOptions

          # mascots tab
          SS.options.createMascotsTab tOptions

          # nav links tab
          $("a[name=addLink]", tOptions).bind("click", ->
            el = $("<div id=navlink" + $("#tNavLinks>.navlink").length() + " class=navlink>")
                      .html("<label>Text: <input type=text></label>" +
                            "<label>Link: <input type=text value='boards.4chan.org/'></label>" +
                            "<a class=trbtn name=delLink>remove</a><div class=handle draggable=true></div>")
            bindNavLinks el
            $("#tNavLinks").append el
          )

          $("#tNavLinks .navlink", tOptions).each(-> bindNavLinks(@))

          $(d.body).append(overlay)

    createThemesTab: (tOptions) ->
      themes = $("#tThemes", tOptions).html("")
      p      = $("<p style='bottom:8px!important'>")
      reader = ->
        file   = @files[0]
        reader = new FileReader()

        reader.onload = (e) ->
          errmessage = -> alert "Invalid theme file!"
        try
          theme = JSON.parse(e.target.result)
        catch err
          return errmessage()

        return errmessage() unless theme.bgColor?

        index = SS.conf["Themes"].push(theme)
        theme = new SS.Theme(--index)
        div   = theme.preview()
        $("#overlay #tThemes").append(div)
        div.fire("click").scrollIntoView(true)

        reader.readAsText(file)

      p.append($("<a class=trbtn name=addTheme>add", tOptions).bind("click", SS.options.showTheme))
      p.append(
        $("<div id=selectImage>")
          .append($("<input type=file riced=true>").bind "change", reader)
            .append $ "<span class=trbtn>Import")

      p.append(
        $("<a class=trbtn name=restoreThemes title='Restore hidden default themes'>restore", tOptions)
          .bind "click", ->
            SS.conf["Hidden Themes"] = []
            $("#tThemes>div[hidden]").show()
      )

      $("a[name=restoreThemes]", p).hide() if SS.conf["Hidden Themes"].length is 0

      themes.append p

      max = SS.conf["Themes"].length
      i   = 0
      while i < max
        themes.append (new SS.Theme i++).preview()
      return

  createMascotsTab: (tOptions) ->
    mascots = $("#tMascot", tOptions).html ""
    p       = $ "<p>"

    p.append $("<a class=trbtn name=addMascot>add", tOptions).bind("click", SS.options.showMascot)
    p.append $("<a class=trbtn name=restoreMascots title='Restore hidden default mascots'>restore", tOptions)
      .bind "click", ->
        SS.conf["Hidden Mascots"] = []
        $("#tMascot>div[hidden]").show()

    $("a[name=restoreMascots]", p).hide() if SS.conf["Hidden Mascots"].length is 0

    p.append$("<a class=trbtn name=selectAll>select all", tOptions)
      .bind "click", -> $("#tMascot>div:not([hidden])").each -> $(@).addClass "selected"
    p.append $("<a class=trbtn name=selectNone>select none", tOptions)
      .bind "click", -> $("#tMascot>div").each -> $(@).removeClass "selected"

    mascots.append p

    max = SS.conf["Mascots"].length
    i   = i

    while i < max
      mascots.append((new SS.Mascot(i++)).preview())

  close: ->
    $(d).unbind("keydown", SS.options.keydown)
        .unbind("keyup", SS.options.keydown)

    return $("#overlay").remove()

  keydown: (e) ->
    if e.keyCode >= 16 and e.keyCode <= 18
      SS.options.saveAndClose = false
      $("a[name=save]").text("apply")

  keyup: (e) ->
    unless SS.options.saveAndClose
      SS.options.saveAndClose = true
      $("a[name=save]").text("save")

  loadSystemFonts: (e) ->
    loadFontBTN    = $ e.target
    getFontMessage = (e) ->
      SS.fontList = e.data
      fontSelect  = $("<select name=Font>")

      for {name, value} in SS.fontList
        fontSelect.append($(
          "<option" + " style=\"font-family:" + SS.formatFont(value) + "!important\"" +
          " value='" + value + "'" + (if value is SS.conf["Font"] then " selected=true" else "") + ">" + name
        ))

        $("select[name=Font]").before(fontSelect).remove()
        $("#fontListSWF").remove()
        window.removeEventListener("message", getFontMessage)
        loadFontBTN.text("System Fonts Loaded!").unbind("click", SS.options.loadSystemFonts)

    $(d.head).append($("""
<script type="text/javascript">
  function populateFontList(fontArr) {
    var fontList = []
    for (var key in fontArr)
      fontList.push(fontArr[key])
      window.postMessage(fontList, '*')
    }
</script>
"""))

    window.addEventListener "message", getFontMessage, false

    $(d.body).append($(
      "<div id=fontListSWF hidden><object type='application/x-shockwave-flash'" +
      " data='" + fontListSWF + "'><param name=allowScriptAccess value=always></object>"
    ))
    loadFontBTN.text "Loading..."

  save: ->
    div        = $("#themeoptions")
    themes     = []
    mascots    = []
    links      = []
    selMascots = []

    # Save main
    $("#themeoptions input[name]:not([name=toTab]), #themeoptions select").each ->
      name = $(@).attr("name")
      val  = $(@).val()

      if name is "Font Size"
        val = parseInt val

        unless $("input[name='Bitmap Font']", div).val()
          # 4chan SS originally used Math.max and Math.min here.
          # Don't do that.
          val = if val > MAX_FONT_SIZE
            MAX_FONT_SIZE
          else if val < MIN_FONT_SIZE
            MIN_FONT_SIZE
          else val

        else if name is "Nav Link Delimiter"
          val = val.replace /\s/g, "&nbsp;"

        SS.Config.set $(@).attr("name"), val

    # Save Themes
    $("#themeoptions #tThemes>div").each (index) ->
      oldIndex = parseInt @id.substr(5)
      themes.push SS.conf["Themes"][oldIndex] unless SS.conf["Themes"][oldIndex].default

      selTheme = if selTheme = $("#themeoptions #tThemes>div.selected").exists()
        parseInt selTheme.attr("id").substr 5
      else
        0

    SS.Config.set "Themes", themes
    SS.Config.set (
      if SS.conf["SFW/NSFW Themes"] and SS.location.nsfw
        "NSFW Theme"
      else
        "Selected Theme"
    ), selTheme

    SS.Config.set "Hidden Themes", SS.conf["Hidden Themes"]

    # Save Mascots
    $("#themeoptions #tMascot>div").each (index) ->
      oldIndex = parseInt @id.substr 6
      selMascots.push index if $(@).hasClass "selected"

      mascots.push SS.conf["Mascots"][oldIndex] unlessSS.conf["Mascots"][oldIndex].default

      SS.Config.set "Mascots", mascots
      SS.Config.set "Selected Mascots", selMascots
      SS.Config.set "Hidden Mascots", SS.conf["Hidden Mascots"]

      # Save nav links
      $("#themeoptions #tNavLinks>.navlink").each ->
        nLink = {}

        $(@).children("input").each (index) ->
          if index is 0
            nLink.text = $(@).val()
          else if index is 1
            nLink.link = $(@).val()

        links.push nLink if nLink.text isnt "" and nLink.link isnt ""

      SS.Config.set "Nav Links", links

      SS.options.close() if SS.options.saveAndClose

      SS.init true

  showTheme: (tIndex) ->
    if typeof tIndex is "number"
      bEdit  = true
      tEdit  = SS.conf["Themes"][tIndex]

      if (tEdit.bgImg and tEdit.bgRPA)
        RPA     = tEdit.bgRPA.split(" ")
        themeR  = RPA[0]
        themePY = RPA[1]
        themePX = RPA[2]
        themeA  = RPA[3]

      div = $("<div id=addTheme>")

      check = (test) -> return (if test then " selected" else "")

      innerHTML = [
        "<label>"
        "<span>Theme Name:</span><input type=text name=name value='" + (if bEdit then tEdit.name else "") + "'>"
        "</label><label>"
        "<span>BG Image:</span><input type=text name=bgImg value='"
        (if bEdit then (if SS.validImageURL(tEdit.bgImg) then tEdit.bgImg + "'" else (if SS.validBase64(tEdit.bgImg) then "[Base 64 Encoded Image]' disabled=true" else "'")) else "'")
        "></label><label>"
        "<span>BG Repeat:</span><select name=bgR>"
        "<option" + (check bEdit and themeR  is "no-repeat") + ">no-repeat</option>"
        "<option" + (check bEdit and themeR  is "repeat")    + ">repeat</option>"
        "<option" + (check bEdit and themeR  is "repeat-x")  + ">repeat-x</option>"
        "<option" + (check bEdit and themeR  is "repeat-y")  + ">repeat-y</option>"
        "</select></label><label>"
        "<span>BG Attachment:</span><select name=bgA>"
        "<option" + (check bEdit and themeA  is "fixed")     + ">fixed</option>"
        "<option" + (check bEdit and themeA  is "scroll")    + ">scroll</option>"
        "</select></label><label>"
        "<span>BG Position-X:</span><select name=bgPX>"
        "<option" + (check bEdit and themePX is "left")      + ">left</option>"
        "<option" + (check bEdit and themePX is "center")    + ">center</option>"
        "<option" + (check bEdit and themePX is "right")     + ">right</option>"
        "</select></label><label>"
        "<span>BG Position-Y:</span><select name=bgPY>"
        "<option" + (check bEdit and themePY is "top")       + ">top</option>"
        "<option" + (check bEdit and themePY is "center")    + ">center</option>"
        "<option" + (check bEdit and themePY is "bottom")    + ">bottom</option>"
        "</select></label>"
      ]

      for {name, dName} in themeInputs
        Array::push.apply innerHTML, [
          "<label><span>" + dName + ":</span>"
          "<input type=text class=jsColor name=" + name + " value=" + (if bEdit then tEdit[name] else "") + "></label>"
        ]

    Array::push.apply innerHTML, [
      "<label id=customCSS><span>Custom CSS:</span><textarea name=customCSS>" + (if bEdit then tEdit.customCSS or "" else "") + "</textarea>"
      "</label><div><div id=selectImage><input type=file riced=true accept='image/GIF,image/JPEG,image/PNG'>"
      "<span class=trbtn>Select Image</span></div>"
      if bEdit and SS.validBase64(tEdit.bgImg) then "<input type=hidden name=customIMGB64 value='" + tEdit.bgImg + "'>" else ""
      "<a class=trbtn name=clearIMG>Clear Image</a>"
      "<a class=trbtn name=export>Export</a>"
      "<a class=trbtn name=" + (if bEdit then "edit" else "add") + ">" + (if bEdit then "edit" else "add") + "</a><a class=trbtn name=cancel>cancel</a></div>"
    ]

    div.html innerHTML.join ""
    $(".jsColor", div).jsColor()

    overlay = $("<div id=overlay2>").append div

    $("#selectImage>input[type=file]", div).bind "change", SS.options.SelectImage
    $("a[name=clearIMG]", div).bind "click", SS.options.ClearImage

    $("a[name=export]", div).bind "click", ->
      theme = SS.options.addTheme tIndex, true
      window.open ("data:application/json," + encodeURIComponent JSON.stringify theme), "Export " + theme.name

    if (bEdit)
      $("a[name=edit]", div).bind "click", -> SS.options.addTheme tIndex
    else
      $("a[name=add]", div).bind "click", SS.options.addTheme

    $("a[name=cancel]", div).bind "click", -> $("#overlay2").remove()

    if (bEdit)
      $("input,textarea,select", div).bind "change", tEdit.mHandler = ->
        tEdit.modified = true
        $("input,textarea,select", $("#addTheme")).unbind("change", tEdit.mHandler)

    $(d.body).append overlay

  addTheme: (tIndex, exp) ->
    overlay = $("#overlay2")
    tTheme  = { }
    makeRPA = ->
      RPA = [
        $("select[name=bgR]",  overlay).val()
        $("select[name=bgPY]", overlay).val()
        $("select[name=bgPX]", overlay).val()
        $("select[name=bgA]",  overlay).val()
      ].join ' '

    bEdit = typeof tIndex is "number"
    tEdit = if bEdit then SS.conf["Themes"][tIndex] else null
    error = false
    div

    return overlay.remove() if not exp and bEdit and not tEdit.modified

    $("input[type=text],textarea", overlay).each ->
      if @name is "bgImg"
        b64 = $ "input[name=customIMGB64]", overlay
        val = if b64.exists() then decodeURIComponent b64.val() else @value

        unless val is "" and SS.validImageURL(val) and SS.validBase64(val)
          error = true
          return alert "Invalid image URL/base64."

        val = SS.cleanBase64(val)

      else if @name is "name"
        val = @value
        val += " [Modded]" if bEdit and tEdit.default and tEdit.name is val

      else
        val = @value

      tTheme[@name] = val unless val is ""

      return if error

      if (tTheme.bgImg)
        tTheme.bgRPA = makeRPA()

        return tTheme if exp

        if bEdit and !tEdit.default
          SS.conf["Themes"][tIndex] = tTheme
          tTheme = new SS.Theme(tIndex)
          div    = $("#theme" + tIndex, $("#overlay"))
          div.replace(tTheme.preview())
        else
          tTheme.author = "You"
          tIndex        = SS.conf["Themes"].push tTheme
          tTheme        = new SS.Theme --tIndex
          div           = tTheme.preview()

        $("#overlay #tThemes").append div

        $("#theme" + tIndex, $("#overlay")).fire("click").scrollIntoView(true)

        return overlay.remove()

  deleteTheme: (tIndex) ->
    if SS.conf["Themes"][tIndex].default and SS.conf["Hidden Themes"].push(tIndex) is 1
      $("#tThemes a[name=restoreThemes]").show()

    return (if SS.conf["Themes"][tIndex].default
      $("#theme" + tIndex).removeClass("selected").hide()
    else
      $("#theme" + tIndex).remove())

  showMascot: (mIndex) ->
    if typeof mIndex is "number"
      bEdit = true
      mEdit = SS.conf["Mascots"][mIndex]

      selected = (test) -> return (if test then " selected" else "")
      checked  = (test) -> return (if test then " checked"  else "")

      div = $("<div id=addMascot>").html([
        "<label><span>Image:</span><input type=text name=customIMG value='"
        if bEdit then (if SS.validImageURL(mEdit.img) then mEdit.img + "'" else "[Base 64 Encoded Image]' disabled=true") else "'"
        "></label>"
        "<label title='Auto goes according to the post forms position' for=null><span>Alignment/Offset:</span>"
        "<select name=mPosition>"
        "<option" + ((selected bEdit and !mEdit.position) or !bEdit) + ">Auto</option>"
        "<option" + (selected bEdit and mEdit.position is "top") + ">Top</option>"
        "<option" + (selected bEdit and mEdit.position is "center") + ">Center</option>"
        "<option" + (selected bEdit and mEdit.position is "bottom") + ">Bottom</option>"
        "</select>"
        "<input type=text name=mOffset value='" + (if bEdit and mEdit.position then mEdit.offset + "px" else "") + "'></label>"
        "<label title='Prevent streching with smaller images (Width < 313px)'><span>Prevent stretching:</span>"
        "<input type=checkbox name=mSmall" + (checked bEdit and mEdit.small) + "></label>"
        "<label title='Horizontally flip the mascot when sidebar is on the left'><span>Flip with sidebar:</span>"
        "<input type=checkbox name=mFlip" + (checked not bEdit or (bEdit and (mEdit.flip or not mEdit.flip?))) + "></label>"
        "<label title='Allows the mascot to be shown outside the sidebar, ignores `Prevent stretching` option'>"
        "<span>Allow overflow:</span><input type=checkbox name=mOverflow" + (checked bEdit and mEdit.overflow) + "></label>"
        "<label title='List of boards to display @ mascot on, seperated by commas. Example: a,c,g,v,jp'><span>Boards:</span>"
        "<input type=text name=mBoards value='" + (if bEdit and mEdit.boards then mEdit.boards else "") + "'></label>"
        "<div>"
        "<div id=selectImage><input type=file riced=true accept='image/GIF,image/JPEG,image/PNG'>"
        "<span class=trbtn>Select Image</span></div>"
        "" + (if bEdit and SS.validBase64(mEdit.img) then "<input type=hidden name=customIMGB64 value='" + mEdit.img + "'>" else "") + ""
        "<a class=trbtn name=clearIMG>Clear Image</a>"
        "<a class=trbtn name=" + (if bEdit then "edit" else "add") + ">" + (if bEdit then "edit" else "add") + "</a><a class=trbtn name=cancel>cancel</a></div></div>"
      ].join "")

      overlay = $("<div id=overlay2>").append div

      $("#selectImage>input[type=file]", div).bind "change", SS.options.SelectImage
      $("a[name=clearIMG]", div).bind "click", SS.options.ClearImage

      if (bEdit)
        $("a[name=edit]", div).bind "click", -> SS.options.addMascot mIndex
      else
        $("a[name=add]", div).bind "click", SS.options.addMascot

      $("a[name=cancel]", div).bind "click", -> $("#overlay2").remove()

      $(d.body).append overlay

  addMascot: (mIndex) ->
    overlay = $ "#overlay2"

    cIMG      = decodeURIComponent $("input[name=customIMGB64]", overlay).val() or $("input[name=customIMG]", overlay).val()
    cPosition = $("select[name=mPosition]", overlay).val().toLowerCase()
    cOffset   = parseInt($("input[name=mOffset]", overlay).val()) or 0
    cSmall    = $("input[name=mSmall]", overlay).val()
    cFlip     = $("input[name=mFlip]", overlay).val()
    cOverflow = $("input[name=mOverflow]", overlay).val()
    cBoards   = $("input[name=mBoards]", overlay).val()
    bSetPos   = cPosition isnt "auto"

    return alert("Invalid image URL/base64.") unless SS.validImageURL(cIMG) and SS.validBase64(cIMG)

    cIMG     = SS.cleanBase64 cIMG
    bDefault = SS.conf["Mascots"][mIndex] != undefined and SS.conf["Mascots"][mIndex].default

    if typeof mIndex is "number" and not bDefault
      SS.conf["Mascots"][mIndex].img      = cIMG
      SS.conf["Mascots"][mIndex].small    = cSmall
      SS.conf["Mascots"][mIndex].flip     = cFlip
      SS.conf["Mascots"][mIndex].overflow = cOverflow

      if cBoards isnt ""
        SS.conf["Mascots"][mIndex].boards = cBoards
      else
        delete SS.conf["Mascots"][mIndex].boards

      if bSetPos
        SS.conf["Mascots"][mIndex].position = cPosition
        SS.conf["Mascots"][mIndex].offset   = cOffset
      else
        delete SS.conf["Mascots"][mIndex].position
        delete SS.conf["Mascots"][mIndex].offset

      tMascot = new SS.Image(cIMG)
      $("#mascot" + mIndex).attr "style", "background:" + tMascot.get()

    else
      tMascot =
        img: cIMG
        small: cSmall
        flip: cFlip
        overflow: undefined
        cOverflow: undefined
        boards: (if cBoards is "" then undefined else cBoards)

      if bSetPos
        tMascot.position = cPosition
        tMascot.offset   = cOffset

        if bDefault
          SS.options.deleteMascot mIndex

          mIndex = SS.conf["Mascots"].push tMascot
          tMascot = new SS.Mascot(--mIndex).preview()
          $("#tMascot").append tMascot
          tMascot.fire("click").scrollIntoView true

    return overlay.remove()

  deleteMascot: (mIndex) ->
    if (SS.conf["Mascots"][mIndex].default and SS.conf["Hidden Mascots"].push(mIndex) is 1)
      $("#tMascot a[name=restoreMascots]").show()

    return (if SS.conf["Mascots"][mIndex].default
      $("#mascot" + mIndex).removeClass("selected").hide()
    else $("#mascot" + mIndex).remove())

  SelectImage: ->
    b64 = val = input = undefined
    div      = $("#overlay2")
    parent   = $(@).parent()
    image    = @files[0]
    fileName = image.name.substr(image.name.lastIndexOf("\\") + 1)
    reader   = new FileReader()

    reader.onload = (evt) ->
      val = SS.cleanBase64 evt.target.result

      b64 = $ "input[name=customIMGB64]", div
      unless b64.exists()
        b64 = $("<input type=hidden name=customIMGB64>").val val
        parent.after b64
      else
        b64.val val

      input = $ "input[name=bgImg]", div
      if input.exists()
        input.val(fileName).disabled true
      else
        $("input[name=customIMG]", div).val(fileName).disabled true

    reader.readAsDataURL image

  ClearImage: ->
    div = $("#overlay2")
    $("input[name=customIMGB64]").remove()
    input = $ "input[name=bgImg]", div
    return input.val("").disabled false if input.exists()

    $("input[name=customIMG]", div).val("").disabled false

  # THEMES
  Themes:
    defaults: [
      {
        name:    "Dark Flat",
        "default":   true,
        bgImg:     "R0lGODlhAwADAIAAAB0dHRkZGSH5BADoAwAALAAAAAADAAMAAAIDDG5YADs=",
        bgRPA:     "repeat top left fixed",
        bgColor:   "202020",
        mainColor:   "232425",
        brderColor:  "292a2b",
        inputColor:  "18191a",
        inputbColor: "121314",
        blinkColor:  "6f99b4",
        jlinkColor:  "ac9bb0",
        linkColor:   "ac9bb0",
        linkHColor:  "6f99b4",
        nameColor:   "a8c6d9",
        quoteColor:  "b3c45e",
        textColor:   "dddddd",
        sageColor:   "c99090",
        tripColor:   "d4c095",
        titleColor:  "9390c9",
        timeColor:   "dddddd"
      },{
        name:    "Photon",
        "default":   true,
        bgImg:     false,
        bgColor:   "eeeeee",
        mainColor:   "dddddd",
        brderColor:  "cccccc",
        inputColor:  "cccccc",
        inputbColor: "bbbbbb",
        blinkColor:  "0066ff",
        jlinkColor:  "333333",
        linkColor:   "ff6600",
        linkHColor:  "0066ff",
        nameColor:   "004a99",
        quoteColor:  "789922",
        textColor:   "333333",
        sageColor:   "990000",
        tripColor:   "ff3300",
        timeColor:   "333333",
        titleColor:  "002244"
      },{
        name:    "Tomorrow Night", # Originally by Chris Kempson @ https://github.com/ChrisKempson/Tomorrow-Theme
        author:    "Chris Kempson",
        "default":   true,
        bgImg:     false,
        bgColor:   "1d1f21",
        mainColor:   "282a2e",
        brderColor:  "373b41",
        inputColor:  "282a2e",
        inputbColor: "1d1f21",
        blinkColor:  "cc6666",
        jlinkColor:  "81a2be",
        linkColor:   "81a2be",
        linkHColor:  "cc6666",
        nameColor:   "81a2be",
        quoteColor:  "b5bd68",
        textColor:   "c5c8c6",
        sageColor:   "cc6666",
        tripColor:   "8abeb7",
        titleColor:  "b294bb",
        timeColor:   "c5c8c6"
      },{
        name:    "Yotsuba",
        "default":   true,
        bgImg:     "//static.4chan.org/image/fade.png",
        bgRPA:     "repeat-x top center scroll",
        bgColor:   "ffffee",
        mainColor:   "f0e0d6",
        brderColor:  "d9bFb7",
        inputColor:  "ffffff",
        inputbColor: "aaaaaa",
        blinkColor:  "dd0000",
        jlinkColor:  "800000",
        linkColor:   "0000ee",
        linkHColor:  "dd0000",
        nameColor:   "117743",
        quoteColor:  "789922",
        textColor:   "800000",
        sageColor:   "cc1111",
        tripColor:   "228854",
        titleColor:  "cc1105",
        timeColor:   "800000",
        customCSS:   '#delform,.reply,.hidden_thread,.stub{border-radius:0!important}\n.reply,.hidden_thread,.stub{border-left:0!important;border-top:0!important;"+(SS.conf["Layout"]==1?"border-right:0!important":"")+"}'
      },{
        name:    "Yotsuba B",
        "default":   true,
        bgImg:     "//static.4chan.org/image/fade-blue.png",
        bgRPA:     "repeat-x top center scroll",
        bgColor:   "eef2ff",
        mainColor:   "d6daf0",
        brderColor:  "b7c5d9",
        inputColor:  "ffffff",
        inputbColor: "aaaaaa",
        blinkColor:  "dd0000",
        jlinkColor:  "34345C",
        linkColor:   "34345C",
        linkHColor:  "dd0000",
        nameColor:   "117743",
        quoteColor:  "789922",
        textColor:   "000000",
        sageColor:   "990000",
        tripColor:   "228854",
        titleColor:  "0f0c5d",
        timeColor:   "000000",
        customCSS:   '#delform,.reply,.hidden_thread,.stub{border-radius:0!important}\n.reply,.hidden_thread,.stub{border-left:0!important;border-top:0!important;"+(SS.conf["Layout"]==1?"border-right:0!important":"")+"}'
      },{
        name:    "安心院なじみ",
        "default":   true,
        bgImg:     "http://i.imgur.com/RewHm.png",
        bgRPA:     "no-repeat right bottom fixed",
        bgColor:   "ffffff",
        mainColor:   "efefef",
        brderColor:  "d6d6d6",
        inputColor:  "cccccc",
        inputbColor: "bbbbbb",
        blinkColor:  "f5871f",
        jlinkColor:  "bf8040",
        linkColor:   "bf8040",
        linkHColor:  "bf8040",
        nameColor:   "2b80c2",
        quoteColor:  "718c00",
        textColor:   "4d4d4c",
        sageColor:   "c82829",
        tripColor:   "3e999f",
        titleColor:  "4d4d4d",
        timeColor:   "4d4d4c"
      },{
        name:    "Midnight Caek",
        author:    "zixaphir",
        "default":   true,
        bgImg:     false,
        bgColor:   "101010",
        mainColor:   "1c1c1c",
        brderColor:  "1c1c1c",
        inputColor:  "1c1c1c",
        inputbColor: "101010",
        blinkColor:  "47475b",
        jlinkColor:  "57577b",
        linkColor:   "57577b",
        linkHColor:  "47475b",
        nameColor:   "7c2d2d",
        quoteColor:  "71793e",
        textColor:   "909090",
        sageColor:   "7c2d2d",
        tripColor:   "3e7157",
        titleColor:  "aaaaaa",
        timeColor:   "909090"
      },{
        name:    "Solarized", # http://ethanschoonover.com/solarized
        author:    "Ethan Schoonover",
        "default":   true,
        bgImg:     false,
        bgColor:   "073642",
        mainColor:   "032b36",
        brderColor:  "133942",
        inputColor:  "073642",
        inputbColor: "0d272e",
        blinkColor:  "4f5f8f",
        jlinkColor:  "696fc0",
        linkColor:   "696bba",
        linkHColor:  "d33682",
        nameColor:   "586e75",
        quoteColor:  "859900",
        textColor:   "93a1a1",
        sageColor:   "cc6666",
        tripColor:   "2aa198",
        titleColor:  "bec2c4",
        timeColor:   "93a1a1",
        customCSS:   ".reply{border:0!important}"
      },{
        name:    "4chan Rewired", # Originally by !K.WeEabo0o @ http://userstyles.org/styles/57787/4chan-rewired
        author:    "!K.WeEabo0o",
        "default":   true,
        bgImg:     "http://oi39.tinypic.com/2h51rb4.jpg",
        bgRPA:     "no-repeat bottom right fixed",
        bgColor:   "f4f4f4",
        mainColor:   "efefef",
        brderColor:  "d4d4d4",
        inputColor:  "e4e4e4",
        inputbColor: "cccccc",
        blinkColor:  "bf7f3f",
        jlinkColor:  "bf7f3f",
        linkColor:   "bf7f3f",
        linkHColor:  "d33682",
        nameColor:   "4c4c4c",
        quoteColor:  "6b7a1e",
        textColor:   "4c4c4c",
        sageColor:   "cc6666",
        tripColor:   "bf7f3f",
        titleColor:  "4c4c4c",
        timeColor:   "4c4c4c",
        customCSS:   '"+(SS.conf["Layout"]===2?".opContainer{display:block!important;border:1px solid "+this.brderColor.hex+"!important;"+(SS.conf["Sidebar Position"]===3?"margin-left:-"+(SS.conf["Side Margin"]+2)+"px!important;padding-left:"+(SS.conf["Side Margin"]+2)+"px!important}.opContainer,":"}"):"")+".post.reply{background:-webkit-linear-gradient(top,rgba(244,244,244,.8),rgba(239,239,239,.8))!important;background:-moz-linear-gradient(top,rgba(244,244,244,.8),rgba(239,239,239,.8))!important;background:-o-linear-gradient(top,rgba(244,244,244,.8),rgba(239,239,239,.8))!important;box-shadow:0 2px 5px rgba(0,0,0,.05)!important}.reply.highlight,.qphl{border-color:rgba("+this.linkHColor.rgb+",.6)!important}'
      },{
        name:    "violaceous",
        author:    "!MaSoOdDwDw",
        "default":   true,
        bgImg:     false,
        bgColor:   "121314",
        mainColor:   "1b1b1b",
        brderColor:  "292a2b",
        inputColor:  "18191a",
        inputbColor: "121314",
        blinkColor:  "db95e5",
        jlinkColor:  "db95e5",
        linkColor:   "2a7fa0",
        linkHColor:  "3090b5",
        nameColor:   "a497b0",
        quoteColor:  "00ab3f",
        textColor:   "dddddd",
        sageColor:   "4f4f4f",
        tripColor:   "bd2b83",
        titleColor:  "06989a",
        timeColor:   "dddddd",
        customCSS:   ".reply{border:0!important}"
      },{
        name:    "4chan Dark Upgrade",
        "default":   true,
        bgImg:     "http://img85.imageshack.us/img85/4162/4chbg.gif",
        bgRPA:     "repeat top left fixed",
        bgColor:   "242424",
        mainColor:   "333333",
        brderColor:  "3a3a3a",
        inputColor:  "2f2f2f",
        inputbColor: "0f0f0f",
        blinkColor:  "cccccc",
        jlinkColor:  "cccccc",
        linkColor:   "dddddd",
        linkHColor:  "eeeeee",
        nameColor:   "ffffff",
        quoteColor:  "63995b",
        textColor:   "ffffff",
        sageColor:   "b17385",
        tripColor:   "a7dce7",
        titleColor:  "999999",
        timeColor:   "aaaaaa",
        customCSS:   [
          "#delform{background:rgba(22,22,22,.8)!important;border:0!important;padding:1px!important;box-shadow:rgba(0,0,0,.8) 0 0 10px;}"
          ".postContainer>.reply{background-image:url(http://img714.imageshack.us/img714/3969/4ch2.gif)!important;"
          "border-bottom:#1f1f1f!important;border-radius:5px!important}"
          ".thread:not(.stub){background:0!important}a:not([href='javascript:;']){text-shadow:#0f0f0f 0 1px;}"
        ]
      },{
        name:    "AppChan", # Originally by Zixaphir @ http://userstyles.org/styles/54149/appchan
        author:    "Zixaphir",
        "default":   true,
        bgImg:     false,
        bgColor:   "2c2c2c",
        mainColor:   "333333",
        brderColor:  "2c2c2c",
        inputColor:  "333333",
        inputbColor: "2c2c2c",
        blinkColor:  "4f5f8f",
        jlinkColor:  "6688aa",
        linkColor:   "6688aa",
        linkHColor:  "6688aa",
        nameColor:   "aaaaaa",
        quoteColor:  "789922",
        textColor:   "aaaaaa",
        sageColor:   "aaaaaa",
        tripColor:   "aaaaaa",
        titleColor:  "aaaaaa",
        timeColor:   "aaaaaa",
        customCSS:   ".reply{border:0!important}"
      },{
        name:    "Vimyanized Dark",
        author:    "seaweed",
        "default":   true,
        bgImg:     false,
        bgColor:   "090d0f",
        mainColor:   "0d1114",
        brderColor:  "0b1316",
        inputColor:  "090d0f",
        inputbColor: "0b1316",
        blinkColor:  "4797cc",
        jlinkColor:  "4270b2",
        linkColor:   "53bdb1",
        linkHColor:  "3090b5",
        nameColor:   "d63e34",
        quoteColor:  "96c83b",
        textColor:   "f8f8f8",
        sageColor:   "4f4f4f",
        tripColor:   "d4b63c",
        titleColor:  "b88cd1",
        timeColor:   "dddddd"
      },{
        name:    "Muted",
        author:    "seaweed",
        "default":   true,
        bgImg:     false,
        bgColor:   "ffffff",
        mainColor:   "f5f2e9",
        brderColor:  "cccccc",
        inputColor:  "ffffff",
        inputbColor: "cccccc",
        blinkColor:  "111111",
        jlinkColor:  "bc312a",
        linkColor:   "bc312a",
        linkHColor:  "8e2220",
        nameColor:   "2c64a0",
        quoteColor:  "789922",
        textColor:   "393735",
        sageColor:   "990000",
        tripColor:   "cc6563",
        titleColor:  "111111",
        timeColor:   "333333",
        customCSS:   ".boardTitle{color:#bc312a!important;text-shadow:1px 1px 1px #772e28!important;}.boardSubtitle,.boardBanner .boardSubtitle>a{text-shadow:none!important;}.postNum a{color:#111111!important;}div.reply a.quotelink{color:#bc312a!important;}"
      },{
        name:    "Photons + Odin",
        author:    "!Hu6tDS8lls",
        "default":   true,
        bgImg:     "R0lGODlhAwADAIAAAB0dHRkZGSH5BADoAwAALAAAAAADAAMAAAIDDG5YADs=",
        bgRPA:     "repeat top left fixed",
        bgColor:   "202020",
        mainColor:   "1a1a1a",
        brderColor:  "1f1f1f",
        inputColor:  "18191a",
        inputbColor: "121314",
        blinkColor:  "c72d41",
        jlinkColor:  "446a6d",
        linkColor:   "737f88",
        linkHColor:  "4f585d",
        nameColor:   "0099bc",
        quoteColor:  "85c600",
        textColor:   "dddddd",
        sageColor:   "c72d41",
        tripColor:   "ff0085",
        titleColor:  "ffa600",
        timeColor:   "ffffff"
      }
    ]

    init: ->
      SS.conf["Themes"] = if Array.isArray SS.conf["Themes"]
        @defaults.concat SS.conf["Themes"]
      else
        @defaults.slice 0

      i = if SS.conf["SFW/NSFW Themes"] and SS.location.nsfw
        SS.conf["NSFW Theme"]
      else
        SS.conf["Selected Theme"]

      tIndex = if SS.conf["Themes"][i] then i else 0

      SS.theme = new SS.Theme tIndex # Set the active theme.

  # MASCOTS
  Mascots:
    defaults: [{
      # Asuka
      img: "http://i.imgur.com/DL5uR.png"
      overflow: true
      "default": true
    },{
      # Erio
      img: "http://i.imgur.com/zhPlM.png"
      "default": true
    },{
      # Homu
      img: "http://i.imgur.com/b9KmB.png"
      "default": true
    },{
      # Horo
      img: "http://i.imgur.com/bsLY4.png"
      offset: 0
      position: "center"
      "default": true
    },{
      # Kuroko
      img: "http://i.imgur.com/uO5qZ.png"
      "default": true
    },{
      # Kuroneko
      img: "http://i.imgur.com/Ht6dr.png"
      offset: -90
      position: "center"
      small: true
      "default": true
    },{
      # Inori
      img: "http://i.imgur.com/56oEl.png"
      "default": true
    },{
      # Kimi
      img: "http://i.imgur.com/ridLc.png"
      overflow: true
      "default": true
    },{
      # Lain
      img: "http://i.imgur.com/AfjG9.png"
      offset: 0
      position: "center"
      flip: false
      small: true
      "default": true
    },{
      # Luka
      img: "http://i.imgur.com/WUIMw.png"
      "default": true
    },{
      # Madotsuki
      img: "http://i.imgur.com/J1i26.png"
      offset: -90
      position: "center"
      "default": true
    },{
      # ムゥ～りさ
      img: "http://i.imgur.com/53yAK.png"
      overflow: true
      "default": true
    },{
      # Miku
      img: "http://i.imgur.com/H1pgZ.png"
      offset: 0
      position: "center"
      flip: false
      small: true
      "default": true
    },{
      # Mio
      img: "http://i.imgur.com/MdE9K.png"
      flip: false
      overflow: true
      "default": true
    },{
      # Mokou
      img: "http://i.imgur.com/NaKmF.png"
      offset: 0
      position: "center"
      "default": true
    },{
      # Ran
      img: "http://i.imgur.com/WWozC.png"
      overflow: true
      "default": true
    },{
      # Shana
      img: "http://i.imgur.com/K1mLx.png"
      flip: false
      small: true
      "default": true
    },{
      # Shiki
      img: "http://i.imgur.com/FKDcd.png"
      "default": true
    },{
      # Tessa
      img: "http://i.imgur.com/zu9nY.png"
      "default": true
    },{
      # Yin
      img: "http://i.imgur.com/haBSN.png"
      "default": true
    },{
      # Yozora
      img: "http://i.imgur.com/xwPrX.png"
      "default": true
    },{
      # Yuzuki
      img: "http://i.imgur.com/c8Lal.png"
      "default": true
    }]

    init: ->
      SS.conf["Mascots"] = if Array.isArray SS.conf["Mascots"]
        @defaults.concat SS.conf["Mascots"]
      else
        @defaults.slice 0

      eMascot = []

      if SS.conf["Selected Mascots"] is 0
        eMascot = SS.conf["Mascots"]
        mIndex  = Math.floor(Math.random() * eMascot.length)
      else
        eMascot.push j for mascot in SS.conf["Selected Mascots"] when not (
          SS.conf["Mascots"][mascot].boards? or mascot.boards.split(",").indexOf(SS.location.board) is -1
        )

        if eMascot.length is 0
          return SS.mascot = new SS.Mascot -1
        else
          mIndex = eMascot[Math.floor Math.random() * eMascot.length]

      SS.mascot = new SS.Mascot mIndex # the active mascot.

  pages:
    hasInit: false
    init: ->
      if not @hasInit and SS.conf["Pages Position"] is 1
        return if $("#pagesDrop").exists()

        pages  = $(".pagelist .pages>*")
        cpage  = $(".pagelist .pages>strong").text()
        select = $("<select id=pagesDrop>")

        return if pages.length() is 0

        pages.each ->
          select.append $(
            "<option value=" + @textContent.toLowerCase() + (
              if cpage is @textContent
                " selected=true"
              else
                ""
            ) + ">Page " + @textContent
          )

        select.bind "change", -> location.href = location.href.replace /(\.org\/[^\/]+)\/?.*$/, "$1/" + @value

        $("#boardNavDesktop").prepend select
        @hasInit = true
      else if @hasInit && SS.conf["Pages Position"] isnt 1
        $("#pagesDrop").remove()
        @hasInit = false

  tripHider:
    hasInit: false
    init: (input) ->
      if @hasInit && !SS.conf["Smart Tripcode Hider"]
        $("input[name=name]").each ->
          $(@).unbind("blur", SS.tripHider.handle).removeClass("tripping")
        @hasInit = false
      else
        input.bind "blur", @handle
        @hasInit = true

    handle: (e) ->
      that = if @nodeName then $(@) else $(e)
      check = /^.*##?.+/.test(that.val())

      if check and not that.hasClass "tripping"
        that.addClass "tripping"
      else if not check and that.hasClass "tripping"
        that.removeClass "tripping"

  menuEntries:
    hasInit: false
    init: ->
      if not @hasInit and SS.conf["Show/Hide Menu Entry"]
        a = document.createElement "a"
        a.href = "javascript:;"

        open = (post) ->
          return false if post.isInlined

          p = $ post.el
          bIsHidden = p.attr("hidden")? or (p.hasClass("op") and p.parent().previousSibling(".hidden_thread").exists())

          a.textContent = (if bIsHidden "Show" then "Hide") + " @post"

          a.removeEventListener "click", onclick
          onclick = ->
            pc = $("#pc" + post.ID)

            if (pc.hasClass("opContainer"))
              pc.previousSibling().click()
            else
              pc.children(".hide_reply_button:first-child>a").click()

          a.addEventListener("click", onclick)

          return true

        @createEntry a, open
        return @hasInit = true

    createEntry: (a, func) -> document.dispatchEvent new CustomEvent "AddMenuEntry",
      detail: {
        el:   a
        open: func
      }

  riceInputs:
    hasInit: false,
    init: ->
      unless @hasInit
        unless SS.browser.webkit
          unless SS.conf["Hide Checkboxes"]
            $("input[type=checkbox]:not(#imageExpand)").riceCheck()
          else
            $("input#prefetch").riceCheck()

        if SS.location.board is "f"
          $(".postarea input[type=file]").riceFile()

        @hasInit = true
      else unless SS.browser.webkit and SS.conf["Hide Checkboxes"] and $(".postInfo>.riceCheck").exists()
        $("input[type=checkbox]:not(#imageExpand)").riceCheck()
        @hasInit = false

  logoReflect:
    hasInit: false,
    init: ->
      return if @hasInit

      div = $("<div id=bBanner>").append($(".boardBanner>img").attr("id", "banner"))
      $(".boardBanner").prepend(div)

      @hasInit = true

# jscolor, JavaScript Color Picker
#
# @version 1.3.11
# @license GNU Lesser General Public License, http://www.gnu.org/copyleft/lesser.html
# @author  Jan Odvarko, http://odvarko.cz
# @created 2008-06-15
# @updated 2011-11-07
# @link    http://jscolor.com

  jscolor:
    css: ->

    bind: (el) ->
      el.color = new SS.jscolor.color(el) if not el.color

    fetchElement: (mixed) ->
      if typeof mixed is "string" then $.id mixed else mixed

    fireEvent: (el, event) ->
      return unless el

      $.event event, null, el

    getRelMousePos: (e) ->
      e or= window.event
      x = 0
      y = 0
      if typeof e.offsetX is 'number'
        x = e.offsetX
        y = e.offsetY
      else if typeof e.layerX is 'number'
        x = e.layerX
        y = e.layerY
      x: x
      y: y

    color: (target) ->
      # Read Only
      @hsv = [0, 0, 1] # 0-6, 0-1, 0-1
      @rgb = [1, 1, 1] # 0-1, 0-1, 0-1

      # Writable.
      # Value holder / Where to reflect current color
      @valueElement = @styleElement = target

      # Blur / Drag trackers
      abortBlur = holdPad = holdSld = false

      @hidePicker = ->
        if isPickerOwner() then removePicker()

      @showPicker = ->
        unless isPickerOwner() then drawPicker()

      @importColor = ->
        unless valueElement
          @exportColor()
        else
          unless @fromString valueElement.value, leaveValue
            styleElement.style.backgroundColor = styleElement.jscStyle.backgroundColor
            @exportColor leaveValue | leaveStyle

      @exportColor = (flags) ->
        if !(flags & leaveValue) and valueElement
          value = '#' + @toString()
          valueElement.value = value
          valueElement.previousSibling.value = value
          editTheme[valueElement.previousSibling.name] = value

          setTimeout -> Style.themeCSS.textContent = Style.theme editTheme

        if not (flags & leaveStyle) and styleElement
          styleElement.style.backgroundColor = '#' + @toString()

        if not (flags & leavePad) and isPickerOwner()
          redrawPad()

        if not (flags & leaveSld) and isPickerOwner()
          redrawSld()

      @fromHSV = (h, s, v, flags) -> # null = don't change
        @hsv = [
          h =
            if h
              $.minmax h, 0.0, 6.0
            else
              @hsv[0]
          s =
            if s
              $.minmax s, 0.0, 1.0
            else
              @hsv[1]
          v =
            if v
              $.minmax v, 0.0, 1.0
            else
              @hsv[2]
        ]

        @rgb = HSV_RGB(h, s, v)

        @exportColor flags

      @fromRGB = (r, g, b, flags) -> # null = don't change
        r =
          if r?
            $.minmax r, 0.0, 1.0
          else
            @rgb[0]
        g =
          if g?
            $.minmax g, 0.0, 1.0
          else
            @rgb[1]
        b =
          if b?
            $.minmax b, 0.0, 1.0
          else
            @rgb[2]

        hsv = RGB_HSV(r, g, b)

        if hsv[0]?
          @hsv[0] = $.minmax hsv[0], 0.0, 6.0

        if hsv[2] isnt 0
          @hsv[1] =
            unless hsv[1]?
              null
            else
              $.minmax hsv[1], 0.0, 1.0

        @hsv[2] =
          unless hsv[2]?
            null
          else
            $.minmax hsv[2], 0.0, 1.0

        # update RGB according to final HSV, as some values might be trimmed
        @rgb = HSV_RGB @hsv[0], @hsv[1], @hsv[2]

        @exportColor flags

      @fromString = (number, flags) ->
        m = number.match /^\W*([0-9A-F]{3}([0-9A-F]{3})?)\W*$/i
        unless m
          return false
        else
          if m[1].length is 6 # 6-char notation
            @fromRGB(
              parseInt(m[1].substr(0, 2), 16) / 255
              parseInt(m[1].substr(2, 2), 16) / 255
              parseInt(m[1].substr(4, 2), 16) / 255
              flags
            )
          else # 3-char notation
            @fromRGB(
              # Double-up each character to fake 6-char notation.
              parseInt((val = m[1].charAt 0) + val, 16) / 255
              parseInt((val = m[1].charAt 1) + val, 16) / 255
              parseInt((val = m[1].charAt 2) + val, 16) / 255
              flags
            )
          true

      @toString = ->
        (0x100 | Math.round(255 * @rgb[0])).toString(16).substr(1) +
        (0x100 | Math.round(255 * @rgb[1])).toString(16).substr(1) +
        (0x100 | Math.round(255 * @rgb[2])).toString(16).substr(1)

      RGB_HSV = (r, g, b) ->
        n = if (n = if r < g then r else g) < b then n else b
        v = if (v = if r > g then r else g) > b then v else b
        m = v - n

        return [ null, 0, v ] if m is 0

        h =
          if r is n
            3 + (b - g) / m
          else
            if g is n
              5 + (r - b) / m
            else
              1 + (g - r) / m
        [
          if h is 6 then 0 else h
          m / v
          v
        ]

      HSV_RGB = (h, s, v) ->

        return [ v, v, v ] unless h?

        i = Math.floor(h)
        f =
          if i % 2
            h - i
          else
            1 - (h - i)
        m = v * (1 - s)
        n = v * (1 - s * f)

        switch i
          when 6, 0
            [v,n,m]
          when 1
            [n,v,m]
          when 2
            [m,v,n]
          when 3
            [m,n,v]
          when 4
            [n,m,v]
          when 5
            [v,m,n]

      removePicker = ->
        delete SS.jscolor.picker.owner
        $.rm SS.jscolor.picker.boxB

      drawPicker = (x, y) ->
        unless p = SS.jscolor.picker
          elements = ['box', 'boxB', 'pad', 'padB', 'padM', 'sld', 'sldB', 'sldM', 'btn']
          p = {}
          for item in elements
            el = p[item] = d.createElement 'div'
            el.className = "jsc#{item.charAt(0).toUpperCase() + item.slice 1}"

          p.btnS = $.el 'span', {className: 'jscBtnS'}
          p.btnT = $.tn 'Close'

          SS.jscolor.picker = p

          p.box.appendChild  child for child in [p.sldB, p.sldM, p.padB, p.padM, p.btn]
          p.sldB.appendChild p.sld
          p.padB.appendChild p.pad
          p.btnS.appendChild p.btnT
          p.btn.appendChild  p.btnS
          p.boxB.appendChild p.box

        # controls interaction
        {box, boxB, btn, btnS, pad, padB, padM, sld, sldB, sldM} = p
        box.onmouseup   =
        box.onmouseout  = -> target.focus()
        box.onmousedown = -> abortBlur=true
        box.onmousemove = (e) ->
          if holdPad or holdSld
            holdPad and setPad e
            holdSld and setSld e

            if d.selection
              d.selection.empty()
            else if window.getSelection
              window.getSelection().removeAllRanges()

        padM.onmouseup =
        padM.onmouseout = -> if holdPad
          holdPad = false
          SS.jscolor.fireEvent valueElement, 'change'
        padM.onmousedown = (e) ->
          # If the slider is at the bottom, move it up

          if THIS.hsv[2] is 0
            THIS.fromHSV null, null, 1.0

          holdPad = true
          setPad e

        sldM.onmouseup =
        sldM.onmouseout = -> if holdSld
          holdSld = false
          SS.jscolor.fireEvent valueElement, 'change'
        sldM.onmousedown = (e) ->
          holdSld = true
          setSld e

        btn.onmousedown = ->
          THIS.hidePicker()

        # place pointers
        redrawPad()
        redrawSld()

        SS.jscolor.picker.owner = THIS
        $.add ThemeTools.dialog, p.boxB

      # redraw the pad pointer
      redrawPad = ->
        # The X and Y positions of the picker crosshair, based on the hsv Hue and Saturation values as percentages and the picker's dimensions.
        SS.jscolor.picker.padM.style.backgroundPosition =
          "#{4 + Math.round (THIS.hsv[0] / 6) * 180}px #{4 + Math.round (1 - THIS.hsv[1]) * 100}px"

        rgb = HSV_RGB(THIS.hsv[0], THIS.hsv[1], 1)
        SS.jscolor.picker.sld.style.backgroundColor = "rgb(#{rgb[0] * 100}%, #{rgb[1] * 100}%, #{rgb[2] * 100}%)"

        return

      redrawSld = ->
        # redraw the slider pointer. X will always be 0, Y will always be a percentage of the HSV 'Value' value.
        SS.jscolor.picker.sldM.style.backgroundPosition =
          "0 #{6 + Math.round (1 - THIS.hsv[2]) * 100}px"

      isPickerOwner = ->
        return SS.jscolor.picker and SS.jscolor.picker.owner is THIS

      blurTarget = ->
        if valueElement is target
          THIS.importColor()

      blurValue = ->
        if valueElement isnt target
          THIS.importColor()

      setPad = (e) ->
        mpos = SS.jscolor.getRelMousePos e
        x = mpos.x - 11
        y = mpos.y - 11
        THIS.fromHSV(
          x * (1 / 30)
          1 - y / 100
          null
          leaveSld
        )

      setSld = (e) ->
        mpos = SS.jscolor.getRelMousePos e
        y = mpos.y - 9
        THIS.fromHSV(
          null
          null
          1 - y / 100
          leavePad
        )

      THIS = @
      valueElement = SS.jscolor.fetchElement @valueElement
      styleElement = SS.jscolor.fetchElement @styleElement
      leaveValue = 1 << 0
      leaveStyle = 1 << 1
      leavePad = 1 << 2
      leaveSld = 1 << 3

      # target
      $.on target, 'focus', ->
        THIS.showPicker()

      $.on target, 'blur', ->
        unless abortBlur
          window.setTimeout(->
            abortBlur or blurTarget()
            abortBlur = false
          )
        else
          abortBlur = false

      # valueElement
      if valueElement
        $.on valueElement, 'keyup input', ->
          THIS.fromString valueElement.value, leaveValue

        $.on valueElement, 'blur', blurValue

        valueElement.setAttribute 'autocomplete', 'off'

      # styleElement
      if styleElement
        styleElement.jscStyle =
          backgroundColor: styleElement.style.backgroundColor

      @importColor()

  # STRUCTS
  Color: class
    constructor: (value) ->
      @hex         = "#" + value
      @private_rgb = @calc_rgb()
      @isLight     = SS.isLight @private_rgb
      @rgb         = @private_rgb.join ","
      @hover       = @shiftRGB 16, true

    calc_rgb: ->
      hex = parseInt @hex, 16
      return [ # 0xRRGGBB to [R, G, B]
        (hex >> 16) & 0xFF
        (hex >> 8) & 0xFF
        hex & 0xFF
      ]

    shiftRGB: (shift, smart) ->
      minmax = (base) -> if base < 0 then 0 else if base > 255 then 255 else base

      rgb = [@private_rgb...]
      shift = if smart
        (if @isLight then -1 else 1) * Math.abs shift
      else
        shift

      return (minmax color + shift for color in rgb).join ","

  Image: class
    constructor: (img, RPA) ->
      @img = img
      @RPA = RPA

    get: ->
      return (if @img
        "url('#{
          if SS.validBase64 @img
            'data:image/' + SS.typeofBase64(@img) + ';base64,' + @img
          else
            @img
        }')#{if @RPA? then ' ' + @RPG else ''}"
      else 'none')

  Mascot: class
    constructor: (index) ->
      if index is -1 # no mascot
        @img  = new SS.Image null
        @hidden = true
        return
      else
        mascot = SS.conf["Mascots"][index]

      @index    = index
      @hidden   = SS.conf["Hidden Mascots"].indexOf(index) isnt -1
      @default  = mascot.default
      @position = mascot.position
      @overflow = mascot.overflow
      @small    = mascot.small or @overflow
      @flip     = if mascot.flip? mascot.flip else true
      @img      = new SS.Image mascot.img,
        "no-repeat " + (
          if @overflow
            SS.conf["Sidebar Position " + (
              if SS.conf["Sidebar Position String"] is "left" and @flip
                "o"
              else
                ""
            ) + "String"]
          else
            "center") + " " + (@position or "bottom")
      @bOffset  = typeof mascot.offset is "number"
      @offset   = if @bOffset then mascot.offset else if SS.conf["Post Form"] isnt 1 then 273 else 23
      @boards   = mascot.boards
      @enabled  = SS.conf["Selected Mascots"] is 0 or not SS.conf["Selected Mascots"].indexOf(index) is -1

    preview: ->
      div = $([
        "<div " + (if @hidden then "hidden=true " else "")
        "id=mascot" + @index + (if @enabled then " class=selected" else "")
        " style=\"background:" + @img.get() + "\">"
      ].join '').html "<a title=Delete>X</a><a title=Edit>E</a>"

      $(div).bind "click", -> $(@).toggleClass "selected"

      $("a[title=Delete]", div).bind "click", (e) ->
        e.stopPropagation()
        SS.options.deleteMascot index

      $("a[title=Edit]", div).bind "click", (e) ->
        e.stopPropagation()
        SS.options.showMascot index

      div

  Theme: class
    constructor: (index) ->
      return @hidden = true unless (theme = SS.conf["Themes"][index])?

      @index       = index
      @hidden      = SS.conf["Hidden Themes"].indexOf(index) isnt -1
      @name        = theme.name
      @author      = theme.author or "ahodesuka"
      @default     = theme.default
      @replyBrder  = theme.replyBrder
      @bgImg       = new SS.Image theme.bgImg, theme.bgRPA

      @[key = "#{color}Color"] = new SS.Color theme[key] for color in ['bg', 'main', 'brder', 'input', 'inputb', 'blink', 'jlink', 'link', 'linkH', 'name', 'quote', 'sage', 'text', 'title', 'trip']

      @timeColor   = new SS.Color theme.timeColor or theme.textColor
      @checkMark   = new SS.Image(inputImages, "no-repeat center " + (if @inputColor.isLight then 0 else -8) + "px")
      @radioCheck  = new SS.Image(inputImages, "no-repeat center " + (if @inputColor.isLight then -16 else -24) + "px")

      # SVG Icons from http://raphaeljs.com/icons/
      #
      # Copyright © 2008 Dmitry Baranovskiy
      #
      # Permission is hereby granted, free of charge, to any person obtaining a copy of @ software and
      # associated documentation files (the “Software”), to deal in the Software without restriction, including
      # without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
      # copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
      # following conditions:
      # The above copyright notice and @ permission notice shall be included in all copies or substantial
      # portions of the Software.
      #
      # The software is provided “as is”, without warranty of any kind, express or implied, including but not
      # limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no
      # event shall the authors or copyright holders be liable for any claim, damages or other liability, whether
      # in an action of contract, tort or otherwise, arising from, out of or in connection with the software or
      # the use or other dealings in the software.

      svg = (color, coords, dims = 16) -> [
        "<svg viewBox='0 0 30 30' hpreserveAspectRatio='true' height='", dims, "' width='", dims, "' xmlns='http://www.w3.org/2000/svg'>"
        "<path fill='rgb(", color, ")' d='", coords, "'/>"
        "</svg>"
      ].join ""

      @icons =
        closeButton:  svg @sageColor.rgb,                'M24.778,21.419 19.276,15.917 24.777,10.415 21.949,7.585 16.447,13.087 10.945,7.585 8.117,10.415 13.618,15.917 8.116,21.419 10.946,24.248 16.447,18.746 21.948,24.248z'
        closedThread: svg @sageColor.rgb,                'M22.335,12.833V9.999h-0.001C22.333,6.501,19.498,3.666,16,3.666S9.666,6.502,9.666,10h0v2.833H7.375V25h17.25V12.833H22.335zM11.667,10C11.667,10,11.667,10,11.667,10c0-2.39,1.944-4.334,4.333-4.334c2.391,0,4.335,1.944,4.335,4.333c0,0,0,0,0,0v2.834h-8.668V10z'
        stuckThread:  svg @tripColor.rgb,                'M16,3.5c-4.142,0-7.5,3.358-7.5,7.5c0,4.143,7.5,18.121,7.5,18.121S23.5,15.143,23.5,11C23.5,6.858,20.143,3.5,16,3.5z M16,14.584c-1.979,0-3.584-1.604-3.584-3.584S14.021,7.416,16,7.416S19.584,9.021,19.584,11S17.979,14.584,16,14.584z'
        imgExpand:    svg @textColor.shiftRGB(32, true), 'M25.545,23.328,17.918,15.623,25.534,8.007,27.391,9.864,29.649,1.436,21.222,3.694,23.058,5.53,15.455,13.134,7.942,5.543,9.809,3.696,1.393,1.394,3.608,9.833,5.456,8.005,12.98,15.608,5.465,23.123,3.609,21.268,1.351,29.695,9.779,27.438,7.941,25.6,15.443,18.098,23.057,25.791,21.19,27.638,29.606,29.939,27.393,21.5z', 14, 14
        imgContract:  svg @textColor.rgb,                'M25.083,18.895l-8.428-2.259l2.258,8.428l1.838-1.837l7.053,7.053l2.476-2.476l-7.053-7.053L25.083,18.895zM5.542,11.731l8.428,2.258l-2.258-8.428L9.874,7.398L3.196,0.72L0.72,3.196l6.678,6.678L5.542,11.731zM7.589,20.935l-6.87,6.869l2.476,2.476l6.869-6.869l1.858,1.857l2.258-8.428l-8.428,2.258L7.589,20.935zM23.412,10.064l6.867-6.87l-2.476-2.476l-6.868,6.869l-1.856-1.856l-2.258,8.428l8.428-2.259L23.412,10.064z'
        hideButton:   svg '203,77,70',                   'M25.979,12.896,5.979,12.896,5.979,19.562,25.979,19.562z'
        showButton:   svg '63,203,73',                   'M25.979,12.896 19.312,12.896 19.312,6.229 12.647,6.229 12.647,12.896 5.979,12.896 5.979,19.562 12.647,19.562 12.647,26.229 19.312,26.229 19.312,19.562 25.979,19.562z'
        returnButton: svg @textColor.rgb,                'M12.981,9.073V6.817l-12.106,6.99l12.106,6.99v-2.422c3.285-0.002,9.052,0.28,9.052,2.269c0,2.78-6.023,4.263-6.023,4.263v2.132c0,0,13.53,0.463,13.53-9.823C29.54,9.134,17.952,8.831,12.981,9.073z'
        notWatched:   svg @quoteColor.rgb,               'M16,22.375L7.116,28.83l3.396-10.438l-8.883-6.458l10.979,0.002L16.002,1.5l3.391,10.434h10.981l-8.886,6.457l3.396,10.439L16,22.375L16,22.375zM22.979,26.209l-2.664-8.205l6.979-5.062h-8.627L16,4.729l-2.666,8.206H4.708l6.979,5.07l-2.666,8.203L16,21.146L22.979,26.209L22.979,26.209z'
        watchedIco:   svg @quoteColor.rgb,               'M16,22.375L7.116,28.83l3.396-10.438l-8.883-6.458l10.979,0.002L16.002,1.5l3.391,10.434h10.981l-8.886,6.457l3.396,10.439L16,22.375L16,22.375z'
        menuButton:   svg @jlinkColor.rgb,               'M10.129,22.186 16.316,15.999 10.129,9.812 13.665,6.276 23.389,15.999 13.665,25.725z'
        _4chanSS:     svg @textColor.rgb,                'M26.834,14.693c1.816-2.088,2.181-4.938,1.193-7.334l-3.646,4.252l-3.594-0.699L19.596,7.45l3.637-4.242c-2.502-0.63-5.258,0.13-7.066,2.21c-1.907,2.193-2.219,5.229-1.039,7.693L5.624,24.04c-1.011,1.162-0.888,2.924,0.274,3.935c1.162,1.01,2.924,0.888,3.935-0.274l9.493-10.918C21.939,17.625,24.918,16.896,26.834,14.693z'
        _4chanX:      svg @textColor.rgb,                'M28.537,9.859c-0.473-0.259-1.127-0.252-1.609-0.523c-0.943-0.534-1.186-1.316-1.226-2.475c-2.059-2.215-5.138-4.176-9.424-4.114c-1.162,0.017-2.256-0.035-3.158,0.435c-0.258,0.354-0.004,0.516,0.288,0.599c-0.29,0.138-0.692,0.147-0.626,0.697c2.72-0.383,7.475,0.624,7.116,2.966c-0.08,0.521-0.735,1.076-1.179,1.563c-1.263,1.382-2.599,2.45-3.761,3.667l0.336,0.336c0.742-0.521,1.446-0.785,2.104-0.785c0.707,0,1.121,0.297,1.276,0.433c0.575-0.618,1.166-1.244,1.839-1.853c0.488-0.444,1.047-1.099,1.566-1.178l0.949-0.101c1.156,0.047,1.937,0.29,2.471,1.232c0.27,0.481,0.262,1.139,0.521,1.613c0.175,0.324,0.937,1.218,1.316,1.228c0.294,0.009,0.603-0.199,0.899-0.49l1.033-1.034c0.291-0.294,0.501-0.6,0.492-0.896C29.754,10.801,28.861,10.035,28.537,9.859zM13.021,15.353l-0.741-0.741c-3.139,2.643-6.52,5.738-9.531,8.589c-0.473,0.443-1.452,1.021-1.506,1.539c-0.083,0.781,0.95,1.465,1.506,2c0.556,0.533,1.212,1.602,1.994,1.51c0.509-0.043,1.095-1.029,1.544-1.502c2.255-2.374,4.664-4.976,6.883-7.509c-0.312-0.371-0.498-0.596-0.498-0.596C12.535,18.451,11.779,17.272,13.021,15.353zM20.64,15.643c-0.366-0.318-1.466,0.143-1.777-0.122c-0.311-0.266,0.171-1.259-0.061-1.455c-0.482-0.406-0.77-0.646-0.77-0.646s-0.862-0.829-2.812,0.928L7.44,6.569C7.045,6.173,7.203,4.746,7.203,4.746L3.517,2.646L2.623,3.541l2.1,3.686c0,0,1.428-0.158,1.824,0.237l7.792,7.793c-1.548,1.831-0.895,2.752-0.895,2.752s0.238,0.288,0.646,0.771c0.196,0.23,1.188-0.249,1.455,0.061c0.264,0.312-0.196,1.41,0.12,1.777c2.666,3.064,6.926,7.736,8.125,7.736c0.892,0,2.021-0.724,2.948-1.64c0.925-0.917,1.639-2.055,1.639-2.947C28.377,22.567,23.704,18.309,20.64,15.643z'
        _4chanSP:     svg @textColor.rgb,                'M4.998,12.127v7.896h4.495l6.729,5.526l0.004-18.948l-6.73,5.526H4.998z M18.806,11.219c-0.393-0.389-1.024-0.389-1.415,0.002c-0.39,0.391-0.39,1.024,0.002,1.416v-0.002c0.863,0.864,1.395,2.049,1.395,3.366c0,1.316-0.531,2.497-1.393,3.361c-0.394,0.389-0.394,1.022-0.002,1.415c0.195,0.195,0.451,0.293,0.707,0.293c0.257,0,0.513-0.098,0.708-0.293c1.222-1.22,1.98-2.915,1.979-4.776C20.788,14.136,20.027,12.439,18.806,11.219z M21.101,8.925c-0.393-0.391-1.024-0.391-1.413,0c-0.392,0.391-0.392,1.025,0,1.414c1.45,1.451,2.344,3.447,2.344,5.661c0,2.212-0.894,4.207-2.342,5.659c-0.392,0.39-0.392,1.023,0,1.414c0.195,0.195,0.451,0.293,0.708,0.293c0.256,0,0.512-0.098,0.707-0.293c1.808-1.809,2.929-4.315,2.927-7.073C24.033,13.24,22.912,10.732,21.101,8.925z'
        search:       svg @textColor.rgb,                'M29.772,26.433l-7.126-7.126c0.96-1.583,1.523-3.435,1.524-5.421C24.169,8.093,19.478,3.401,13.688,3.399C7.897,3.401,3.204,8.093,3.204,13.885c0,5.789,4.693,10.481,10.484,10.481c1.987,0,3.839-0.563,5.422-1.523l7.128,7.127L29.772,26.433zM7.203,13.885c0.006-3.582,2.903-6.478,6.484-6.486c3.579,0.008,6.478,2.904,6.484,6.486c-0.007,3.58-2.905,6.476-6.484,6.484C10.106,20.361,7.209,17.465,7.203,13.885z'
        catalog:      svg @textColor.rgb,                'M25.754,4.626c-0.233-0.161-0.536-0.198-0.802-0.097L12.16,9.409c-0.557,0.213-1.253,0.316-1.968,0.316c-0.997,0.002-2.029-0.202-2.747-0.48C7.188,9.148,6.972,9.04,6.821,8.943c0.056-0.024,0.12-0.05,0.193-0.075L18.648,4.43l1.733,0.654V3.172c0-0.284-0.14-0.554-0.374-0.714c-0.233-0.161-0.538-0.198-0.802-0.097L6.414,7.241c-0.395,0.142-0.732,0.312-1.02,0.564C5.111,8.049,4.868,8.45,4.872,8.896c0,0.012,0.004,0.031,0.004,0.031v17.186c0,0.008-0.003,0.015-0.003,0.021c0,0.006,0.003,0.01,0.003,0.016v0.017h0.002c0.028,0.601,0.371,0.983,0.699,1.255c1.034,0.803,2.769,1.252,4.614,1.274c0.874,0,1.761-0.116,2.583-0.427l12.796-4.881c0.337-0.128,0.558-0.448,0.558-0.809V5.341C26.128,5.057,25.988,4.787,25.754,4.626zM5.672,11.736c0.035,0.086,0.064,0.176,0.069,0.273l0.004,0.054c0.016,0.264,0.13,0.406,0.363,0.611c0.783,0.626,2.382,1.08,4.083,1.093c0.669,0,1.326-0.083,1.931-0.264v1.791c-0.647,0.143-1.301,0.206-1.942,0.206c-1.674-0.026-3.266-0.353-4.509-1.053V11.736zM10.181,24.588c-1.674-0.028-3.266-0.354-4.508-1.055v-2.712c0.035,0.086,0.065,0.176,0.07,0.275l0.002,0.053c0.018,0.267,0.13,0.408,0.364,0.613c0.783,0.625,2.381,1.079,4.083,1.091c0.67,0,1.327-0.082,1.932-0.262v1.789C11.476,24.525,10.821,24.588,10.181,24.588z'
        announcement: svg @textColor.rgb,                'M16,4.938c-7.732,0-14,4.701-14,10.5c0,1.981,0.741,3.833,2.016,5.414L2,25.272l5.613-1.44c2.339,1.316,5.237,2.106,8.387,2.106c7.732,0,14-4.701,14-10.5S23.732,4.938,16,4.938zM16.868,21.375h-1.969v-1.889h1.969V21.375zM16.772,18.094h-1.777l-0.176-8.083h2.113L16.772,18.094z'
        lastmu:       svg @textColor.rgb,                'M12.751,8.042v6.041v9.862c-0.677-0.45-1.636-0.736-2.708-0.736c-2.048,0-3.708,1.025-3.708,2.292c0,1.265,1.66,2.291,3.708,2.291s3.708-1.026,3.708-2.291V13.786l10.915-3.24v9.565c-0.678-0.45-1.635-0.736-2.708-0.736c-2.048,0-3.708,1.025-3.708,2.292c0,1.265,1.66,2.291,3.708,2.291s3.708-1.026,3.708-2.291V10.249V4.208L12.751,8.042z', 18, 18

      if theme.customCSS
        try
          if theme.customCSS[0] is "("
            theme.customCSS = "\"+".concat theme.customCSS
          if theme.customCSS[theme.customCSS.length-1] is ")"
            theme.customCSS += "+\""

          @customCSS = eval SS.trimLineBreaks new String "'#{theme.customCSS}'"

        catch e
          alert "Error evaluating " + @name + "'s theme.customCSS!\n" + e.message
          @customCSS = theme.customCSS
      else
        @customCSS = ""

    preview: ->
      sTheme = if SS.conf["SFW/NSFW Themes"] and SS.location.nsfw then SS.conf["NSFW Theme"] else SS.conf["Selected Theme"]
      div = $([
        "<div "
        if @hidden then "hidden=true " else ""
        " id=theme" + @index
        if @index is sTheme then " class=selected>" else ">"
      ].join '').html([
        "<div class=reply ", "style='background-color:", @mainColor.hex, "!important;border:1px solid ", @brderColor.hex, "!important;color:", @textColor.hex, "!important'>"
        "<div class=riceCheck style='background-color:", @inputColor.hex, "!important;border:1px solid ", @inputbColor.hex, "!important;box-shadow:rgba(", @mainColor.shiftRGB(64), ",.3) 0 1px;'></div>"
        "<span style='color:", @titleColor.hex, "!important'>", @name, "</span> "
        "<span style='color:", @nameColor.hex, "!important'>", @author, "</span>"
        "<span style='color:", @sageColor.hex, "!important'> (SAGE)</span>", "<span style='color:", @tripColor.hex, "!important'>!.pC/AHOKAg</span>"
        "<time style='color:", @timeColor.hex, "'> 20XX.01.01 12:00 </time>"
        "<a href='javascript:;' style='color:", @linkColor.hex, "!important' ", "onmouseover='@setAttribute(\"style\",\"color:", @linkHColor.hex, "!important\")' ", "onmouseout='@setAttribute(\"style\",\"color:", @linkColor.hex, "!important\")'>No.22772469</a>"
        "<br><blockquote class=postMessage>Post content is right here.</blockquote>"
        "<p><a title=Edit style='background-color:", @inputColor.hex, "!important;border:1px solid ", @inputbColor.hex, "!important;color:", @textColor.hex, "!important'>Edit</a>"
        "<a title=Delete style='background-color:", @inputColor.hex, "!important;border:1px solid ", @inputbColor.hex, "!important;color:", @textColor.hex, "!important'>Delete</a></p>"
        "<h3>SELECTED</h3>"
        "</div>"
      ].join '')

      $(div).bind "click", ->
        that = $(@)

        return if that.hasClass "selected"
        that.parent().children(".selected").removeClass "selected"
        that.addClass "selected"

      $("a[title=Delete]", div).bind "click", (e) ->
        e.stopPropagation()
        SS.options.deleteTheme index

      $("a[title=Edit]", div).bind "click", (e) ->
        e.stopPropagation()
        SS.options.showTheme index

      div

  # HELPER METHODS
  formatFont: (font) -> return (if font in ["sans-serif", "monospace"] then font else "'#{font}'")

  RGBFromHex: (hex) ->
    hex = parseInt hex, 16
    rgb = [
      (hex >> 16) & 0xFF
      (hex >> 8) & 0xFF
      hex & 0xFF
    ]

  isLight:        (rgb) -> (rgb[0] * 0.299 + rgb[1] * 0.587 + rgb[2] * 0.114) > 125
  trimLineBreaks: (str) -> str.replace /(\r\n|\r|\n)/gm, ""
  cleanBase64:    (b64) -> b64.replace /^(data:image\/(?:gif|jpe?g|png);base64,)(\r\n|\r|\n)?/gmi, ""
  validBase64:    (b64) -> /^(?:data:image\/(?:gif|jpe?g|png);base64,)?(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$/i.test b64
  validImageURL:  (img) -> /^https?:\/\/.+$/i.test img

  typeofBase64: (b64) ->
    switch b64.substr 0, 8
      when "PD94bWwg"
        "svg+xml"
      when "R0lGODlh"
        "gif"
      when "/9j/4AAQ", "/9j/4QAY"
        "jpeg"
      else
        "png"

  getLocation: (url) ->
    if typeof url is "string"
      obj = document.createElement "a"
      obj.href = "#{location.protocol}//#{url}"
    else
      obj = window.location

    pathname = obj.pathname.substr(1).split "/"

    o =
      sub:     obj.hostname.split(".")[0]
      board:   pathname[0]
      nsfw:    /^(b|d|e|f|gif|h|hr|r|s|t|u|wg|i|ic|r9k|y|pol|soc)$/.test pathname[0]
      reply:   pathname[1] is "res"
      catalog: pathname[1] is "catalog"

# END STYLE SCRIPT CLASSES

SS.init()
