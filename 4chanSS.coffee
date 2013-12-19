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
    "Check this if you are using a bitmap font"
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
      @init selector, root
    else
      new $ selector, root

  check: (el) ->
    return if el.constructor is $ then el.get() else el

  init: (selector, root) ->
    return @ unless selector?

    if selector.constructor is $
      return selector

    else if typeof selector is 'string'
      root = root or d

      # No closing tag for root node.
      tagCheck = /^<(\w+)([^>]*)>(.*)$/.exec selector

    root = $.check root

    if tagCheck
      tag = d.creatElement tagCheck[1]

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
    el = $.check el
    @each -> @insertBefore el, @firstChild

  append: (el) ->
    el = $.check el
    @each -> @appendChild el

  before: (el) ->
    el = $.check el
    @each -> @parentNode.insertBefore el, @

  after: (el) ->
    el = $.check el
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
    @each -> @textContent += text;

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
        t = s[i]          if m.elems.indexOf(s[i]) isnt -1 # this element matches the selector

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
        t = s[i]          if m.elems.indexOf(s[i]) isnt -1 # this element matches the selector

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

  exists: -> @elems.length > 0;

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

  jsColor: -> @each -> @color = new $SS.jscolor.color @
