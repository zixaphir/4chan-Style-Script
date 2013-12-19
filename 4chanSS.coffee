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
      return if /^about:neterror/.test document.documentURI

      SS.browser.webkit = /AppleWebKit/.test navigator.userAgent
      SS.browser.gecko  = /Gecko\//.test navigator.userAgent
      SS.location       = SS.getLocation()

      # correct selected theme/mascots after updating
      # and the number defaults has changed.
      if m_VERSION = SS.Config.get("VERSION") isnt VERSION
        ntMascots = SS.Mascots.defaults.length # new total
        ntThemes  = SS.Themes.defaults.length
        otMascots = SS.Config.get("Total Mascots") || ntMascots # old total
        otThemes  = SS.Config.get("Total Themes")  || ntThemes
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
      
      
      if $("link[rel=stylesheet]", document.head).exists()
        SS.insertCSS()
      else
        $(document).bind "DOMNodeInserted", SS.insertCSS

      if /complete|interactive/.test document.readyState
        SS.DOMLoaded();
      else
        $(document).bind "DOMContentLoaded", SS.DOMLoaded

    else
      SS.insertCSS()
      SS.DOMLoaded(true)

  # STYLING & DOM
  insertCSS: ->
    reload = $("#ch4SS").exists()
  
    if reload or $("link[rel=stylesheet]", document.head).exists()
      $(document).unbind("DOMNodeInserted", SS.insertCSS)
    else
      return
  
    css.remove() if not reload and not SS.location.catalog and (css = $ "link[rel*='stylesheet']:not([href*='flags'])").exists()
  
    SS.bHideSidebar = SS.location.sub isnt "boards" or
      SS.location.catalog or
      SS.location.board is "f"
    
    ###
    # FIXME: Include
    # css = "@import url("+location.protocol+"//fonts.googleapis.com/css?family=PT+Sans+Narrow);* {font-family:"+SS.formatFont(SS.conf["Font"])+"!important;font-size:"+SS.conf["Font Size"]+"px!important}*:focus {outline:none!important;-moz-outline:none!important;-moz-user-focus:none!important}[draggable] {-webkit-user-select:none;-moz-user-select:none;-o-user-select:none;user-select:none}input:active:not([disabled]),body input:focus:not([type]),body input[type=password]:focus,body input[type=text]:focus,body select:focus,body textarea:focus {border:1px solid "+SS.theme.brderColor.hex+"!important;outline:1px solid "+SS.theme.linkColor.hex+"!important;outline-offset:-2px!important}::-moz-focus-inner {border:0;padding:0}::selection {background:"+SS.theme.linkColor.hex+";color:#"+(SS.theme.linkColor.isLight?"000":"fff") +"!important}::-moz-selection {background:"+SS.theme.linkColor.hex+";color:#"+(SS.theme.linkColor.isLight?"000":"fff") +"!important}img {border:0!important}hr {border:0!important;border-top:1px solid rgba("+SS.theme.brderColor.rgb+",.9)!important;clear:left;margin:.3em 0!important}div.post div.file .fileThumb {float:left;margin-left:20px;margin-right:20px;margin-top:3px;margin-bottom:5px}.postContainer {display:block}div.post blockquote.postMessage {display:block}div.post {margin:2px 0}div.fileText {margin:1px 10px 1px 20px}div.reply div.postInfo {display:block!important}#delform div.reply:not([hidden]), div.image_expanded {display:table !important}div.thread {margin:0px;clear:both}table.flashListing {border-spacing:1px;margin-left:auto;margin-right:auto}div.pagelist div.pages {padding:4px}.globalMessage {text-align:center}.prettyprint {padding:5px!important;display:inline-block;max-height:400px;overflow-x:auto;max-width:600px}span.spoiler,s, s a, s:not(:hover) span.quote {color:#000!important;background:#000!important;text-decoration:none}span.spoiler:hover, span.spoiler:focus,s:hover, s:focus, s:hover a {color:#fff!important}h1,h2,h3,h4,h5 {margin:.4em 0!important}*[style*='font-weight: bold;'],h3,b,strong,body a.YTLT-link,.postInfo span.name,.postInfo span.subject {font-weight:"+(SS.conf["Bitmap Font"]?4:7)+"00!important}a,.button,a.quotelink,.deadlink,span>a.replylink {"+(!SS.conf["Underline Links"]?"text-decoration:none!important;":"")+"color:"+SS.theme.linkColor.hex+"!important;font-weight:normal!important;-webkit-transition:all .1s;-moz-transition:all .1s;-o-transition:all .1s}body a.YTLT-link {"+(SS.location.catalog?"white-space:normal;":"")+"font-style:normal!important;-webkit-transition:none;-moz-transition:none;-o-transition:none}body .YTLT-embed {border:0!important}a.filtered {text-decoration:line-through"+(SS.conf["Underline Links"]?" underline":"")+"!important}body a:hover,.button:hover,.posteruid span.hand:hover,blockquote a.quotelink:hover,#boardLinks>a.selectedBoard,div.post div.postInfo span~span.postNum a:hover {color:"+SS.theme.linkHColor.hex+"!important;text-shadow:rgba("+SS.theme.linkHColor.rgb+",.2) 0 0 2px!important}.spoiler a {-webkit-transition:none;-moz-transition:none;-o-transition:none}a:not([href]),a[href='javascript:;'],a[href='#'],a[href='#']:hover,#playerDiv a,#playerDiv a:hover,#settingsWindowLink,#menu .entry {color:"+SS.theme.jlinkColor.hex+"!important}.nameBlock .name,.nameBlock .useremail[href] .name,#post-preview .post-author,#delform[action='https://sys.4chan.org/f/up.php'] .name {color:"+SS.theme.nameColor.hex+"!important}.useremail[href] span.postertrip,span>span.postertrip,#post-preview .post-tripcode,#delform[action='https://sys.4chan.org/f/up.php'] .postertrip {color:"+SS.theme.tripColor.hex+"!important}.postMessage .quote {color:"+SS.theme.quoteColor.hex+"!important}a.playerLoadAllLink:hover {color:"+SS.theme.linkHColor.hex+"!important}a.forwardlink,a.playerLoadAllLink {color:"+SS.theme.linkColor.hex+"!important}.dateTime {color:"+SS.theme.timeColor.hex+"!important}.postInfo .subject,.replytitle,#delform[action='https://sys.4chan.org/f/up.php'] .subject {color:"+SS.theme.titleColor.hex+"!important}a.linkmail[href='mailto:sage'],a.linkmail[href='mailto:sage']:hover,#qr .warning,span[style='color:#F00000'],span[style='color:#FF0000;font-weight:normal'] {color:"+SS.theme.sageColor.hex+"!important;text-shadow:none!important}.reply,.hidden_thread,.panel,.stub,"+(SS.conf["Layout"]!==2?"a.summary,":"")+"option,div[id*=jsMath],#imgControls,#imgControls .preload,#playerDiv,#playerListMenu,#playerListItemMenu,#playerSettings,#prefetch,#watcher>div,#jsMath_float>*,#content>#ctrl,.deleteform,table.flashListing tr:nth-of-type(2n+1) {background:rgba("+SS.theme.mainColor.rgb+",.9)!important}#boardNavDesktop,#globalMessage {background:"+SS.theme.mainColor.hex+"!important}table.flashListing .highlightPost {background:none!important}table.flashListing .highlightPost::after {content:'●';color:rgb(214,149,149);position:relative!important;top:2px!important}.flashListing > tbody {padding-top:200px!important}table.flashListing {background:rgba("+SS.theme.mainColor.shiftRGB(-16)+",.9)!important;position:relative;z-index:3}table.postForm td {background:none!important;border:0!important}.postContainer>.op.highlight,.postContainer>.op:target,.postContainer.qphl,#delform[action='https://sys.4chan.org/f/up.php'],#delform[action='https://sys.4chan.org/f/up.php'] .postblock {background:none!important;border:none!important}a,button,input[type=checkbox],input[type=radio],input[type=button],input[type=submit],#themeoptions #tMascot div,#themeoptions #tThemes>div,.pointer,.riceCheck,.trbtn {cursor:pointer}body,img[alt=Closed],img[alt=Sticky],.navLinks,.deleteform,#navtopright,#navtopright>a,#imageType+label,#qr>form #spoilerLabel,.preview>label,.close,.remove,.menu_button,#boardNavDesktop>.boardList,.hide_reply_button:not(.stub)>a:first-child>span,.hidden_thread>span,.hidden_thread a:first-child>span,.stub>a:first-child>span,.mPagelist .pages span {color:transparent!important;font-size:0!important}button,form[name=post] input[name=email]+label,form[name=post] #com_submit+label,input[type=button],input[type=submit],#imgControls label,#qr>.move,#qr>form #spoilerLabel::after,#stats .move,#themeoptions #tThemes>div p a,#updater span,#updater .move,#watcher .move,.deleteform::before,.boardBanner .boardSubtitle,.preview>label::after,.riceFile div,.trbtn {text-transform:uppercase}#qr>form>div:first-child .field:not(#dump):focus+span,input:not([type=submit]),select,select *,textarea,#navlinks,#themeoptions label,#themeoptions label>span,#themeoptions #tMascot div a,#boardNavDesktop>.boardList a:not(#lastmuSettingsWindowLink):not(.current),#updater label,#updater span,.container * {font:"+SS.conf["Small Font Size"]+"px "+SS.formatFont(SS.conf["Font"])+"!important}#qr>form #spoilerLabel::after,button,form[name=post] input[name=email]+label,form[name=post] #com_submit+label,input[type=button],input[type=submit],#imgControls label,#stats .move,#updater span,#updater .move,#watcher .move,#stats span,.deleteform::after,.preview>label::after,.riceFile div {font-size:"+(SS.conf["Bitmap Font"]?SS.conf["Font Size"]:9)+"px!important}#qr>.move,#themeoptions #tMascot div a,#themeoptions #tThemes>div p a,#watcher>div>a:first-child,.container::before,.deleteform::before,.riceFile span,.trbtn {font-size:"+(SS.conf["Bitmap Font"]?SS.conf["Font Size"]:10)+"px!important}"+(!SS.conf["Show Board Name"]?".boardBanner .boardTitle,":"") +(!SS.conf["Show Text Board"]?".boardBanner .boardSubtitle,":"") +(SS.conf["Post Form"]!==4?"#qr>.move .close,":"") +(SS.conf["Post Form"]===3?"#qr>.move #autohide,#qr>.move .riceCheck,":"") +(SS.conf["Pages Position"]===4?".pages,":"" ) +(SS.conf["Hide Checkboxes"]?".postInfo>input[type=checkbox],.postInfo>.riceCheck,.deleteform,":"") +(SS.conf["Show/Hide Menu Entry"]?".hide_thread_button:not(.hidden_thread),.hide_reply_button:not(.stub),":".stub>.menu_button,") +(SS.conf["Custom Navigation Links"]?"#boardNavDesktop>.boardList,":"") +(SS.location.catalog?".boardBanner,":"")+".ad-plea,.mobile,[hidden],.hidden:not(.postContainer),body>hr,body>form[name=post],.navLinksBot,.navLinks a[href$='catalog'],.navLinks #search-btn,.navLinks #search-cnt,.navLinks a[href='#bottom'],#navtopright a[target=_blank],.stylechanger,#absbot,#boardNavDesktopFoot,.navSmall,.pagelist,.pages~div,.postingMode,.sideArrows:not(.hide_reply_button),#delform>hr,body>.closed>br,.board>hr:nth-last-child(2),div.center,.mFileInfo,#imageExpand,#settingsWindowLink,.menu_button>span,.hidden_thread+div.opContainer,.stub+div+div.post,#hideBtn,span#tobottom,#filters-ctrl,.toggleCatalog,#topnav~#globalMessage,#toggleMsgBtn,#first-run,#search-label,#search-label-bottom,#content>hr,#content>.navLinks,#content>#styleSwitcher,#navtopright>a[href='https://4chan-x.just-believe.in/'] {display:none!important}.btn-wrap::after,.btn-wrap::before {content:''!important}.btn-wrap {padding:0 2px}#content #settings {float:none!important;text-align:center!important}#content #info {float:none!important;position:absolute}#content>#ctrl {padding:1px 2px;position:fixed;top:0;width:100%;z-index:13}a.summary,a.summary:hover,blockquote>.abbr,#globalMessage>b,button,div,div.autohide>a,form[name=delform],form[name=post] input[name=email]+label,form[name=post] #com_submit+label,input:not(.jsColor),select,table.exif td,textarea,tr,td,td label,#navtopright>a:not(:first-child)::before,#qr>.move,#qr>form #spoilerLabel::after,#stats span,#themeoptions #toNav li label.selected,#themeoptions #toNav li label:hover,#boardNavDesktop>.boardList a.current,.deleteform::before,.deleteform::after,.summary,.preview>label::after,.reply,.replymode,#delform[action='https://sys.4chan.org/f/up.php'] .postblock,.mPagelist .pages span strong>a {color:"+SS.theme.textColor.hex+"!important}body,input,select,textarea,.replyContainer>.reply,.hidden_thread,.postInfo,.stub,.thread.stub,.riceFile,.riceCheck,.boardBanner .boardTitle,.ys_playerContainer,#qr>form>.captchaimg>img,#boardNavDesktop,#themeoptions #tMascot div,#themeoptions #tThemes .reply,#themeoptions #tNavLinks .navlink .handle {box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box}#qr {box-sizing:padding-box;-moz-box-sizing:padding-box;-webkit-box-sizing:padding-box}input::-webkit-input-placeholder,textarea::-webkit-input-placeholder {color:rgba("+SS.theme.textColor.rgb+",.4)!important}input:-moz-placeholder,textarea:-moz-placeholder {color:rgba("+SS.theme.textColor.rgb+",.4)!important}body {background:"+SS.theme.bgImg.get()+SS.theme.bgColor.hex +"!important;margin:0!important;margin-bottom:"+(SS.conf["Navigation Bar Position"]===1?23:43)+"px!important;"+(!SS.bHideSidebar && SS.conf["Sidebar Position"]!==3?"margin-"+SS.conf["Sidebar Position String"]+":265px!important;":"") +"padding:0!important}"+(!SS.bHideSidebar ?(SS.conf["Sidebar Position"] > 3?"body::before {background:rgba("+SS.theme.mainColor.shiftRGB(-18)+",.8);border-"+SS.conf["Sidebar Position oString"]+":2px solid rgba("+SS.theme.mainColor.rgb+",.9);box-shadow:"+(SS.conf["Sidebar Position"]!==5?"inset ":"")+SS.theme.brderColor.hex+" 1px 0 0,"+(SS.conf["Sidebar Position"]===4?"inset ":"")+SS.theme.brderColor.hex+" -1px 0 0;content:'';height:100%;width:262px;position:fixed;top:"+(SS.conf["Navigation Bar Position"]===1?0:-19)+"px!important;z-index:1}":"") +(SS.conf["Sidebar Position"]!==3?"body::after {background:"+SS.mascot.img.get()+";content:'';height:100%;width:"+(SS.mascot.overflow?"100%":"261px")+";"+(!SS.mascot.small?"background-size:contain;":"")+"bottom:"+(SS.conf["Navigation Bar Position"]===1?0:21)+"px!important;margin-bottom:"+SS.mascot.offset+"px;pointer-events:none;position:fixed;z-index:2;"+(SS.conf["Sidebar Position String"]==="left" && SS.mascot.flip?"-webkit-transform:scaleX(-1);-moz-transform:scaleX(-1);-o-transform:scaleX(-1);":"")+"}":""):"")+"body::after,body::before,#imgControls,"+(SS.conf["Post Form"]!==4?"#qr," :"")+"#updater,#watcher {"+SS.conf["Sidebar Position String"]+":0!important;"+SS.conf["Sidebar Position oString"]+":auto!important}"+(SS.conf["Layout"]===2?".op,":"")+"#menu,#jsmath_button,#jsMath_panel,#jsMath_float,#globalMessage,#options ul,#playerDiv,#playerListMenu,#playerListItemMenu,#playerSettings,#qr,#themeoptions #toWrapper,.subMenu.reply,.reply,.hidden_thread,.stub {border:1px solid "+SS.theme.brderColor.hex+"!important}#menu .entry:not(:last-child),#content>#ctrl,.panelHeader,"+(SS.conf["Navigation Bar Position"]===1?"#boardNavDesktop,":"")+"#imgControls {border-bottom:1px solid "+SS.theme.brderColor.hex+"!important}"+(SS.conf["Sidebar Position"] <= 3?"#imgControls,":"")+".deleteform {border-"+SS.conf["Sidebar Position oString"]+":1px solid "+SS.theme.brderColor.hex+"!important}#updater {border-right:1px solid "+SS.theme.brderColor.hex+"!important}body #delform {"+(SS.conf["Layout"]!==2 && SS.conf["Sidebar Position"] > 3?"border:1px solid rgba("+SS.theme.brderColor.rgb+",.9);"+(SS.conf["Layout"]===1?"border-"+SS.conf["Sidebar Position String"]+":0!important;":""):"")+"margin:"+(SS.conf["Layout"]!==3 ?(SS.conf["Sidebar Position String"]!=="left"?"0 0 0 "+SS.conf["Side Margin"]+"px" :"0 "+SS.conf["Side Margin"]+"px 0 0") :"0 "+(Math.min(SS.conf["Side Margin"], 40) / 2 * (SS.conf["Side Margin"] < 10?3:1))+"% 0")+";padding:0!important;position:relative;margin-top:20px!important;padding-top:0!important}.closed~#delform {margin-top:0!important}.deleteform,"+(SS.conf["Navigation Bar Position"]!==1?"#boardNavDesktop,":"")+" {border-top:1px solid "+SS.theme.brderColor.hex+"!important}#jsmath_button {bottom:auto!important;left:0!important;top:1px!important;right:auto!important}#jsMath_panel {bottom:auto!important;left:1em!important;top:1.75em!important;right:auto!important}"+(SS.conf["Layout"]!==2 && SS.conf["Sidebar Position"] > 3?".thread:not(.stub) {background:rgba("+SS.theme.mainColor.rgb+",.5)}":"")+".thread {clear:both;margin:1px"+(SS.conf["Layout"]===1?(SS.conf["Sidebar Position String"]==="right"?" 0 1px 1px":" 1px 1px 0"):(SS.conf["Layout"]===2?" 0 1px":""))+"!important;overflow:visible!important;padding:0!important;"+(SS.conf["Layout"]!==3?"padding-"+SS.conf["Sidebar Position String"]+":2px!important;":"")+"position:relative}"+(!SS.conf["Slim Threads"]?".thread {padding:0 0 1em 0!important}.thread:first-child {padding-top:0!important}.board>div:nth-last-of-type(2) {padding-bottom:0!important}":"")+"#addMascot>label::after,#qr>form>div::after,#updater div>label::after,"+(SS.conf["Layout"]!==2?".thread .op::after,":"")+".thread::after {clear:both;content:'';display:block}.op {border:0!important;padding-top:.3em!important;position:relative}a.hide_thread_button>span {"+(SS.conf["Layout"]!==2?"position:absolute;right:0;top:0;":"position:relative;top:1px;")+"}"+(SS.conf["Layout"]===1?".thread>a.hide_thread_button>span {right:2px!important}":"")+"form[name=delform] {}.thread>div>.post {"+(SS.conf["Layout"]!==2?"width:100%;":"")+"overflow:visible}.thread:last-child>.postContainer:last-child>.reply {margin-bottom:1px!important}.postInfo {padding:2px 6px!important}.sideArrows {margin-left:0!important;margin-right:0!important}"+(SS.conf["Layout"]!==3 && !(SS.conf["Sidebar Position"]===3 && SS.conf["Layout"]===2)?+(SS.conf["Layout"]===2?".op,":"")+".reply,.hidden_thread,.stub {border-"+SS.conf["Sidebar Position String"]+":0!important}":"")+".postContainer {margin:1px 0!important;position:relative}.thread .replyContainer {margin:3px 0!important}.threadContainer {border-left:1px solid rgba("+SS.theme.brderColor.shiftRGB(-16)+", .4)!important;padding-left:5px!important}"+(SS.conf["Layout"]!==2?"hr {margin:0!important}div.post:not(#qp):not([hidden]) {margin:0!important;width:100%}.reply .postInfo {line-height:18px}":"" )+".favicon {vertical-align:middle}.identifyIcon {margin:0!important;vertical-align:top}a.hide_thread_button>span,#settingsBox,.replyContainer>.reply input[type=checkbox],.replyContainer>.reply .riceCheck,.container,.hidden_thread a:first-child>span,.hide_reply_button {z-index:3!important}"+(SS.conf["Layout"]===2?".hide_reply_button {margin:0 2px}.hide_reply_button:not(.stub) {float:left}":"")+""+(SS.conf["Rounded Edges"]?"#menu,.subMenu,.stub,.post.reply,.hidden_thread {border-radius:4px!important}.thread {border-radius:"+(SS.conf["Layout"]!==3?(SS.conf["Sidebar Position"]!==2?"2px 0 0 2px":"0 2px 2px 0"):"2px")+"}form[name=delform] {border-radius:"+(SS.conf["Layout"]!==3?(SS.conf["Sidebar Position"]!==2?"4px 0 0 4px":"0 4px 4px 0"):"4px")+"}.op {border-radius:"+(SS.conf["Layout"]!==3?(SS.conf["Sidebar Position"]!==2?"2px 0 0 2px":"0 2px 2px 0"):"2px")+"}"+(SS.conf["Hide Checkboxes"]?"#qr":".deleteform")+" {border-radius:"+(SS.conf["Sidebar Position"]!==2?"3px 0 0 0":"0 3px 0 0")+"}#menu a:first-child,.subMenu a:first-child {border-radius:3px 3px 0 0}#menu a:last-child,.subMenu a:last-child {border-radius:0 0 3px 3px}#menu a:first-child:last-child,.subMenu a:first-child:last-child {border-radius:3px}":"")+".inline {background:none!important;border:0!important;overflow:visible!important}.inline div.post.reply {background:rgba("+SS.theme.mainColor.shiftRGB(-16)+",.8)!important;border:1px solid rgba("+SS.theme.brderColor.rgb+",.4)!important;padding:5px!important;border-radius:3px!important;box-shadow:rgba("+SS.theme.mainColor.shiftRGB(16)+",.9) 0 1px 3px;overflow:visible!important;position:relative;z-index:10!important;width:auto!important}"+(SS.conf["Layout"]!==2?".menu_button {position:absolute;right:2px;top:0;z-index:1!important}"+(!SS.conf["Show/Hide Menu Entry"]?".hide_thread_button:not(.hidden_thread) {top:2px!important}.hide_thread_button:not(.hidden_thread),.hide_reply_button:not(.stub) {line-height:18px;position:absolute;right:18px!important;top:0;z-index:1!important}":""):"")+".replyContainer>.reply>img {vertical-align:middle}.replyContainer>.reply>span {line-height:16px!important}.replyContainer>.reply,.stub>a:first-child,.hidden_thread>a:first-child, {padding:5px!important;"+(SS.conf["Layout"]!==2?"width:100%;":(SS.conf["Sidebar Position"]!==2?"margin-right:1px!important;":""))+"border-radius:"+(SS.conf["Layout"]!==3 && !(SS.conf["Sidebar Position"]!==2 && SS.conf["Layout"]===2) ?(SS.conf["Sidebar Position"]!==2?"2px 0 0 2px":"0 2px 2px 0"):"2px")+"}.replyContainer>.post.highlight,.replyContainer>.post:target,.highlightPost,.qphl {background:rgba("+SS.theme.mainColor.shiftRGB(4, true)+",.9)!important;border:1px solid "+SS.theme.linkColor.hex+"!important}.filter_highlight>div.opContainer,.filter_highlight>.reply {box-shadow:inset 5px 0 rgba("+SS.theme.sageColor.rgb+",.5)!important}.stub {"+(SS.conf["Layout"]===2?"display:inline-block!important;":"")+"margin:1px 0!important;padding:0!important}.thread.stub {margin:1px 0!important;padding:0 "+(SS.conf["Sidebar Position"]!==2?"0 0 1px":"1px 0 0")+"!important}.hidden_thread>a:first-child,.stub>a:first-child {display:"+(SS.conf["Layout"]===2?"inline-":"")+"block;line-height:16px!important;padding:7px}.container {margin-left:2px}.container>a {color:"+SS.theme.blinkColor.hex+"!important}input[type=checkbox]:active,input[type=checkbox]:focus,.qphl {outline:none!important}.qphl {box-shadow:none!important}#qp,#post-preview {background:rgb("+SS.theme.mainColor.shiftRGB(-8)+")!important;border:1px solid rgba("+SS.theme.linkColor.rgb+",.4)!important;margin:0 10px!important;max-width:65%;padding:5px;position:fixed!important;z-index:16!important;border-radius:3px}#qp .reply {background:none!important;border:none!important;width:auto!important}a.summary {display:inline-block;line-height:16px;margin:-4px 10px 0!important;padding:0 6px;border-radius:3px}.deleteform {bottom:"+(SS.conf["Navigation Bar Position"]===1?0:20)+"px!important;height:22px;overflow:hidden;padding:1px 2px 0 18px!important;position:fixed;"+(SS.conf["Sidebar Position"]===3?"right:"+(SS.conf["Post Form"]===4?0:262) +"px;" :SS.conf["Sidebar Position String"]+":264px;")+"width:0;white-space:nowrap;z-index:"+(SS.conf["Sidebar Position"]===3?11:5)+"!important;-webkit-transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out}.deleteform:hover {"+(SS.conf["Sidebar Position"]!==2?"padding-left:2px!important;"+(SS.conf["Sidebar Position"]===3?"padding-right:4px!important;":"") :"padding-left:0!important;padding-right:3px!important;")+"width:238px;-webkit-transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out}.deleteform::before {content:'X';display:inline-block;position:absolute;left:0;top:0;width:20px;height:24px;text-align:center;padding-top:1px}.deleteform:hover::before {overflow:hidden;white-space:nowrap;padding:0;width:0}.deleteform::after {content:'FILE ONLY';position:absolute;bottom:0;right:"+(SS.conf["Sidebar Position"]!==2?120:122)+"px;line-height:24px}.deleteform * {visibility:visible!important}.deleteform input[type=checkbox],.deleteform .riceCheck {margin:2px!important;position:absolute;right:105px;bottom:4px!important;top:auto!important}.deleteform input:not([type=checkbox]) {height:20px!important;margin:0 1px 0 0!important}.deleteform input[type=password] {margin-left:4px!important;width:138px!important}.deleteform:hover input[type=password] {margin-left:0!important}blockquote.postMessage {line-height:16px;margin:0!important;padding:"+(SS.conf["Slim Replies"]?"4px 16px":"10px 15px 12px 15px")+"!important}blockquote.postMessage>div[style] {border-color:"+SS.theme.sageColor.hex+"!important}.fileThumb>img {position:relative;z-index:1}.fileThumb>img+img {background-color:rgba("+SS.theme.mainColor.rgb+",.01)!important;z-index:10!important}img[alt=Closed],img[alt=Sticky],a[href='.././'],a.hide_thread_button>span,#qf-ctrl,#info a[href='./'],#imageType+label,#navtopright>a,#toggleMsgBtn,.close,.remove,.favicon,.menu_button,.icon.closeIcon,.mobileCatalogLink>a,.hide_reply_button:not(.stub)>a:first-child>span,.hide_thread_button>span,.hidden_thread a:first-child>span,.stub>a:first-child>span {background-color:transparent!important;background-position:center!important;background-repeat:no-repeat;display:inline-block;height:0!important;padding-top:16px!important;text-indent:-9999px!important;vertical-align:bottom;width:16px!important}img[alt=Closed] {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.closedThread+"\")!important}img[alt=Sticky] {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.stuckThread+"\")!important}#themeoptionsLink {background-image:url(\"data:image/svg+xml,"+SS.theme.icons._4chanSS+"\")!important}.settingsWindowLink {background-image:url(\"data:image/svg+xml,"+SS.theme.icons._4chanX+"\")!important}.settingsWindowLinkBot {background-image:url(\"data:image/svg+xml,"+SS.theme.icons._4chanSP+"\")!important;float:left!important;position:relative;top:2px}#toggleMsgBtn.collapseIcon,a.hide_thread_button>span,.hide_reply_button:not(.stub)>a:first-child>span {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.hideButton+"\")!important}#toggleMsgBtn.expandIcon,.stub>a:first-child>span,.hidden_thread a:first-child>span {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.showButton+"\")!important}.icon.closeIcon,.close,.remove {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.closeButton+"\")!important}.favicon[src^='data'] {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.notWatched+"\")!important}.favicon[src$='ico'] {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.watchedIco+"\")!important}.mobileCatalogLink {position:fixed;z-index:13}.mobileCatalogLink>a {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.catalog+"\")!important;padding:16px 1px 0!important;position:fixed;top:"+(SS.conf["Navigation Bar Position"]===1?23:2)+"px;"+SS.conf["Sidebar Position String"]+":135px}.menu_button {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.menuButton+"\")!important;vertical-align:baseline!important;padding-top:12px!important;-webkit-transform:rotate(90deg);-moz-transform:rotate(90deg);-o-transform:rotate(90deg)}#qf-ctrl {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.search+"\")!important;left:20px;position:absolute}#qf-cnt {left:38px;position:absolute}#boardNavDesktop>.boardList a {margin:0 1px 0 2px!important}"+(!SS.conf["Bitmap Font"]?"#boardNavDesktop>.boardList a.current {font-size:"+SS.conf["Font Size"]+"px!important;font-weight:700}":"i {font-style:normal!important}body .exlinks-options-title,body .exlinks-options-subtitle {font-size:"+SS.conf["Font Size"]+"px!important}")+".inline .menu_button {opacity:1!important;position:static!important;vertical-align:top!important}"+(SS.conf["Layout"]!==2?".menu_button,.hide_reply_button:not(.stub) {right:2px;opacity:0!important;position:absolute;top:0;-webkit-transition:all .4s ease-in-out!important;-moz-transition:all .4s ease-in-out!important;-o-transition:all .4s ease-in-out!important}.opContainer .menu_button,.postContainer:hover .hide_reply_button,.postContainer:hover .menu_button {opacity:1!important}":"")+"a[href='.././'],#qf-ctrl,#info a[href='./'],#imageType+label,#navtopright>a,a.hide_thread_button>span,.close,.remove,.mobileCatalogLink>a,.hide_reply_button:not(.stub)>a:first-child>span,.hidden_thread a:first-child>span,.stub>a:first-child>span {margin:0!important;opacity:.5;-webkit-transition:all .1s ease-in-out;-moz-transition:all .1s ease-in-out;-o-transition:all .1s ease-in-out}a[href='.././']:hover,#qf-ctrl:hover,#info a[href='./']:hover,#imageType+label:hover,#navtopright>a:hover,#imageType+label:hover,#imageType+label.imgExpanded,a.hide_thread_button>span:hover,.close:hover,.remove:hover,.mobileCatalogLink>a:hover,.hide_reply_button:not(.stub)>a:first-child>span:hover,.hide_thread_button a:first-child>span:hover,.hidden_thread:hover>span:hover,.stub>a:first-child>span:hover {opacity:.95}textarea,button,input:not([type=checkbox]):not([type=radio]),select,#qr>form>.captchaimg>img,.riceFile {border:1px solid "+SS.theme.inputbColor.hex+"!important}button,input[type=button],input[type=file],input[type=password],input[type=submit],input[type=text]:not(.jsColor),input.field,select,textarea,.riceFile,#options input {background:rgba("+SS.theme.inputColor.rgb+",.9)!important}button,input:not(.jsColor),textarea,.riceFile input~div {-webkit-transition:background .2s,box-shadow .2s;-moz-transition:background .2s,box-shadow .2s;-o-transition:background .2s,box-shadow .2s}button:hover,input[type=button]:hover,input[type=password]:hover,input[type=submit]:hover,input[type=text]:not(.jsColor):not([disabled]):hover,input.field:hover,select:hover,textarea:hover,#options input:hover,.riceFile input:hover+div,.riceFile input:focus+div,.riceFile div.focus {background:rgba("+SS.theme.inputColor.hover+",.9)!important}input[type=password]:hover,input[type=text]:not([disabled]):hover,input.field:hover,select:hover,textarea:hover,#options input:not[type=checkbox]:hover {box-shadow:inset rgba(0,0,0,.2) 0 1px 2px}input[type=password]:focus,input[type=text]:focus,input.field:focus,select:focus,textarea:focus,#options input:focus {box-shadow:inset rgba(0,0,0,.2) 0 1px 2px}textarea:focus,input[type=text]:not(.jsColor):not([disabled]):focus,input[type=password]:focus,input.field:focus,#options input:focus {background:rgba("+SS.theme.inputColor.hover+",.9)!important}button,input[type=button],input[type=submit],.riceFile div {height:22px!important;margin-top:1px!important;padding:0!important;text-align:center!important;vertical-align:top;width:50px}input[type=checkbox],input[type=radio],.riceCheck {background:rgba("+SS.theme.inputColor.rgb+",.9)!important;border:1px solid rgb("+SS.theme.inputbColor.rgb+")!important;display:inline-block;height:12px!important;margin:3px;position:relative;vertical-align:top;width:12px!important;border-radius:2px!important;-webkit-appearance:none;-webkit-transition:background .1s;-moz-transition:background .1s;-o-transition:background .1s}input[type=radio] {border-radius:10px!important}input[type=checkbox],.riceCheck {box-shadow:rgba("+SS.theme.mainColor.shiftRGB(32)+",.3) 0 1px}input[type=checkbox]:hover,input[type=radio]:hover,.riceCheck:hover {background:rgba("+SS.theme.inputColor.hover+",.9)!important}input[type=checkbox]:checked,input[type=checkbox]:checked+.riceCheck {box-shadow:inset rgba(0,0,0,.2) 0 1px 2px,rgba("+(SS.theme.mainColor.isLight?"255,255,255":"100,100,100") +",.6) 0 1px}input[type=radio]:checked {background:rgba("+SS.theme.inputColor.shiftRGB(40, true)+",.9)!important;box-shadow:inset rgba("+SS.theme.inputColor.shiftRGB(100, true)+",.2) 0 0 1px!important}input[type=checkbox]::before,input[type=radio]::before,input[type=checkbox]+.riceCheck::before {content:'';display:block;height:8px;margin:1px;opacity:0;width:8px;-webkit-transition:opacity .2s ease-in-out;-moz-transition:opacity .2s ease-in-out;-o-transition:opacity .2s ease-in-out}input[type=checkbox]:checked::before,input[type=radio]:checked::before,input[type=checkbox]:checked+.riceCheck::before {opacity:1}input[type=checkbox]:checked::before,input[type=checkbox]:checked+.riceCheck::before {background:"+SS.theme.checkMark.get()+"!important}input[type=radio]:checked::before {background:"+SS.theme.radioCheck.get()+" transparent!important}input[type=checkbox]:active,input[type=radio]:active,.riceCheck:active {background:rgba("+SS.theme.inputColor.shiftRGB(40, true)+",.9)!important;box-shadow:inset rgba("+SS.theme.inputColor.shiftRGB(100, true)+",.4) 0 0 3px,rgba("+SS.theme.mainColor.shiftRGB(64)+",.6) 0 1px!important}.replyContainer>.reply input[type=checkbox],.replyContainer>.reply .riceCheck, {margin-left:0!important;position:relative}span.filesize~input[type=checkbox],span.filesize~.riceCheck {top:2px}textarea,.navLinks {margin:0!important}.boardBanner {"+(SS.conf["Sidebar Position"]!==3?"height:100%;":"")+""+SS.conf["Sidebar Position String"]+":1px;pointer-events:none;text-align:center;top:"+(SS.conf["Navigation Bar Position"]===1?43:22)+"px;z-index:1}"+(SS.conf["Fixed Logo Position"]?".boardBanner,.boardBanner img,.boardBanner .boardTitle {width:26"+ (SS.conf["Sidebar Position"] > 3?0:1) +"px!important}.boardBanner,.boardBanner #bBanner {position:fixed}.boardBanner #bBanner {  height:86.3333px}.boardBanner .boardTitle {top:64px!important;position:absolute!important}.boardBanner .boardSubtitle {top:98px!important;left:0;pointer-events:auto;position:absolute!important}.boardBanner img {top:-1px}":".boardBanner #bBanner {display:inline-block;height:"+(SS.conf["Show Logo"]?100:40)+"px;position:relative}")+".boardBanner img {height:auto!important;margin:0!important;position:relative;opacity:.5;z-index:1}"+(SS.conf["Show Logo"] && SS.conf["Show Logo Reflection"]?".boardBanner #bBanner::after {background-image:-moz-element(#banner);bottom:-100%;content:'';left:0;mask:url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzdmcgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPg0KCTxkZWZzPg0KCQk8bGluZWFyR3JhZGllbnQgZ3JhZGllbnRVbml0cz0ib2JqZWN0Qm91bmRpbmdCb3giIGlkPSJncmFkaWVudCIgeDI9IjAiIHkyPSIxIj4NCgkJCTxzdG9wIHN0b3Atb2Zmc2V0PSIwIi8+DQoJCQk8c3RvcCBzdG9wLWNvbG9yPSJ3aGl0ZSIgb2Zmc2V0PSIxIi8+DQoJCTwvbGluZWFyR3JhZGllbnQ+DQoJCTxtYXNrIGlkPSJtYXNrIiBtYXNrVW5pdHM9Im9iamVjdEJvdW5kaW5nQm94IiBtYXNrQ29udGVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeD0iMCIgeT0iMCIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSI+DQoJCQk8cmVjdCB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWRpZW50KSIvPg0KCQk8L21hc2s+DQoJPC9kZWZzPg0KPC9zdmc+#mask');opacity:.6;position:absolute;right:0;top:100%;z-index:1;-moz-transform:scaleY(-1);pointer-events:none}.boardBanner img {-webkit-box-reflect:below 0 -webkit-gradient(linear,left top,left bottom,from(transparent),color-stop(.1,transparent),to(rgba(255,255,255,.5)))}":"")+".boardBanner .boardTitle {cursor:default!important;display:block;font-family:'PT Sans Narrow',sans-serif!important;font-size:28px!important;font-weight:700!important;height:36px;padding:0 10px;position:relative;text-align:center;top:-25px;width:100%;z-index:3}#navlinks a,.boardBanner .boardTitle {text-shadow:"+SS.theme.mainColor.hex+" -1px -1px, "+SS.theme.mainColor.hex+" 1px -1px,"+SS.theme.mainColor.hex+" -1px 1px, "+SS.theme.mainColor.hex+" 1px 1px,"+SS.theme.mainColor.hex+" -1px 0, "+SS.theme.mainColor.hex+" 1px 0,"+SS.theme.mainColor.hex+" 0 -1px, "+SS.theme.mainColor.hex+" 0 1px,rgba(0,0,0,.6) 0 2px 4px, rgba(0,0,0,.6) 0 0 10px!important}.boardBanner .boardTitle::selection {background:transparent!important}.boardBanner .boardTitle::-moz-selection {background:transparent!important}.boardBanner .boardSubtitle {position:relative;  top:-25px;text-shadow:"+SS.theme.mainColor.hex+" -1px -1px,"+SS.theme.mainColor.hex+" 1px -1px,"+SS.theme.mainColor.hex+" -1px 1px,"+SS.theme.mainColor.hex+" 1px 1px,rgba(0,0,0,.2) 0 0 10px,#000 0 1px 5px,#000 0 -1px 5px;width:100%;z-index:3}.boardBanner .boardSubtitle>a {text-transform:none!important;text-shadow:"+SS.theme.mainColor.hex+" -1px -1px,"+SS.theme.mainColor.hex+" 1px -1px,"+SS.theme.mainColor.hex+" -1px 1px,"+SS.theme.mainColor.hex+" 1px 1px,rgba(0,0,0,.2) 0 0 10px,#000 0 1px 5px,#000 0 -1px 5px!important}div.autohide>a[title='Auto-hide dialog box'] {text-decoration:underline!important}.op,.thread.hidden {display:block!important}.op .filesize {display:inline-block!important;margin:2px "+(SS.conf["Layout"]!==2?6:0)+"px!important}body>span[style]~form .op .filesize {padding-left:6px!important}.inline .filesize {margin:2px 0!important}.filesize span:not([class]) {font-size:0!important;visibility:hidden}.filesize span:not([class])::after {content:attr(title);visibility:visible}input:not([type=checkbox]):not([type=radio]),button,select,textarea {-webkit-appearance:none;-o-appearance:none}#options .move,"+(SS.conf["Post Form"]!==4?"#qr>.move,":"")+"#stats .move,#updater .move,#watcher .move {cursor:default!important}#watcher {background:none!important;bottom:auto!important;border:0!important;padding-top:0!important;position:fixed!important;max-width:"+(SS.conf["Auto Hide Thread Watcher"]?200:261)+"px!important;min-width:"+(SS.conf["Auto Hide Thread Watcher"]?0:261)+"px!important;text-align:"+SS.conf["Sidebar Position String"]+";top:"+(SS.conf["Navigation Bar Position"]===1?41:21)+"px!important;z-index:4!important}"+(SS.conf["Auto Hide Thread Watcher"]?"#watcher.show,#watcher:hover {padding-bottom:16px;max-width:261px!important;min-width:261px!important}":"")+"#watcher .move,#imgControls .preload,#prefetch {display:inline-block;margin:0 5px;padding:2px 5px!important;text-align:center;text-decoration:none!important;border-radius:0 0 3px 3px}#watcher>div:not(.move) {display:none;line-height:15px;margin:0 5px;"+(SS.conf["Auto Hide Thread Watcher"]?"max-height:0px;max-width:0!important;":"max-width:241px!important;")+"padding:1px 5px!important;text-align:left!important;-webkit-transition:max-height .1s ease-in-out;-moz-transition:max-height .1s ease-in-out;-o-transition:max-height .1s ease-in-out}#watcher>div:not(.move):nth-of-type(2) {margin-top:3px;padding-top:5px!important;border-top-left-radius:3px;border-top-right-radius:3px}#watcher>div:not(.move):last-child {padding-bottom:5px!important;border-bottom-left-radius:3px;border-bottom-right-radius:3px}#watcher.show>div:not(.move),#watcher"+(SS.conf["Auto Hide Thread Watcher"]?":hover":"")+">div:not(.move) {display:block;max-height:16px;max-width:241px!important}#overlay,#overlay2 {background:rgba(0,0,0,.5);position:fixed;top:0;left:0;height:100%;width:100%;text-align:center;z-index:999!important}#overlay::before,#overlay2::before {content:'';display:inline-block;height:100%;vertical-align:middle}#addMascot,#addTheme,#themeoptions {border:0!important;display:inline-block;position:relative;text-align:right!important;width:600px;padding:5px;vertical-align:middle;border-radius:5px!important}#themeoptions>div {padding:5px}.trbtn {color:"+SS.theme.jlinkColor.hex+"!important;display:inline-block;line-height:18px;margin:0 2px;min-width:40px;padding:2px 10px;text-align:center;background:-webkit-linear-gradient(top,rgba("+SS.theme.mainColor.shiftRGB(20)+",.9),rgba("+SS.theme.mainColor.rgb+",.9));background:-moz-linear-gradient(top,rgba("+SS.theme.mainColor.shiftRGB(20)+",.9),rgba("+SS.theme.mainColor.rgb+",.9));background:-o-linear-gradient(top,rgba("+SS.theme.mainColor.shiftRGB(20)+",.9),rgba("+SS.theme.mainColor.rgb+",.9));border-radius:3px;box-shadow:rgba(0,0,0,.3) 0 0 2px}.trbtn:hover,#selectImage>input[type=file]:hover+.trbtn {color:"+SS.theme.jlinkColor.hex+"!important;background:rgba(60,60,60,.9);background:-webkit-linear-gradient(top,rgba("+SS.theme.mainColor.shiftRGB(40)+",.9),rgba("+SS.theme.mainColor.rgb+",.9));background:-moz-linear-gradient(top,rgba("+SS.theme.mainColor.shiftRGB(40)+",.9),rgba("+SS.theme.mainColor.rgb+",.9));background:-o-linear-gradient(top,rgba("+SS.theme.mainColor.shiftRGB(40)+",.9),rgba("+SS.theme.mainColor.rgb+",.9))}.trbtn:active,#selectImage>input[type=file]:active+.trbtn {box-shadow:inset rgba(0,0,0,.3) 0 0 2px,rgba(0,0,0,.3) 0 0 2px}.trbtn-small {padding:2px 5px;min-width:30px}#themeoptions #toNav {list-style:none;margin:0;padding:0;position:absolute;top:-26px}#themeoptions #toNav li {float:left;margin:0;padding:0}#themeoptions #toNav li label {background:rgba("+SS.theme.mainColor.shiftRGB(-10)+",.9);color:#888!important;display:block;height:16px;margin:0 2px;padding:5px 10px;text-align:center;width:75px;border-radius:5px 5px 0 0;-webkit-transition:all .1s ease-in-out;-moz-transition:all .1s ease-in-out;-o-transition:all .1s ease-in-out}#SSVersion {opacity:.5;padding-right:5px}#themeoptions #toWrapper {background:rgb("+SS.theme.mainColor.shiftRGB(-12)+");box-shadow:inset rgba(0,0,0,.3) 0 0 5px,rgba("+SS.theme.mainColor.shiftRGB(32)+",.6) 0 1px 3px;border-radius:5px}#themeoptions #toWrapper,#themeoptions #toWrapper>div {height:400px}#themeoptions #toWrapper>div {overflow:auto}#themeoptions #toWrapper>[name=toTab]:not(:checked)+div {display:none}#updater label,#themeoptions #tMain .mOption,#themeoptions #tNavLinks .navlink {display:block;border-bottom:1px solid rgba("+SS.theme.mainColor.rgb+",.3);border-top:1px solid rgba(0,0,0,.1);height:20px;padding:0 3px;vertical-align:top}.deleteform::before,#themeoptions #tMain .mOption span {float:left;line-height:20px!important}#themeoptions #tMain .mOption:first-child,#updater div:first-child label {border-top:0!important}#themeoptions #tMain .mOption:last-child,#updater div:nth-last-of-type(3) label {border-bottom:0!important}#themeoptions #tMain select[name=Font] option {max-width:150px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}#themeoptions #tMain .subOption::before {border-bottom:1px solid rgba(0,0,0,.1);border-left:1px solid rgba(0,0,0,.1);content:'';display:inline-block;float:left;margin-right:2px;height:50%;width:6px}#themeoptions #tMain .subOption {margin-left:16px}#themeoptions #tThemes>div {opacity:.5;-webkit-transition:all .1s;-moz-transition:all .1s;-o-transition:all .1s}#themeoptions #tThemes>div:hover,#themeoptions #tThemes>div.selected {opacity:1}#themeoptions #tThemes .reply {margin:2px 0!important;padding:2px!important;position:relative;text-align:left;width:100%;border-radius:2px!important}#themeoptions #tThemes>div p {bottom:4px;right:2px;margin:0;opacity:0;position:absolute;z-index:3}#themeoptions #tThemes>div:hover p {opacity:1}#themeoptions #tThemes>div p a {display:inline-block;margin:0 2px;padding:2px 5px;text-align:center;width:50px;border-radius:3px}#themeoptions #tThemes>div h3 {bottom:0;font-size:32px!important;margin:0!important;opacity:0;position:absolute;right:100%;-webkit-transition:all .3s;-moz-transition:all .3s;-o-transition:all .3s}#themeoptions #tThemes>div.selected h3 {opacity:1;right:3px;z-index:1}#themeoptions #tMascot {text-align:center}#themeoptions #toWrapper>div>p {bottom:10px;left:10px;position:absolute}#themeoptions #toWrapper>div>p {margin:0}#themeoptions #tMascot div {background-position:center top!important;background-repeat:no-repeat!important;background-size:cover!important;display:inline-block;height:257px;margin:2px;opacity:.75;position:relative;width:185px;border-radius:10px;-webkit-transition:all .1s;-moz-transition:all .1s;-o-transition:all .1s}#themeoptions #tMascot div:hover {opacity:1}#themeoptions #tMascot div.selected {background-color:rgba("+SS.theme.linkColor.rgb+",.6)!important;opacity:1;box-shadow:inset rgba(0,0,0,.15) 0 0 15px, rgba("+SS.theme.linkColor.rgb+",.6) 0 0 2px}#themeoptions #tMascot div a {position:absolute;top:0;padding:5px 8px;background:rgba(0,0,0,.3)}#themeoptions #tMascot div a:not([href]):hover {background:rgba(0,0,0,.5)}#themeoptions #tMascot div a[title=Delete],#themeoptions #tMascot div a[title=Hide] {left:0;border-radius:10px 0 10px 0}#themeoptions #tMascot div a[title=Edit] {right:0;border-radius:0 10px 0 10px}#themeoptions #tNavLinks .navlink>*:not(.handle) {position:relative;z-index:1}#themeoptions #tNavLinks .navlink {height:24px;padding-top:1px;position:relative;-webkit-transition:all .2s;-moz-transition:all .2s;-o-transition:all .2s}#themeoptions #tNavLinks .moving {opacity:.5;-webkit-transform:scale(.95);-moz-transform:scale(.95);-0-transform:scale(.95)}#themeoptions #tNavLinks .over:not(.moving) {border-top:4px double "+SS.theme.brderColor.hex+"}#themeoptions #tNavLinks .moving~.over {border-bottom:4px double "+SS.theme.brderColor.hex+";border-top:1px solid rgba(0,0,0,.1)}#themeoptions #tNavLinks .navlink .handle {border-left:16px solid rgb("+SS.theme.brderColor.shiftRGB(8, true)+");cursor:move;height:26px;left:0;position:absolute;top:0;width:100%;z-index:0}#themeoptions #tNavLinks label {margin:0 5px;position:relative;top:1px}#themeoptions #tNavLinks label:first-child {float:left;margin-left:18px}#themeoptions #tNavLinks label:first-child>input[type=text] {width:130px}#themeoptions #tNavLinks label>input[type=text] {width:180px}#themeoptions label>input[type=checkbox],#themeoptions label>.riceCheck {margin:4px 2px 0!important;vertical-align:bottom!important}#themeoptions span>select,#themeoptions span>input[type=text] {width:125px}#addMascot input[type=text],#addTheme input[type=text],#themeoptions input[type=text],#themeoptions select {height:20px;margin:0!important;padding:1px 3px!important}#themeoptions select {padding:1px 1px 1px 0!important}#themeoptions textarea {background:transparent!important;border:0!important;height:100%!important;width:100%!important;resize:none}#addMascot {width:350px!important}#addMascot>div {padding:5px}#addMascot>label {display:block}#addMascot>label>span,#addTheme>label>span {float:left;line-height:22px;padding-left:5px}#addMascot>label>input[type=text],#addMascot>label>select,#addMascot>label>textarea {margin-top:1px!important;width:200px}#addMascot>label>select,#addTheme>label>select {height:20px}#addMascot select {margin-right:1px!important;position:relative;top:-1px}#addMascot select[name=mPosition],#addMascot input[name=mOffset][type=text] {width:80px}#addMascot>label>textarea {height:20px;line-height:20px;overflow:hidden;resize:none}#addMascot>label>input[type=checkbox],#addMascot>label>.riceCheck {margin-top:5px}#selectImage {float:left;height:24px!important;margin-top:-2px;padding-top:2px}a[name=clearIMG] {display:none;float:left;opacity:0;-webkit-transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out}input[name=customIMGB64]+a[name=clearIMG] {display:inline-block;opacity:1}#addTheme {text-align:left!important;width:500px!important}#addTheme>label {display:inline-block;text-align:right;width:50%}#addTheme>label#customCSS {width:100%}#addTheme>label#customCSS>textarea {height:100px;resize:vertical;width:100%}#addTheme>label>input[type=text],#addTheme>label>select {width:100px}#addTheme>div {margin-top:.6em;text-align:right}#themeoptions,#options.dialog,#themeoptions #toNav li label.selected,#themeoptions #toNav li label:hover,#addMascot,#addTheme {background:rgba("+SS.theme.mainColor.rgb+",.98)!important;text-align:center}#options.dialog,#themeoptions,#addMascot,#addTheme {margin:0 auto!important;text-align:left;box-shadow:rgba(0,0,0,.6) 0 0 10px;border-radius:5px}#options {width:600px!important;z-index:1000!important}#options hr {margin:3px 0!important}#options button {vertical-align:baseline!important;width:auto!important}#options input {width:150px}#options ul {margin-right:5px;padding:2px 5px!important;border-radius:5px;box-shadow:inset rgba("+(SS.theme.mainColor.isLight?"255,255,255":"155,155,155")+",.3) 0 0 5px}#imgControls {height:20px;position:fixed!important;top:"+(SS.conf["Navigation Bar Position"]===1?21:0)+"px;width:"+(SS.conf["Sidebar Position"] < 3?142:143)+"px!important;padding-"+SS.conf["Sidebar Position String"]+":119px!important;z-index:13}#imgControls #imageType,#boardNavDesktop>select {background:none!important;border:0!important;line-height:16px!important;margin:0!important;height:20px!important;padding:0 1px 1px 0;width:77px!important;"+(SS.conf["Sidebar Position String"]==="left"?"float:right;":"")+"}#boardNavDesktop>select {padding:3px 4px!important;width:auto!important}#imageType+label {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.imgExpand+"\")!important;float:"+SS.conf["Sidebar Position String"]+";margin:2px 1px 1px!important;overflow:hidden}#imageType+label.imgExpanded {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.imgContract+"\")!important}#imgControls .preload,label#prefetch {height:15px;"+SS.conf["Sidebar Position oString"]+":24px;padding:1px 5px 3px!important;position:absolute}label#prefetch {bottom:auto!important;line-height:16px!important;position:fixed!important;"+SS.conf["Sidebar Position String"]+":130px!important;"+SS.conf["Sidebar Position oString"]+":auto!important;top:"+(SS.conf["Navigation Bar Position"]===1?42:21)+"px;z-index:13!important}form[name=post] input[name=email]+label,form[name=post] #com_submit+label,#qr>form #spoilerLabel::after,#imgControls label,##boardLinks,#themeoptions #toNav li label,#watcher .move,.preview>label::after {line-height:16px}#stats .move,#updater span,#updater .move {line-height:20px}#updater {text-align:"+SS.conf["Sidebar Position String"]+"!important;"+SS.conf["Sidebar Position oString"]+":auto!important;"+SS.conf["Sidebar Position String"]+":0!important;border-top:0!important;border-"+SS.conf["Sidebar Position String"]+":0!important;border-"+SS.conf["Sidebar Position oString"]+":1px solid "+SS.theme.brderColor.hex+"!important;border-bottom:1px solid "+SS.theme.brderColor.hex+"!important;position:fixed!important;bottom:auto!important;top:"+(SS.conf["Navigation Bar Position"]===1?21:0)+"px;height:20px;line-height:20px;overflow:hidden;padding:0 3px;z-index:13!important;width:112px}#updater:hover {height:auto!important;padding-bottom:3px;width:160px;z-index:18!important}#updater #count.new {background-color:transparent!important}#updater label {line-height:20px!important;text-align:left!important}#updater input,#updater .riceCheck {float:right}#updater input:not([type=checkbox]) {margin:1px!important}#updater input[type=button] {margin-right:3px!important;padding:0 5px!important;width:auto!important}#updater input[type=text] {height:19px!important;width:40px!important}#updater:not(:hover) {background:transparent!important}#stats {bottom:auto!important;height:20px;line-height:20px;top:"+(SS.conf["Navigation Bar Position"]===1?21:0)+"px!important;"+SS.conf["Sidebar Position String"]+":13px!important;"+SS.conf["Sidebar Position oString"]+":auto!important;text-align:"+SS.conf["Sidebar Position oString"]+";width:100px;z-index:13!important}#navlinks {"+SS.conf["Sidebar Position String"]+":205px!important;"+SS.conf["Sidebar Position oString"]+":auto!important;top:"+(SS.conf["Navigation Bar Position"]===1?43:22)+"px!important;text-align:left;height:20px;width:50px;z-index:13!important}#navlinks>a {font-size:12px!important}#ihover {padding-"+(SS.conf["Navigation Bar Position"]===2?"bottom":"top" )+":21px;z-index:14!important}#playerDiv {padding:2px}#playerStyleSettingsButton {left:2px!important}#playerClose {right:2px!important}body>center:nth-of-type(2) {position:relative}*[style='color: red;'] {color:"+SS.theme.sageColor.hex+"!important}#globalMessage {margin-"+SS.conf["Sidebar Position oString"]+":10px;overflow:hidden;padding:3px 10px;position:fixed;"+(SS.location.catalog?"right:0":SS.conf["Sidebar Position String"]+":5")+"px!important;white-space:nowrap;z-index:14;top:-5000px}#globalMessage::before {content:url(\"data:image/svg+xml,"+SS.theme.icons.announcement+"\")!important;display:block;height:24px!important;width:16px!important;opacity:.5;position:fixed;"+SS.conf["Sidebar Position String"]+":151px;top:"+(SS.conf["Navigation Bar Position"]===1?23:2)+"px}#globalMessage:hover::before {opacity:.95}#globalMessage:hover {top:"+(SS.conf["Navigation Bar Position"]===1?45:25)+"px;white-space:normal;border-radius:3px}body>.closed {height:20px;line-height:20px;padding:0!important}#boardNavDesktop {"+(SS.conf["Navigation Bar Position"]===1?"top:0!important;bottom:auto!important;":"bottom:0!important;top:auto!important;")+"min-height:21px;padding:1px 155px 0!important;left:0!important;overflow:hidden;position:fixed!important;text-align:center;width:100%!important;z-index:14!important}#boardLinks {line-height:18px}#navtop,#navtopright {float:none!important;height:20px}#navtop a {text-shadow:rgba(0,0,0,.2) 0 0 3px}#navtop>div {line-height:20px}#navtopright {line-height:18px;position:absolute;right:5px!important;top:0}"+(!SS.conf["Custom Navigation Links"]?"#navtop {bottom:0;display:inline-block!important;height:20px;padding:3px 6px 6px;position:relative;width:500px;-webkit-transition:all .1s ease-in-out;-moz-transition:all .1s ease-in-out;-o-transition:all .1s ease-in-out}#navtop::before {color:"+SS.theme.jlinkColor.hex+";content:'Navigation';display:block;font-size:"+SS.conf["Small Font Size"]+"px;line-height:14px!important}#navtop:hover {background:rgb("+SS.theme.mainColor.rgb+");bottom:48px;height:64px;line-height:0!important;border-radius:3px;box-shadow:rgba(0,0,0,.2) 0 0 5px}#navtop>a {padding:2px!important}#navtop>a,#navtop>span {display:inline!important;line-height:20px}":"")+(SS.conf["Pages Position"]!==4 ?(SS.conf["Pages Position"]===1?"select#pagesDrop {left:0;position:absolute;top:0}":".mPagelist.mobile {background:transparent!important;"+(SS.conf["Navigation Bar Position"]===1?"top":"bottom")+":0!important;display:block!important;height:21px;line-height:18px;left:0!important;margin:0!important;padding:0 5px;position:fixed!important;width:auto!important;z-index:15}.mPagelist .pages {display:-webkit-box!important;display:-moz-box!important;display:box!important;height:20px;padding:0!important;text-align:center;-webkit-box-align:center!important;-moz-box-align:center!important;box-align:center!important}.mPagelist .pages span a {padding:2px 3px}"):"")+"#delform div.reply.lastmuInfo {background: none !important;border: none !important;padding: 0px !important;padding-top: 0px !important;padding-left: 0px !important}div.reply.lastmuInfo p {display: inline-block !important}#lastmuSettingsWindowLink {display: block !important;color: transparent !important;background-repeat: no-repeat !important;float: left !important;opacity: 0.5 !important;background-image: url(\"data:image/svg+xml,"+SS.theme.icons.lastmu+"\") !important;font-size: 0px !important}#lastmuSettingsWindowLink:hover {opacity: 1.0 !important}#lastmuSettings .pointer {opacity: 0}#lastmuSettings .panelHeader>span::after {content: 'x';font-size: 12px;position: relative !important;bottom: 6px;right: 10px;pointer-events: none}.riceFile,#selectImage {height:22px;line-height:22px;overflow:hidden;position:relative}.riceFile input[type=file],#selectImage input[type=file] {cursor:pointer!important;position:absolute;top:0;left:0;z-index:1;opacity:0;width:auto!important;-webkit-transform:scale(20) translateX(-30%);-moz-transform:scale(20) translateX(-30%);-o-transform:scale(20) translateX(-30%)}.riceFile div {display:inline-block;line-height:20px!important;margin:0!important;padding:0 10px!important}.riceFile span {display:inline-block;max-width:173px;overflow:hidden;padding:0 5px!important;text-overflow:ellipsis;white-space:nowrap}ul#Alerts,ul#Alerts a:hover {color:#222!important}#info a[href='./'],a[href='.././'] {background-image:url(\"data:image/svg+xml,"+SS.theme.icons.returnButton+"\")!important;position:fixed!important;text-indent:-9999px;z-index:14}a[href='.././'] {top:"+(SS.conf["Navigation Bar Position"]===1?22:1)+"px;"+SS.conf["Sidebar Position String"]+":135px!important}#boardLinks>a.selectedBoard {"+(SS.conf["Bitmap Font"]?"text-decoration:underline":"font-weight:700")+"!important}#qr {height:auto!important;margin:0 0 "+(SS.conf["Navigation Bar Position"]===1?0:21)+"px!important;padding:0 3px 3px!important;position:fixed!important;"+(SS.conf["Post Form"]!==4?"border:0!important;bottom:0!important;border-top:1px solid "+SS.theme.brderColor.hex+"!important;top:auto!important;overflow:visible!important;"+(SS.conf["Sidebar Position"] <= 3?"border-"+SS.conf["Sidebar Position oString"]+":1px solid "+SS.theme.brderColor.hex+"!important;z-index:11!important;width:262px!important;":"max-width:261px!important;min-width:261px!important;z-index:5!important;width:261px!important;")+"}#qr.autohide {"+(SS.conf["Post Form"]===1?"bottom:-249px!important;-webkit-transition:bottom .2s ease-in-out 1s;-moz-transition:bottom .2s ease-in-out 1s;-o-transition:bottom .2s ease-in-out 1s;" :(SS.conf["Post Form"]===2?"opacity:.2;-webkit-transition:opacity .2s ease-in-out 1s;-moz-transition:opacity .2s ease-in-out 1s;-o-transition:opacity .2s ease-in-out 1s;":""))+"}"+(SS.conf["Post Form"]===1?"#qr.autohide.dump:not(.focus):not(:hover) {bottom:-349px!important}":"")+"#qr:hover,#qr.focus {bottom:0!important;z-index:11!important;"+(SS.conf["Post Form"]===1?"-webkit-transition:bottom .2s ease-in-out;-moz-transition:bottom .2s ease-in-out;-o-transition:bottom .2s ease-in-out;" :(SS.conf["Post Form"]===2?"opacity:1!important;-webkit-transition:opacity .2s ease-in-out;-moz-transition:opacity .2s ease-in-out;-o-transition:opacity .2s ease-in-out;":""))+"}#qr.autohide>form {display:block!important}":"margin-bottom:20px!important;width:263px!important;z-index:11!important}#qr .move {margin-bottom:1px!important}#qr.autohide:not(:hover):not(.focus) {padding:0 3px!important}#qr.focus>form {display:block!important}")+""+(SS.conf["Post Form"]===1?"#delform[action='https://sys.4chan.org/f/up.php'] ~ #qr {bottom: 0px !important}":"")+"#qr>form>.captchaimg>img {height:48px!important;max-width:300px;opacity:.75;width:100%}#qr textarea {min-height:120px;position:relative;"+SS.conf["Sidebar Position String"]+":0;resize:none;width:255px;z-index:1;-webkit-transition:background .2s,box-shadow .2s,width .2s ease-in-out,"+SS.conf["Sidebar Position String"]+" .2s ease-in-out!important;-moz-transition:background .2s,box-shadow .2s,width .2s ease-in-out,"+SS.conf["Sidebar Position String"]+" .2s ease-in-out!important;-o-transition:background .2s,box-shadow .2s,width .2s ease-in-out,"+SS.conf["Sidebar Position String"]+" .2s ease-in-out!important}#qr>.move {height:"+(SS.conf["Navigation Bar Position"]===1?23:22)+"px!important;line-height:18px!important;min-width:0!important;padding:2px 0 0 3px!important;text-align:left!important}#qr>.move * {text-transform:none}#qr>.move select {height:19px!important;vertical-align:top}#qr>form>div {position:relative}#qr>form>div:first-child #dump,#qr>form>.captchaimg>img,#qr>form input[type=submit],#qr>form input[type=file],#qr>form .riceFile {margin-top:0!important}#qr>form .riceFile,#qr>form input[type=file] {float:right;width:100%}#qr>form>div:first-child {position:relative}#qr>form>div:first-child #dump {float:left;height:22px!important;width:25px!important}#qr>form>div:first-child .field:not(#dump) {float:left;height:22px;margin-left:1px!important;padding:3px 4px!important;width:76px!important;min-width:76px!important;max-width:76px!important}#qr>form>div:first-child .field:not(#dump)+span {color:rgba("+SS.theme.textColor.rgb+",0)!important;font-size:0!important;position:absolute;right:265px;top:4px;white-space:nowrap;z-index:-1}#qr>form>div:first-child .field[name=sub] {margin-right:0!important}#qr>form>div:first-child+div,#qr>form>div#replies+div,#qr>form>.captchaimg {clear:both}#qr>form .field,#qr>form>.captchaimg {margin-bottom:1px!important}#qr>form>.captchaimg {background:none!important;outline:none!important}#qr>form>.captchaimg+div {float:left;margin-right:1px;position:relative;z-index:1}#qr>form>.captchaimg+div input {height:22px;width:190px!important}#qr>form input[type=submit] {width:65px!important}#qr>form input[type=file]+input[type=submit] {position:absolute;right:0;top:0}#qr>form #spoilerLabel {bottom:4px;position:absolute;right:8px;z-index:2}#qr>form #spoilerLabel::after,.preview>label::after {content:'SPOILER';line-height:18px}.preview>label {background:rgba(0,0,0,.75)!important;color:#fff!important}#addReply {font-size:3.5em!important}#qr .warning:not(:empty) {overflow:hidden;padding: 1px 2px;text-align:center;text-overflow:ellipsis;white-space:nowrap;background:rgba("+SS.theme.mainColor.rgb+",.9)!important;z-index: 2}"+(SS.conf["Post Form"]===1?"#qr.autohide:not(.captcha):not(:focus):not(:hover) {bottom:-233px!important}#qr.autohide.dump:not(.captcha):not(:focus):not(:hover) {bottom:-333px!important}":"")+"#qr:not(.captcha)>form input[type=submit] {margin-top:1px!important;width:100%!important}#qr:not(.captcha) #replies+div {height:160px!important}#menu,.subMenu {margin:0 2px;z-index:15;box-shadow:rgba(0,0,0,.4) 0 1px 2px}.hasSubMenu::after {font-size:14px!important}#menu .focused.entry {background:rgba("+SS.theme.mainColor.shiftRGB(16, true)+", .5)!important}input[name=name].tripping:not(:hover):not(:focus) {color:transparent!important}a.useremail:last-of-type::"+SS.conf["Emoji Position"]+" {line-height:0;vertical-align:top}form[name=delform][action$='/f/up.php'] {margin:0!important;margin-"+SS.conf["Sidebar Position String"]+":265px!important;padding-top:2em!important}form[name=delform][action$='/f/up.php']>center {background:rgba("+SS.theme.mainColor.rgb+", .9)!important;display:block!important;border-radius:3px!important}form[name=delform][action$='/f/up.php']>center>table {width:100%!important}form[name=delform][action$='/f/up.php'] tr {display:table-row!important}.ys_playerContainer {position:fixed!important;bottom:"+(SS.conf["Navigation Bar Position"]===1?262:287)+"px!important;margin:0!important;width:262px!important;"+SS.conf["Sidebar Position String"]+":0!important;z-index:3!important}.ys_playerContainer audio {width:100%!important}pre.prettyprint {background:rgb("+SS.theme.mainColor.shiftRGB(-16)+");border:1px solid rgb("+SS.theme.brderColor.shiftRGB(16)+")!important;vertical-align:middle}.prettyprint * {font-family:monospace!important;font-size:medium!important}.prettyprint .pln {color:"+SS.theme.textColor.hex+"}"+(!SS.theme.mainColor.isLight?".prettyprint .com {color:"+SS.ppDark.com+"}.prettyprint .kwd {color:"+SS.ppDark.kwd+"}.prettyprint .typ {color:"+SS.ppDark.typ+"}.prettyprint .str {color:"+SS.ppDark.str+"}.prettyprint .pun {color:"+SS.ppDark.pun+"}.prettyprint .lit {color:"+SS.ppDark.lit+"}":"") +(SS.conf["Pages Position"]===3?".pages {bottom:auto;"+(SS.conf["Sidebar Position"]===2 || SS.conf["Sidebar Position"]===5?"left:262px;right:auto;":"left:auto;right:74px;")+"margin:0!important;opacity:.75;padding:0!important;position:fixed;top:25%;width:auto!important;-webkit-transform:rotate(90deg);-webkit-transform-origin:top left;-moz-transform:rotate(90deg);-moz-transform-origin:top left}.mPagelist.mobile {top:0;z-index:6!important}":"") +(SS.conf["Expanding Form Inputs"]?".field:focus::-webkit-input-placeholder {color:transparent!important}.field:focus:-moz-placeholder {color:transparent!important}.field:focus::-moz-placeholder {color:transparent!important}#qr>form>div:first-child .field:not(#dump):focus {background:rgba("+SS.theme.inputColor.hover+",.98)!important;left:24px!important;position:absolute;width:230px!important;min-width:230px!important;max-width:230px!important;z-index:2}#qr>form>div:first-child .field:not(#dump):focus+span {color:rgba("+SS.theme.textColor.rgb+",.4)!important;right:6px;z-index:3;-webkit-transition:right .3s ease-in-out,color .3s ease-in-out;-moz-transition:right .3s ease-in-out,color .3s ease-in-out;-o-transition:right .3s ease-in-out,color .3s ease-in-out}#qr textarea:focus,#qr>form>div:first-child .field:not(#dump):focus {-webkit-transition:box-shadow .2s,width .2s ease-in-out,max-width .2s ease-in-out,min-width .2s ease-in-out!important;-moz-transition:box-shadow .2s,width .2s ease-in-out,max-width .2s ease-in-out,min-width .2s ease-in-out!important;-o-transition:box-shadow .2s,width .2s ease-in-out,max-width .2s ease-in-out,min-width .2s ease-in-out!important}#qr #replies+div {height:128px!important;margin-bottom:1px!important}#qr textarea {height:100%;position:absolute}#qr textarea:focus {width:415px!important}":"") +(!SS.conf["Show Logo"]?".boardBanner {top:"+(SS.conf["Navigation Bar Position"]===1?0:-20)+"px}.boardBanner img {display:none!important}":"") +(SS.conf["Style Scrollbars"]?"::-webkit-scrollbar {width:8px;height:8px}::-webkit-scrollbar-track-piece,::-webkit-scrollbar-track {background:"+SS.theme.brderColor.hex+"}::-webkit-scrollbar-corner,::-webkit-scrollbar-resizer {background:"+SS.theme.brderColor.hex+"}::-webkit-scrollbar-thumb {background:rgb("+SS.theme.brderColor.shiftRGB(32, true)+");border:2px solid "+SS.theme.brderColor.hex+";border-radius:5px}::-webkit-scrollbar-thumb:hover,::-webkit-scrollbar-thumb:active {background:rgb("+SS.theme.brderColor.shiftRGB(64, true)+")}.reply ::-webkit-scrollbar-track,.reply ::-webkit-scrollbar-track-piece {border-radius:5px}": "") +(SS.conf["Style Post Info"]?".reply .postInfo {background: rgba("+SS.theme.mainColor.shiftRGB(-16)+",.2);border-bottom:1px solid rgb("+SS.theme.mainColor.shiftRGB(4)+");"+(SS.conf["Rounded Edges"]?"border-radius: 3px 3px 0 0;":"")+"margin:0!important;box-shadow: inset rgba(0,0,0,.15) 0 0 3px}#qp,.inline,.inline div.post.reply {padding:0!important}.menu_button {top:4px!important}":"") +(SS.conf["Sage Identification"]!==1?"a.useremail[href*='sage']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='Sage']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='SAGE']:last-of-type::"+SS.conf["Emoji Position"]+" {color:"+SS.theme.sageColor.hex+"!important;content:"+(SS.conf["Sage Identification"]===2?"' (SAGE)'":"url('data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAdFJREFUOE+l0t0rQ3EYwPHz+52bTf4C76XslithbJzNy2xe5p15mR21jAnzknYhbigitUJ5f7sglPdCIkRJRHHhUi60e7t6POcoh23ecvE5p07P8/39Lg4DAMx/+Hz4K/HB1rNv7KgRNaOWH7Syad8FZDikQb1oEe2iPW9fBcLRSFR/5GXJhvHZdsS/OM7qoOW8HjouG6D7zgE9D22AM/v+AuEBDvlKxrz20brHg3nTLKreqgT7UQ04r+zQedsI3fcOwFnpBtRKBTK2lh3lJtSPFWsmKF0phZLlYnzn43I1tF/Y3rVeWD04uywFeAzUUG2oM+SqaKkAjAtGyJzU4VsHtoMqDFg+4KFiM8+N831SoIoK+pNcSrd+Ug9qlxrSxziwbJuA3/lMiCi6Iq+pmWqlQBkVrHIjKZ6EwQSIH4gVr+6tcr0Y9NOaJ5wdoyYqlwKFVHCYOKQEhTMKsmYyIWfO8C533iAGtKOqJ3m5bI0W0Qgk/Ug0hwqOFU4FcMPJYiB7Vi8uGqYyPJxL5Q6zh9zgzDjNxWXhwI8BoiKBRENO/ThB62iQpJI0oiNy8TCfQBxpQj1ESYJIMmH80iAdebutd4CJZnaYGCYYI76Lvwn8xyvFCs5Nsc8yoQAAAABJRU5ErkJggg==')")+";"+(SS.conf["Sage Identification"]===2?"line-height:normal!important;vertical-align:baseline!important;":"")+"}":"") +(SS.conf["Emoji Icons"]?"a.useremail[href*='madotsuki']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='Madotsuki']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='MADOTSUKI']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url('data:image/gif;base64,R0lGODlhFAAPALMAABwHHHIAABEREZhtjZt1ckUYNHkYJrdyhreKilYtO2tFTOe+pYZFTFY+Qf///wAAACH5BAEAAA4ALAAAAAAUAA8AAARr0MkpmWU0Zzb4xRrFHN8XVp/CqIp6smsrt2HTzHd+K5qt+0BeppGwIRrHI7FIaTiWiEVDKkUkmImnwZmILr7ghdWRMGSJxnDYei1QioCFQPCdIwAJdwjgBSMIACcTAAEIhgQBgYKDAY2JIREAOw==')}a.useremail[href*='neko']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='Neko']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='NEKO']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAARCAMAAAAIRmf1AAACoFBMVEUAAABnUFZoUVddU1T6+PvFwLzn4eFXVlT/+vZpZGCgm5dKU1Cfnpz//flbWljr5uLp5OCalpNZWFb//f3r6+n28ff9+PRaVVH59Pr//vr38vj57/Dp7eyjn5zq8O5aVVJbYV9nVFhjUFRiWFlZVlFgZGOboJzm5uZhamfz9/bt8fDw6+drb26bl5j/8/lkX1z06uldWFS5r61UT0tfWlbDwr3Ew76moqNRTU7Mx8P75OpeY19pWl1XW1qzr6x5eHaLiojv7+1UT0xIU0uzqadVS0nV0MxkZGT5+PPk497///ra29Xq5eFtY2H28e2hnJignJlUUE1dXV2vrqxkY2FkYF/m3d5vZmfDuruhl5aZlJHx8O75+PZWVVP29vT/9fTj3trv6ubh5eRdXFqTkpBOTUtqZmX88/RMQ0T78vPEvr7HwcHDwsDq6ef///3Gx8H++fXEv7tZWVedmZZXXVudnJp0c3FZU1f79fnb1dlXUVVjXWFrZmy8t7359/qLj455e3q4s69vamZjX1zy4+avpaReWFz/+f1NR0vu6Ozp4+f48/lnYmi8ur3Iw7/69fHz7+xbV1SZmJZVUk1ZV1zq5ez++f/c196uqbDn4uj9+P7z7vRVVVXt6ORiXl/OycXHw8CPi4ihoJ5aWF3/+v/k3+axrLOsp67LzMZYU1m2sq9dWF5WUU1WUk/Au7eYlJGqpqObmphYVV749f7p5Or38fPu6OpiXFz38fH79vLz7urv6+hhYF5cWWKal6D//f/Z09Xg29exraqbl5RqaW6kpKTq5uPv7Of/+PDj29D//vP18Ozs5+OloJymoZ1ZVVJZWVlkYF2hnpmblIyspJmVjYKQi4enop5STUlRTUpcWUhqY1BgWT9ZUjhcV1NiXVkkhke3AAAABHRSTlMA5vjapJ+a9wAAAP9JREFUGBk9wA1EAwEAhuHv3dTQAkLiUlJFJWF0QDLFYDRXIMkomBgxNIYxhOk4wwCqQhQjxgxSGIsALFA5BiYbMZHajz1oJlx51sBJpf6Gd3zONcrqm/r1W8ByK0r+XV1LXyOLLnjW6hMGpu0u1IzPSdO17DgrGC6AadrVodGcDQYbhguP6wAvAaC0BRZQalkUQ8UQDz5tAof0XbejOFcV5xiUoCfjj3O/nf0ZbqAMPYmzU18KSDaRQ08qnfw+B2JNdAEQt2O5vctUGjhoIBU4ygPsj2Vh5zYopDK73hsirdkPTwGCbSHpiYFwYVVC/17pCFSBeUmoqwYQuZtWxx+BVEz0LeVKIQAAAABJRU5ErkJggg==')}a.useremail[href*='sega']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='Sega']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='SEGA']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAALBAMAAAD2A3K8AAAAMFBMVEUAAACMjpOChImytLmdnqMrKzDIyM55dnkODQ94foQ7PkXm5Olsb3VUUVVhZmw8Sl6klHLxAAAAAXRSTlMAQObYZgAAANFJREFUGJVjYIACRiUlJUUGDHBk4syTkxQwhO3/rQ/4ZYsuymi3YEFUqAhC4LCJZJGIi1uimKKjk3KysbOxsaMnAwNLyqoopaXhttf2it1anrJqke1pr1DlBAZhicLnM5YXZ4RWlIYoezx0zrjYqG6czCDsYRzxIko6Q/qFaKy0690Ij0MxN8K2MIhJXF+hsfxJxuwdpYGVaUU3Mm5bqgKFOZOFit3Vp23J3pgsqLxFUXpLtlD5bgcGBs45794dn6mkOVFQUOjNmXPPz8ysOcAAANw6SHLtrqolAAAAAElFTkSuQmCC');vertical-align:baseline}a.useremail[href*='Sakamoto']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='sakamoto']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='SAKAMOTO']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAQCAYAAADwMZRfAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAAxVJREFUOE+Nk19IU1EYwK+GQQTVQ39egh6ibKlzw91z7rn3bvfOmddNszl1bjKXc5rJJGmBUr7Yg9qTD0IalFgRBEYg6EDQQB+GovQyQgiaUZsoLcgHMcr069w7MgcGXfi453zn+37fv3MYZt/n99e76tzVj4JN/hP79fvXnV3hnNabwUBjoOHcgTYOu/JQspgTzsqKgn9BfD4vkWTzur287PqLVy+zM+yePB7KsRXLywTjnSpnZctBkPCdW8ccDuU55vBO8RXbkC/oP5ph19V5+7LIky0OY1BKbZEbLcFSt7u6pN7jLmltCVrr3DV5jY3+KovFEsccB1KJNVpefe10BqS2tqqO4/AuphBB4L/LkrRqNgtJs1lMypLls1kU38mytMLz/E8VIlutqVqX6/weZG52OttRXjbE0cP/FYLRlpVjDXuQ/r77x2XZPKkCHA4HBAIBkCQpAygIAvh8Pu2MZgO0Lz+QSa/sQfwN9RfpVN66XC6Ynp6GhYUFGBwczAC1t7fD0tISxONx6O7upgHILmsqvLcHodOggfiV/v5+SCaT4HQ6IRaLgdfr1bIRRREmJyfBZrNBNBqF+fl5sNsdgE2GiAbp6bmbdbXC7qWQbxMTE7C2tgY6nQ5SqRSEw2ENopaoZpCXlwdTU1NaoECgCbgiU6y8QH+ECYWaTymK7TWdys7MzIwGaWtrg42NDejo6AB1WjU1NZo+FArB2NgYrK6uQrAlCASxn2z6wkuMp87VIAhkE2MEAwMDkEgkYHx8HBYXF0HtkQpRy1BLiEQisLy8rPVNKSsFjEzrXH4+z1hlS4xDhKadNu7t7YPR0VHweDzAEVWfHru6HxkZgeHhYVAURYNjkylVWKArZjjMzqmdVi+QCsLUkQiEjvDvncEkvU7/qQ0Vgukeo48Go87IiCJnZNmipxiz7wXEbVDnbUxQOgM12h9n6qTq6NvapRdtkwaP0XK8RmPuYSbxYfaQ/sJJhjfknuFRURUi7AMOozcCwl94hLZp5F+EioDQVwqYI6jomZU1NFtM+rOSxZjVazcyvwHr/p/Kws1jegAAAABJRU5ErkJggg==')}a.useremail[href*='baka']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='Baka']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='BAKA']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAA0pJREFUOE91k3tI01EUx39JOpA0H4jNx0pbD3XTalISWf8YFlEgldqDsBLLyqjEKBCiLLWiggh6/KEV1WZ7OaelLZvDdDafNW1JFraWe/32+01FrUZ9uy4ylLpw4Z5z7/nc77n3HIqaMRIjZJyEcNX+uFCFeGmI/GZciEIsCFJUTvoAzDz+1y7K76MSwhX5hXl6z+WSbrzU2KB8YEGDwgrTaxZ3b7xHcaHhR3xw7Z5/UviB1ReP5XSg3+TAqYJOxMzWISFIC0GQDomhTVA9skCnsaAwp/vnMq66dBokNuBR9uFd7T9Z1zCunjci0qcRJUVdoJ3DYOhRnC/qBZ+jQbfeCc+37yjY2UEg0iwvJE0k9l8Z+8xqHmTgot0QLdQgTaQFQ2AsOzlHvOu1S5pwOLsHHo8HjHMCq2MazNvTlByKHyrJLDvdR25jMWRxYx5HjeMH2r1BDOOeguRua4OI14jx8a8YH5tA+al3EHKlW6mYOapb2oZBOOwMbEMseAE12L+jjUh3w+VipyAZ65oxn1NP/GMYGR6Ftn4Qsf7qa9S82Y/l/X122G0uL2TbxmZEz1WhXW8mUol8moXu+SCi/OoQ6VsDh3UUwyQ1k9GOaI5MTkX4yWTGHutvgI1F28sviAlRgxeoRm62HvsyW8En9pZ1TYgi6TntoyQtFm86rVgUoJZRvDnKMmXVAGxWmkAYOBwudBqGcHCvHulrGpGT2Uy+z4yT+QYsCXtCUpp8GxbKhx8gDK0ro+KjJGvzdjfDZnN6VdisLD5/JjArQ2zW66PJOj2lEZtStaBphkwah7K6kMJ/GEulp1bMWhAmMbTozOQRaWRtfoZVgjo4iRra4SYgGi26TwjxVeDKhR7Y7U606ixICq9tr7hd7+OthRWL7yUnJ1WPmXotqLhpRICPHCePtuFV6xdUPTAhcWEtRHEqfHpPyto4hPXLXnzflSEJnFaN3OCKDcsFsrEntR9RUmxARLAUgT5iBPuJsXWDBj0dZjRU9yNV+PTbpjTp9OA/pOSk24nRkXf1J462oPxcJ65f6ULlHSMulepRerYDgvj7A0cKpNz/tyTZqbzXO4t0ZZGQJ34RH11lFHIlA8LIqreCCMUZRY3cd2bwL/5/RmjNSXqtAAAAAElFTkSuQmCC')}a.useremail[href*='PONYO']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='ponyo']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='Ponyo']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAAuNJREFUOE+Nk3tI01EUx39BTytConQTt1am07m5abi5KT5S8z2dj1yOEMUC7aUgIoimlmUEWX9kBZGWaamEmE6U1BI1XNPNGTrnHs33IwuSXrL4NgcJ0mNdOHDh3PPhnPP9XoKwcroJYvMQiRSicHCQKCgUyZC9/T5rNet5KUFs0zCZbZMsFmZ9fTEjEEBDp4/KSSSb/4JoGIyWaTYbiykpWEhOxhSHAzWD0aqkUGhWAcVkW58xlvuPhfh4zItEmOHxYDR3MhcdDaNAsKJydAz5IySKRNjEUmy88vjOVaU8F0iPCqCNjEBHkC/UYaGYFwqxmJoKLYOhkxPElg0QsbNtTlmox9yjRD9UCbnoOR+J/lwRWtOCcdXfDc2BPpg0d7CQlIQZPh9KKlVkAQjJ2x2zmOSsQu7hpzUJfBhLjsNQmADjxcT10Bcl4rE4EHc5LjBEhEPn7f1WTqXSLQB/s1Tp7vslsoIkyPPiMJAbi86McBguiaHKjoEqR4jJy2K0nAxApzMN5iUGrclrKVaz2fUvuF4tRbxDKA90w5VjTFyLZKHpTBSq4/1QnxGB2qxoVIZx0JopRCPHFSNOThfWZzfrXDcZEowH4iA05ATg68hDtBaL0HAuCm3lJ9Bfcx2fFNUoi/DCjRgfNHHd1wCZA2TyXjNkE6F0cBDpPFiojeNi8EkJdFoN3vXch0nbBJOhDd907dANv8JITxNqziag3ZsJbUDAwLin50Q9QWwl1qSYoNOVvUcOoqOqAAa9Fu9H2/F9+B5WZLcwOyxFX18flLI+VASyMGVeoJHD+Tzq5BS1PoaKRrNT8127P74swsq4FCa9FKvqBqwaOiz3hdEuLKueYSyECT2LNW0eIfo3E/WmEbvnG1MUJnWdpWhDGDvxQXZHo+RR0uW2tnv+auPX+TvtJm7zKpaen/4y2yjBUlcxlvtvmvT16ZWDpQeoVv3/60F/NrHjTf4ugazIXtJ8ivjnz/sJ+yGQRjcqUdIAAAAASUVORK5CYII=')}a.useremail[href*='RABITE']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='rabite']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='Rabite']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url('data:image/png;base64,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')}a.useremail[href*='Arch']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='ARCH']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='arch']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABCFBMVEUAAAAA//8rqtVAqtUQj88tpdIYks46otwVldUbktEaldMjldM2qNcXk9IWktQZkdIYlc8mnNUXlNEZktEZlNIYktIWlNMXktE7o9klmdMXktFHqdkXk9EWk9EYk9IlmtQXlNEXktAWk9AWlNEYlNFDptkZldMYk9E4otg/p9kXktEXk9AXlNA4otclmdQXk9IYktEXlNEwn9YXk9IXk9FFp9o3otgXk9FPrdwXk9E2otdCptkXk9E/ptkcldIXk9Edl9IXk9EjmdUXk9EXk9EXk9EbldIcldIjmdMmmtQsndUvntYyn9YyoNYzoNc0odc1odc2odc6pNg7pNg9pdlDp9pJqttOrdzlYlFbAAAARXRSTlMAAQYMEBEVFhgcHR0mLS8zNTY3PT4/RU1kdXp6e3+Cg4WIiYqMjZGXl5mbnqSnrbS3zMzV3OPk7Ozv8fT29vf4+fz8/f7SyXIjAAAAmUlEQVR4XlXI1WLCUBQF0YM3SHB3a1B3l7Bx1///E6ANkDtva0jKbCW2XIH1z2hiZEZ4uUgxo7JedTQye/KN/Sb5tbJ+7V9OXd1n+O+38257TL+tah3mADAwSMM7wzQWF4Hff6ubQIZIAIb6vxEF4CZyATXhZa4HwEnEA+2QgoiyQDnIEWkjVSBBZBqXbCRlKYo8+Rwkyx54AOYfFe7HhFa7AAAAAElFTkSuQmCC)}a.useremail[href*='Centos']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='CENTOS']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='centos']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAB5lBMVEUAAADy8tng4Ovs9tnk5O3c7bX44LLduNO1tdDh7r/eutj43q2kocX23az07N+qqsvUqcmXl7331ZXJj7r40o/Pn8T42qP63KjNw9n21p3Y387Ml7732JzR55z05MSxtMLGn8TC4Hx8eqt8e62Af6/B4HnG4oPC4HzH44fBf7LCgbOkoMTcsrmtn8PWqcfFtKrj4Jvs2ZOz2FnMqLXT3KfY5p60Z6NUU5XRuqHzwWSywqDn3JaiiLWahrWhkry5zJjRmqm1Z6P1wmb1y319fK632mK5cKi5nH+73Gu73Gy73W283W+9eK17e6y1yZS3aqRZWJdcW5ldXJplXZppaKBwb6VwcKV5eKswL306OYNPTpGkfK+m0kGpUJWq1EnEqIuXK3+Xh7ahP4qhkryMfK6BgK+CdpGMaKKMa6O9ea2+eq6+oYW/eq+NbqWVlL2Wlr7AjanA4HnA4HrBkqbBlafB33rCgbLCmKjCxIzC1mSs1UytV5mtxIWt1lCuz2evWpuvXJywxYzHjrvH4oXIjrrN2HXO5pTO5pXUlYnUlYvVl5Hb0G7e0XTg03rhr5fpzHPpzXTp0Hvtz3/wrDHytknyt0zyuE3yuVHzvVr0wGP1x3T1yHf1yXe0ZaL2zYP30o730pD31ZeRIcF5AAAAQ3RSTlMAFBkbHEhJS0xMTk5UWWBsd4SEiIiPkJCVlZaam6CjpK29wMPDxMTFxcnK193e3+Dg4uTn5+fo6e/v8/P4+fn7/P7+J4XBAAAAAOBJREFUeF5Vj1OvAwEYBb/yGlu717atLW0b17Zt2/6nze42TTpvMw8nOZCAmwUpiIY6c5IiLi9tPX64GairqszHQ4X2VB64v1Cs6PxMPJSdHM777s6/jyaMRGiRLyyrb88OpjZ3CzAXrm1sqzSNNeN7kVBPNgB7cG51abE5l9cXDces7emQ1uadHhutFUg6gpPKkSIqQGavwz7r7O/+/3t/rSdjI9XDM3qz4fr3B/3iA0aJTG9x71+9oR/PLDwUe2wm19bly+fTIxHyEETatbPewGEw6Mk/tKZCEqSQQUlIHB/QNBEjjVN1AAAAAElFTkSuQmCC)}a.useremail[href*='Debian']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='DEBIAN']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='debian']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAAQCAYAAADNo/U5AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAAZ5JREFUOE+Nkk0oBHEYxv8fu5GQj3JwcaDkIAc5IpR87M7MKnIVJVKclaIQ5Sy5OLkgR7n5OigcSNpmd2c2Vyfl4KT8/muWiVU79TTv+7zv837NCBF6PG1X+NpZyEYSD9mIc+tHnBPe23B9xKrCuTmbQA/JKfABrhBswa1hH4A38IwfOxPdX1qcjiCQxO5NyrjKV70TnSbeRPwJvGN3i4yyqnEucPY8ZZX9GSEgGK+RvFfyjk2VKZxzBNG8wJWWgh/xtDOeUXZ7Slr6TrSLYL9N4SMgYTTcwdc2ArvJcElhSVcM6mCNSV8n9hA59yTU5UWMG6HIbLhIWlglgWiC2L4Z79qTdo40D6ISuOWwKCWHyk9Fv8ldpUHOuGTuynwSBUynddPdlbEosVpP9Eu4FnOsRzUYNTsdmZN/d5LDiqM0w+2CMdAFFsFGWgfXxZnheqe/z+0puwEM0HHYV3Z9Sgz8TEz7GkQvpuJ/36ggj2AaHLrSlkULWV5x+h2E8xkZL16YVjGNaAUscfZ/f6c/k9ywLKI2MMcRWl0RLy007idmRbQJ7RIfDAAAAABJRU5ErkJggg==)}a.useremail[href*='Fedora']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='FEDORA']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='fedora']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABPlBMVEUAAAApQXIpQXIpQXIqQ3UpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIqQ3QpQXIpQXIqRHYpQXIpQXIqQ3QqRHYpQXI8brT///8uTYMpQnM5Zqg5ZqnS1+I4ZaY4ZactSn8uRnYrQ3MrRXgsRHUsR3s8bbM8brMtSX4wUosxVI01XZw2X50vUIguToQvR3c6X5o6aKs6aq08Un8qQnM9VIFDWINJXohKcKlXapEqQ3UvUIc2X55bhcBdcJVgcpdhfapmd5tuk8dxgqJ1hKR5jbB6iah/m8Shudq3v9C4wNG/x9bFy9nFzNnFzNrIz9zK0NzK0t/O2+3P1eA2YaDU2eTb3+jb4Oje4urj6fHm6e/s7/Tz9fj3+fz7/P38/f3+/v83YaEa/NNxAAAAHnRSTlMABAoVGyY1SVlpeIuQsLfDzdHW4+3y8/b39/n6+vr4+ns8AAAAyklEQVR4XiWN5XrDMAxF75KOknYdZJS0klNmHjMzMzO9/wvMcH7I37mSJShsJ+5NjMT6umDoHyXDcI/2qJadh++P3cle1de+9yPe3/bTY92wzfzr7wGtP3JrAI72BZGVtcAdQlwHy+JS1pDbBE9qamZF3BYrjQxPEXwKc6dC8bXFm0QIpmt8kn0Rn093q82UCtK8oXZckwFJzuulV8bHkajPyXdbnJnARfDHs0trz+JQ+5AFvzp/L0+cL2qPAINUPrq5OC6p/64F/AMnrST+Dq/r7QAAAABJRU5ErkJggg==)}a.useremail[href*='Freebsd']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='FREEBSD']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='freebsd']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAABIAAAASABGyWs+AAAABmJLR0QA/wD/AP+gvaeTAAADXklEQVQYGQXBS2wUZQDA8f83j33M9rF9d7u4loaWklaDpkSo9KDGaIKUaGxshD2YSPRiuDVeTDyhBxosJCoa40ktpAkPDcUqAYVIpUSUPrAulEdD2bbb7e7ObGcfM/P5+4kwKDvq6yJ1FYYcvb+YAkqAHo/HQ7FYrFIoCiurq9ZXJ06YSOkA+kBzfX06bys3zHxS9EL0tXDVyZfefacqV+X/ZSJx5+qLbx98LhaL9RiGEZWlEsWC/Thd9q6Pf3vs2u6Orc83rFsvTwwfLf5obgywT1Vjh2Hh+rbNsnTssJdNLedK5aIrpSuldKVXKsnH4+Pyn6FDXn5tMef9O+3NvdkvP1V4+EYw2AoQ+KSx8dRYS6NXXnwovaItXduSrrkinWxGOmZWJi9OyOK9m1LmsjIz9IH8QUMOd3WfAQwNKCy2tJwbHB5+XasPaxIHmc4g7WWEZ1MquBiRFlJTf1E7+Tl/H/8asavPzTY1nWd2ZkMDRPeBeHPz5ojwsilEQCBvTSKunCF3M8FSNkBGVTHDYYrLj8jVNhDZ2SMa2zo3MTamaIC/u6Ojr3DtrOrvP0BpdATnyBeIhTxpR5ABUlKSUlXS1dWstbVxdz6hPL0l1quGqkLaKwNvVcjEXNRd/4mit4Z19DjefBEPyCKxgQJQcF28dBrHNDGTSZSezsjeff0hraa2Vs2vrvit81O4vj9xLJcC4ADrQA7YAGqBGsAql/EtLdFQE/L7dF1XZmdnSrbPMJfXoLDmolQK8gJyQBowgQhQDRQBD+hsraVhd4e5MH+/oExfvWLJ9q3/3S7qMpNH2hsS40kFS4EUUAMA2IANRIBXv4uzuO67c2PykqkA5YmZ6bN18YPi0Yoknxc4AsJPCMLVAk2BLKDosCWqs/PZaulkuxk9fekcUBAAQGDks5FT0W++3NuYuC0DVUL4DIEdlIQDAj0IRkigaMjArkFx0tf523sffrQHyKsAgHPhwoXLL+yP9/kePNhk5ExUTyKFkJVAUAiCFZrQup4Rv9ftuLV/6ONBYBVABQAArMvJ5MXW7duD6P62sD8UrPAFRU1TpeCpCnGvPZr7WW///v0jpw+VC9ZdAAABAAAAAMLo7drWrmQyPWG/r8tnaGIjaM05ujr16x/ZBFh5AACA/wGZnIuw4Z4A3AAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAxMi0wNy0wNFQxMDowOTo0OS0wNDowMOPVpFwAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMTItMDctMDRUMTA6MDk6NDktMDQ6MDCSiBzgAAAAAElFTkSuQmCC)}a.useremail[href*='Gentoo']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='GENTOO']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='gentoo']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAB9VBMVEUAAAD///+AgICqqv+AgIC/v9+Ojqqii9GAgKptYZKQkOmPj/ddUYBgW4eVjeCTgfiWjO5wbJaZkvPBvepkXomYkNldV4Bzbpl6dJ+Uj7ynoO6Vi+1qZI63se2mnudjXYjOy+GCfaqZjvWlm/Pc2e+Oh7NeWIOWjfeXjeW1sd+gl+diXIfp5/KHgKnn5/F2cZx6c6ZgWoXc2e6dltrAvNu0scrX1eTOyujCvup4c5qpovVpY43///+6uPPJyPXq6fvm5vrz8/z8/P7+/v/d3PixqvmxrPSyrfe0sPO0sfS3tMve2/3r6vy6ufPz8/3d3fi3tM63tPO4tsu5tsu5tvO6tfe6t/Vva5KRjKy7tvW7t/W9vPO/vM+/vvPCwfPEw/TFwvTFxOfGxfTGxvTHxvTIx/TJx/aTiOrNzPXNzfXQzfnRzuHS0fbS0vbT0uHU0e/U0uTU0/bW0+zW1ffX1vfY1/jZ2Pjb2/jc2uSTiemVkLSlnvbe3PTe3vng3fzg3f3g4Pnh4Pnh4fri4enj4/nk5Prl5Prm4/ymn/bn5vro5/rp6O/p6funoPWsqs3t7Pvt7fXv7vzv7v3w7/nx7/3y8f3y8v3z8vytqPWuqPX09P319P319P719f339v739/34+P35+f37+/+uqev9/f6vqvSwrPQAR0dcAAAAPHRSTlMAAQIDBAgJCwwVFyAsNUFHSVBneH+Bh4mVmZmanKCxsrK2tr3ExtDW19rb4ODl5u3t7u/w8/T6+/z9/f4MkNJ1AAAA8ElEQVR4XjXNw5aDURSE0YrRtm3b54+dtm3btm3bz9k3Wek9+2pSYFwT8ibzE93hwAtdJqK3nZo4J9hFXbP+vFHOthV6gnGzstZq94wdCs4UCCDymQ2v7X0LdYoSQ0MIENRYzJbRlPTTHu73ZNAL8vivmVui98PpzuqffX0mIPHJGtOQenukteJ+aS3b9htNpDnT9TeZH1bHAwBRMhGpd6e6uNrLoRgxBKmsX47nBlp678ojpEA40fejcmW4e/No0V8IIPfj6eKgbEJ3ZUnzgE1OqWp9Q3VeWRAsg51f1dZ8c31RmAsc+N5JGbG+zvj3BzDCPrzMDC9SAAAAAElFTkSuQmCC)}a.useremail[href*='Mint']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='MINT']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='mint']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAACVVBMVEUAAADh4eEAAAAAAAAAAAAAAAAAAAAsLCyXl5dgYGCnp6eTk5N3d3fBwcGqqqq8vLzNzc3Ozs7Ozs7Pz8/Pz9DQ0NHR0dLS0tLS0tPT09Pf3t/Pz8/i4eLb29vZ2drZ2tna2dra2trf3t/u7O/u7e/u7O/r6+vt7O/w7/Lw8PDy8fTz8fXz8fbx8fHz8/P19fb49/j49/n6+vuPxlmWyGOx437h9NDr9eD6/fj////+/v75/vTA5Jv6/fb7/fnL5bDL5q+AxjeDxUCEzTyGxUaGzjyHxkiHzz6J0D+Kxk6K0kCLyE2M00WNy06P00mSz1OUyF+W2FGX1FiY0F6Z02CZ21ac0Wiez2yfz2+f2mOh4GCi4GOi4WKi4mOk12+k3Wul32um1Hin0nun4G6n5Gin5Wmo23Op2Huq1n+q43Cr526s4Hit23+v6XSw34Cw34Gw6nWx4IKy4IOy44Cy63ez146z34az4IWz4YW03Y217nu38H2625e645G74pK83pu98Iq984W+4ZjA4px0tzDA5ZrB8ZDC5p7D55/E947F6KHF+JHH4qvH6qTI46/K5LLL5LN1tzLL5bN1uTDL57DM5bPM6qzM66/N5rTP6LbP6bTR6rfS573T67vT7LrV7r3X68XX7MHX773Y77/Y9rvZ8cHa7cjd88bi88/j8tTk8djk9tHm8trn89vo89zo9N3p9N3p9d7p9tvq9d/s+93s/dzy+erz+O73+vT4/PX5/fT5/fX5/vN1uzB3vTD6/ff6/fh5uTj8/fv9/vr9/vx8wjV/xDmrMRH0AAAAOXRSTlMAAAECAwQJDzk/RUlNU3F0kpSVlpeYmpucnaKjpKWqqqqtu8LExMTEzdTU1NXY4evy8vP+/v7+/v6LaR1mAAABD0lEQVR4XiXI03bEABAA0KltW9kaW3eSZW3btm3btm3b/q4mp/fxgqKOtpamhrqaqoqykrQYABh+PVMU9fjE5Xp8o54kgPHN0EBHU2N5YXZykiua0HHd2759VF2Sk5IYE5GGsmCEWLV1kVWwt5O+3x/qpgsy8k4ja+cJl2/v5C22tlgCAHtw9TQSa4s+AzfPSm0BRNl9SydhWJzLC567KrNhgrNwHIJ5qTz/2f9w7Jw/DNqIjVr04exW0AEOXcN3Ab7enr9eDW2VTJgehONyc2Z8XP5YdD0Tcuhcc4/r45OjGX51TEjYPbh8THRPvbz+CHusgSZlT7rP8PkCwfQKaQUi9Igr6JsRBMFiWZgb/AHKElRzKopZJQAAAABJRU5ErkJggg==)}a.useremail[href*='OSX']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='osx']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABrVBMVEUAAAD///////+qqqr///+ZmZn///+qqqqAgID///////+tra339/eAgICoqKjx8fGMjIzm5ubh4eGPj4/g4ODIyMiAgICSkpKLi4vS1tbPz8+Xl5eMjIypqanIyMjW1tZ2dnbR0dGamprFxcV3d3d+fn60tbV3d3dcXFx3d3epqal7fHxxcXF+foCnp6hYWFhyc3Ojo6SMjI5fX196enp+fn6Li4xERERqamqgoKFpaWmFhoeen6A/Pz9QUFCWlpeSk5SUlZWUlZaOjo+Tk5RHR0cuLi5YWFgwMDAeHh40NDQ3Nzc6OjpcXF1rbG0XFxdSU1NVVVVXV1dZWVlbW1tnZ2lwcHABAQEEBAQXFxchISI+P0BISUpaW1xHR0kNDg4qKyszNDU1NTY9Pj8NDQ1cXF4XFxhSU1QSEhIDAwMrKywtLS4uLi4wMDFHSElISEggISE0NDVJSktNTU1FRUVWVlhGRkYEBAVBQUE0NTZQUVJQUVMFBQUqKitWV1lXV1daWlpaWlw+Pj8bGxtcXV9dXV1fX19fYGFgYGBkZGRlZmhpaWlsbGxwcHB2dna844Y9AAAAV3RSTlMAAQIDAwUFBggMDhkeICMkKCgqMDIzPj9ERFBib4CCg4iMjZCcnp+jqamrw83W1tvb3ePl6Ojp6+vs7u7v8PHy9PT09PT3+vr7/f39/f39/v7+/v7+/v50ou7NAAAA30lEQVR4XkXIY3vDYABG4SepMdq2bRSz/capzdm2fvOuDO397Rw0Ly4tz2QAQPbcxuZ2E/STJwfxPhWgG355fRrVAIVb1zeP9UDLfiSwkAcADe8fn7tFxWuEXFRDoer/OgoMTRBCumj8yJwPBo8Zhpk14U856/HI8n0ZUtpZ1udrSzfVneA4roNKjdrwpcMRilb8d8G60+lKnrpWcn9bO+B23w2O8Tzfq4aiNSZJqzn5O4Kw16h06fPZ+VUlUHfo97+VAEb7rSh2UgDd4/U+TBlQY7FMj5gBIGvcarVVfQPVPTG94D0j9QAAAABJRU5ErkJggg==)}a.useremail[href*='Rhel']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='RHEL']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='rhel']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABj1BMVEUAAAD///////8AAAD///////8AAAD///8AAAD///////8AAAD///8AAAD+/v4AAAAAAAAAAAArKysAAAD///////8AAAAAAAAAAAAAAAD///8AAAAAAAAAAAD///8AAAD///8AAAAAAAAAAAAAAAB5eXn+/v5JSUnKysrS0tJ5eXmqqqqxsrL+/v4ZCgknJyeHh4eIiIjo6OgZCAdOTk7t7e3///8GCwwPAAArKyv19fX29vb9/f0EAAD////+/v4AAAAGBgYHAAAJAAAMAAANAQAPAQAVAQFyCQV9fX2pIRzmEQjn5+cBAAAFAAAAAADnEQjvEgn////uEQjyEgnsEQjzEgnxEgljBwPaEAj9EwnwEglHBQJHBQNNBQIBAAB3CQR5CQSHCgWLCgWRCgWTCwadDAWmDAapDAa/DgfKDwjWEAgGAADh4eHiEQjmEQjmEQkKAADoEQgLAQDtEQgMAQDuEQnvEQjvEQkPAQAfAgEuAwEvAwE8BAL1Egn3Egn4Egn6Egk+BAL+/v5CBQJrB0muAAAAT3RSTlMAAAMEBAkYGhsbMTRLUmpvcHeIjLe6vcHCxM3P0NbW3Ojp6u/w9ff5+fn6+vr6+/v7+/v8/Pz9/f39/f39/f7+/v7+/v7+/v7+/v7+/v7+Q8UoNAAAAO5JREFUeF4tiwVPA0EYRL9SXIsWl+LuxfcOd2Z3764quLu788NZNrxkksmbDP2R7vH6GioLs+iffEzNXd4+TqPErUUpVqMOvwgdzMPn1rv5vPsVeufBTaBK/bH2FPvkEUuIG5jIIc+sHYn/HJ3dC/Hxuo4y8s44dzwBbFkisHN8bVIdXs6jb+H97aCwbHEIqgcml64CD7YllNkAVQC940MLYe5YzvIeQAXNrd19Roc5MdzfdQLUUKaUYyuG9I8y1g4gj6hIak4X5cBIT2MquZJrJdOqpY11ZpAiqVwbY/C7KY1cRCrZxX4pWXVuiuq/hs49kg4OyP4AAAAASUVORK5CYII=)}a.useremail[href*='Sabayon']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='SABAYON']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='sabayon']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABvFBMVEUAAAAcUaYdVKwAAAAAAAUABAwWRY4YSZYhZtIhaNYHDx0KCgoFDBcKCgoRMmYSNm0fXL0fXb8AAAAYS5gaTp8fXLwgXsEGBgYFBQUZSpgZTZ4JFSgODg4IEiIOJkwOKVIkW7EnXbQLGzUTExMKGC8LHjwMIkITExMiIiIPEBEPJ00QEhMXOXAaPncOJEgoXbApXbEcHBwwMDAEAgAfHRgQDgo3NC8AAAAHBwcKCgoLCwsJCQkaGhofHx8lJSUwMDA0NDQ4ODiRkZEICQocHBweHh4GBgYHCg8mJiYnJycpKSkrKystLS0uLi4ICAgODg43NzcRERF1dXUUFBSjo6O1tbUbGxsEBAMLGS8MDA0iIiIjIyMkJCQNDQ0NHTYKCQkoKCgPDw8QEBArMDkKCgkRERIREhMxMTEyMjISIz00Njk1NTU2NjYCAgIVFRU5OTo5P0c8PD0+Pj4/QURAQEBHR0dKSkpMTExSUlJiYmJlZWVnZ2cWFhZ2dnZ4eHh8fHx9fX2FhYUXFxeVlZWXl5eYmJiZmZmcnJwZGRmlpaWrq6usrKyvr68KFiq/v7/FxcXY2Nji4uLn5+ft7e0yif9uAAAAN3RSTlMAAAApKSkqKioqg4OEhISEhoa1tra3t7y9vr7S09PT09TU+Pj5+fn5+/v7+/v7+/v7/v7+/v7+70RY/wAAAPpJREFUeF4dyWNjw2AUBeC7dfYyorM6rx1exKltzLZt2/rDa/J8OgBVVlFDX39jcTZoUqCse251a2dvu6ccUtWlanLQ4Vpel+ThlWq1l3wEz58tx4dOt1dMlAJk9A5gMjG75LHwo46hzkwosGOMbejumoRvubC9EOrMviT0E0Us9fvN9dA6zxJCNv6+ECGsb6oNWsgmpZT9/UTUZo3Em6AW34guTL4jiAudiCM1kLcw8/SmHERfT1/eueBiDqR1GK1n9w+K8nglxYxd6QAML4ztXoQuj8YFgWcgqdJp8qzty26vaboCNIxBCshyQDKov0aXr29v1ufq1PwPx5Q7bCoh6eoAAAAASUVORK5CYII=)}a.useremail[href*='Slackware']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='SLACKWARE']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='slackware']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3AcEDi0qZWWDgAAAAx1JREFUOMt9kktoXHUchb/ffc1M7rySSdJMOknFPMRitLgoNKKI8ZHGKkgrjU8SitidimSh2UkXoQmoO1dGQSxJjdvOtqSaqlR0USEGSjVJGxuSmWR6M3fu4/93YX0g4rc9HA6cc4Q7DI+fpzz7PA8++2mxvZAeBZ4xhHtFcJRmXWsWvb36/OLcyxf5B/KHeYHy7DmGx1+YSDjmWTdlobTGMAStQGkNoLXS4tXDq7u7tUcWz49tA8jR8QUuzB5n5NTCV13F9JEo1JJwTLKuzU61QiOMcd0UDb+BncwQK3Rl15eNja3ui/Njq8aF2eMcO/XlBz0H8oO2ZUkum6A13WB99TtyzXlaCi24SaFa+ZFCzsG2DNnfkdbFjsI1APPhk+d6ujqznycdCxFozadYWvyMpx47wa+bPkGksKwUNnsk3TaCGASRXDZh5LpHXPPg4Rcni+3uYBxrtBbQghlscOVKmYHeEm0ZIZ9xyLffw41ND6VAa43SmjiMByzHYtjzwr9arfshxf5jOKlvKZfn8es77N2uks24PPfSFD/9Uvt7AtPKWmEU9d645eHYJo5tcKi/FX/zG+zmQxQH+rANk862DOW5N/hhaY64cJSa5xNFCgDDILZACMKYWAmh73HmzFsMlBQJ06LeiMinE1S3KzRCm5rXIIoUIoKIYCVM36urZFbEoiBLNMIhAE6/NsSB7h6SKZdL8xsUOnpx9j1KbTdARACIowArYe1ergfNT2i0mIbJys0GI6PT3N1/hJvrPxOFdRJNBQIy/FapI4Bpgohgcjuw+jq8jy8tV55MNBWI4ohS802CpizKv8q+FgALZAfYgSyAZtNro1oLaU1VvxCA029Oraxs7u/tKnXiNjn8HyKwur6lI++6vPK4V7IA7u+1Dyu1tr183ddNbkHuXP8/zEIYeFqiLRl6YO/p0bHJdflT/PD9qZa1W+ry99fcvlAlcZwUpuUAglIRYVgnDEIOlna4q0M/NPnuO1/PzMwg/045O/XeibUt5/Xangx6viSVFpK2jtMpvdyWCz+5ryf10clX3/amp6eZmJjgd441URWWJY8BAAAAAElFTkSuQmCC)}a.useremail[href*='Trisquel']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='TRISQUEL']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='trisquel']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABjFBMVEX///8AAAAAAAAAAAAAADMAAGYAAAAAHFUAGWYAF10AImYAIGAAHloAHGMAKGsAGmYAJmYAJGEAKnUAJ1gAMXYAJnEAJGQAI2EAK28AK3cAGTEAMHgALXEALXgALG0AFUAAI2oAK3EAMngANoYALXMANIAAM4IANIIAL3gANIcANokANoQANYQAOY0ANIYANooAN4kAN40AOY0APZMANIUAOY0AO5AAPZUAPJAAP5MAPpQAQJUAOYsAPpYANoUAPpoAPpUAM4AAQJkAPZIAPJEAQpgAN4cAPpQAPZUAPJEAO4oAOosAOo8AQJoAOYsAO44AQpsAO48AQp0AP5UAQpoARJwAQ58ARaAAQZgAQ54AQ50AQpgARaIARqMARaMARaIAR6QARaIARaEASakARKEAR6MASqsARKEASKcAR6MARqYAR6UATbEATa8ARqUARKAAR6oARqMASKgATK8AR6QATbIATbAASq0AR6cASKgASqwAR6UASKcATa8ASqoASqwAS6wASKoAS60ATbHn4CTpAAAAhHRSTlMAAQIFBQUGCQoLDxAREhMUFBUYGhobHB0eHh8gIiIjJCQkJCYoLC0xMTE0NDo6Oz1BQUNHSUxOVFVVVldaWl5iY2RkZWZoamtsb3FycnR1ent9f4KDhIiJioyNkJGYm5+foqOkpqamqKmqrKytsLKzs7e4uLy8v8TFxcXGx8rO0NXY2eZc4XYcAAAA00lEQVR4XkWN1VoCUQAG/3NWtwh7CTsQJOyk7BaDxuxA6bbrxf32gt25m7kZqDRYxziooDV7+1AalMUavQh2AsEZoWvzigLun+T17/c8QiJZ7qu2QKiNmyZthdcR1/as353jIeU1GxMHo5XHdqPFeX8IaDMdHPYN6dRN7LR4qQewdTa35HWkyh+fbxERAMjwlAWJv3CPSKDQ+H7XvHdkV4Pua3Gtm4sPKIF/WV8dop4VKBw/NU33B3x1JbTt+XwhkJQoqRfWvHOy28uqH8JIdomR/R+s9yR3Cso77AAAAABJRU5ErkJggg==)}a.useremail[href*='Ubuntu']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='UBUNTU']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='ubuntu']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABKVBMVEX////ojFzplGf1zbnqnHLvs5P10b3yuZv1xKrytZXvtJXys5LysI32waT0n3HxiVHwg0jxhk31kFn0h0zxf0P0hUrveTv2iU3yfkD1hEfyejv5eDLybSX0aR7zZxvyayH6ZxnxZBj4YhH7XAb5WALlUQLeTwHgUAHeTgHfTwD65NzdTQDdTQHdTgD31MfcTgLcTADcTQD////xt5/31Mf54dfmfE/dUAbeVQ/jcUDcTgHeWBnnflHohFvpjGbqkGztnX342Mz53dLgXiP65d399PHdUgrtoYLyu6Xzvaf76eLfXB/rkm/fWhvupojwrpTeVhTgYSfgYynzwa30xbL1ybnngFT31snngljhZS3539XhZzDiajbibDn77OX88Ovrl3X99vTjbz1fisGCAAAAMHRSTlMABgYGBwcHJiorMDA1NXGHjY2Nl5mZmZyfn6O5u8XHzc3X193j9fj4+vr6/f39/f08OUojAAAAx0lEQVR4Xi3HZVbDYBhGwQctWqzFPXiQ+36pu+LubvtfBKcN82/UEhld2vWXxyL6F92gbTPabse8hU/uHMx1SZoyyJWPTwq1Rs7GpYE9+Cg+OJcs1MHvU9y4fnrN31yUm18vMCIPjtw3QMndw4rs8ieVzAAcBlewpe1KM3uaBuD3Dda1BhWXAsi6AFY1a2SqifxZ+rnxWYcJDRkUS3fO1R5vwe+XZgw4D4L3RAJiknoXCVX3WeiUpJ5pIxTvVmg45pl5k4Ot/AGV2iqZBWgJJAAAAABJRU5ErkJggg==)}a.useremail[href*='Windows']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='WINDOWS']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='windows']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAQCAYAAAAbBi9cAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAA+pJREFUOE+F0n84FHYcB3CWSsL9ojo/6ik64c6PnTjmSS0limmrpBm2G002y++xzXRz6zE0R4nbw+RnTj/WD4sbanLkkAe55ccYlyNme4SrO9u9d13PI3/saZ+/vs/3831ez+f9eb5aWsuqy2mjRYeNUa7YmtjfTico7jNJ8z0eG24NB9vvnDrvufzpq89Npnr8VjMddNmuRh9rDfp36mFg91oM7qPIc5JdbDJq3An/JfCu7Hl53W2lpS220pP2OuniN299jAYbYizSENIoAgbCTdrTKtxOJVdvGo8psUwKy7Vxe4ez1YEVudGP8YEZzyveInFJ6mZRHHqYazDspw/pJwTIuERM5JIwmUdGdyo9K7/BszGzzg6fXzZHGJ8KvzQqXKOpoIeZLjofWR++BPWyCEnPY4xFGEKWQcLjMjKmr1MwfcMYwmz/Y4KOgNki0V5k1dkjUWCK93Kp2PMFFawos8cm1gZ2GqjLXktL4mbQPHLQ4B9ZDFE5+S356fQlyuJMqzH++HnTo6ui2OO1ko9Ul+4fxfd3d4F7k4YTReqpuFS88bGZUE2QNNDobuIq8Q5CduHb7lFJaTnvnym9ergjMWD/FG8zf+aKS3G9JO5C01Asah6wUXrvALKEDoitMMHhDKrKJdg8RU2s0EB2EWWur8dd7PDPFv6dUC0Gv3kAN36VPRGP/5k5NS6lljWxG0TDiSr1VKhoPwhevRMSqkwRxDObc/DavGtpP6zoi8XOyZfhnyNEvKANBU0P8VPfI/wyNCGXSn7wlEmyA9KrgmOKGth3eDVvPfyywq2dnUEv2R9qG2rLsH7xJXziKnWcI8tlTvEC7Mu8hROlImTU9aKqcwQ1vWOihWFu+sJknmph5CvxQh87c7bNh/NXo03hrMCosyvLmMNgMF7TQL6J1dsZIUVwjKqEO+cajp5vxPN439U/gKBt8PTcYHzL/BgHCyOf4unAISj6mFC2bYC82kB5Ls460NHRUVsDeYSXpGw7UgC7sAtwShDgzdM38W7BbURXtqpqhfmB8sEQuXwoCM/6faGQuGCxyxyKWhIm+PrSD495WL3cT0hhi8Whc3NbAs9KaOyCTvrJ8qkdX19XBeTUDU00+55USFzVU2yHstcaix0mUAjJkJeuRU868Ucmk0lcguiBnMAVxjbbdHV1yeq8+u4Hgo22huSG+iQXp83ftaxW3lsPZcs6KG5T8OwaAfJiPcxlrVRVRhvF02i0F/t5VbHZ7JWDfErKTLnhE3mFPuRFepg/uxqz6TqLv6euGj3ut87t/4ylvre3t3ZehOWWO1zjSFEqMVP4GfGb/DBykJcjmaZOoLsc+hcVY/LaAgcTQAAAAABJRU5ErkJggg==)}a.useremail[href*='OpenBSD']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='OPENBSD']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='openbsd']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAFo9M/3AAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3AoYAykIPu64pQAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmUHAAADTklEQVQ4y32RXUxTdxjGn3N6eujoKT3SUkuk3VoBGfVjgFXAsZ7WkipyYXQbuu3CzUXZmGRbssnFEseFkWzgcGzGXky9MWL8TsC4IeFgtK4oAqOnG5vMVl1pCMVWQD7b/y5M6jLdflfvxfPked/nBQA0NDSChqnGVrLuGkES742NhJAdhAKAuk9yyUs5Gry7RQMZAARCWgivpQiPe71P5DUfH0xaqTL7m/iiLkJmphawa+e4SM2PvUyC4yUIBu8CnAQKAK53rCA5OUtQtStVpJ4Gw/FOBddZVKhCfq4MP4n6+at+DUsJm/e0G9JZzYEvI2tHwlEYjDxomkZ+3nG8WroRtHihZVOhVlorDQzh0okhcByDP4ZGcf+X9XAsvY5/RsBa7Kq5H/CqLctKyl/g08S2i6fq8W/MS3P34T9wNDVYSeDX1eTD9xhiLXbtB/Akwmmv6Kr+ICFkLpGhtNSM3qsSstS3oX8lSsmsxS6ZVn3j6PvVVqhUcvC8AtPxVPxwygVKvngN89WOjgVprggGA4eenjB4nsXsTASpC63I0wVTZYPR11FoKRB8Ax54PCFk6BhMTk5CPR3GSbHouGzknr/bYFq9EAvfc9Tu1sLjHcXNKxLuTOTgzOlOe7IHBc/beAXWpWmXlz8a84nhcLQ+ecVzsAEQrMWuMX+f9HZF2YPZ28FVSNfoPWqOzMUmqYMAJm7+/OOzXQFwHGpyEV+vi+yvtxBC9pDmpgJC4tvI3mo9GTitIxvW24nT7ug67HY/3eDs2bbyrVsrY2day70rV6kRfDAHk5lDLJqAmmeRiD9GJDKHvwb74R8G0mkTPjrQTTG122xkTTbwaV2b1H4u16JQKXGr7yG2b8/H1MQ09IsTSEmRwzf4CCwzD+dmE1re8CI7wwi5XNlFf9vaTXX4dWJg4LLl7h05fpNGwNAMWpp9CIVYNO/tRCzGwpDFQaVMQTS2CKY0BWr3GVGWNSXKACDDaA4Mh976pq9f5Sy09GgKlmeAMIBKzUKpU+BFoxJecRhUfAbMxDi4eADfHVmE79v7q575gvvYeVvjZ58LD5mwsKUyX0hnf0feslnQCWD4zxnc6reKisxsfH2oscqcmTmK/+Ow252cna7K52r+Bky6PqmoT5HBAAAAAElFTkSuQmCC)}a.useremail[href*='Gnu']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='GNU']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='gnu']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAFo9M/3AAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3AoYAywUV5gQrwAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmUHAAADcElEQVQ4y43Tb0jjBRzH8c9v+7nNMebcUW21Cc78g/wcuhByIScoMRwoTBmFlZCmIJ14axqkgoYIkXIqKIVBEuJNUBEUPRlpqDC3Q2Ex0nTezun2YOaPLXNIv7Vvj7zgiOj1+PPk/eADjuNEuHN6ekqMw+H4IzMz8xChUCjV1NT0JbO7uxtfXFy8NZvNr21tbd0AAEQikY6I0m1tbQbx2NjYZiqV+vn29jY+PDw8xhYWFj45PDzcb25uhlQqfSTief6X0dFRpqKigvF4PPPipaWlY7lcXhCLxXJnZmY+ZTY2NnzX19ePGxsbHw0MDLivrq5mc3Jy2pPJZLVWq/2cdbvdDSzLholoNJ1OMy6Xq0Ymk5HNZktOTU29qMgA8HYqlaKDgwNKp9M0PT09BgAM/iGuqqoimUx2yPP8U5/P9wEAMB0dHRUKheJHiUTyeGhoqAUAnE7nR0qlsjcQCLwjlsvlz+bm5mQWi0VSWlr6bXV1tU6hUMj6+/vfN5lMN0xxcfG1zWZ7SETTSqWSGhoamPHxcajV6s+8Xu9Xou7u7t9VKtW00+mkSCTC6PV6aDQa8Dw/Wl9fP8UAQCgUosvLSyovL2eWl5dRUFBw7Ha7v9vc3By5K3g1EAg8FQSBiIguLi4IgBwA2LtEjuPuJxKJ62AwKFpdXf0eQBIvYVmW/cLlchEAWK1WAADT09NzX6PR/OTz+eKVlZUzKpVqTyqVvsnzfLCkpGSrtrb2t97eXnFeXl5ZKpWyZ2RkPPP7/UUnJyefGI3GU+zt7aU4jotOTk7mAUBfX1+b1Wq9kcvlBIAcDgctLCyQxWKhoqIi6uzs/BoAVlZW3qqpqbllZmdnf1hfX//Q4/HEzWbzX+3t7fcMBgMFg0EYjUYmEolAEAREo1Hk5+fT+fk5Mzg4GD86OpJ0dXXJGQBoaWl5Ra/XP6yrq3tQVlam2N7ehslkAsuySCaTUKvVSCQS2NnZSXAcJxYEQTEyMvKeIAhLDADY7fZ7BoPhm6ysLFpbWzuan5//WKvVvsHzPEWjUSYSiSA3N5d0Oh0TjUaf+/1+S2Nj46/4FwYAr7e2tnbF4/E/iYjC4TCFw+F0LBaj/f19mpiYeID/IAagAyABYLXb7cLZ2Rml02nyer3POY6rwv8hEr34u0IkEk1mZ2cTgGMA7768/RtL5JKsGzrLIgAAAABJRU5ErkJggg==)}a.useremail[href*='Plan']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='PLAN']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='plan']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAPCAYAAAGn5h7fAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3AoYAzE15J1s7QAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmUHAAACAElEQVQoz3WSz4sSARTHvzMjygpqYg3+KIhkE83DKtKlf0C9SrTRuZNEx0VowU6CuSeJNlwwpEO2kJ6SQBiIUAzFjRDF4wrjKosnGx3HmdehFDfpe/2+z/s++D5gU7IsEwRByICIiAEAIiIAYAFAXsjYVr/fLxMRNVvN+prJ5/OA3+/XERFNf02JyeVyDx0OxyvLNQsnimLKfcf9KRQKXQAAnE6nlf5qMpnQycnbP/kAoKoqsSwLAJhOp+AAwOv1otvtpqxWq73dbt/r9XqvEQ6HUalUEvF4XLd5IpvNZqlerzd5nlf6/f6tTCZjBACk0+nb+XxeW4UrikLJZPImAGA0Gq0NIqJyuSyyANDr9Q5Wu1utFvR6/SULAI1G4+vK8Pv90DTtGwsAJpPpaGUYDAZ0Op3PHAAEg8H3tVqtbrtu21sqyxuRSOQJk0ql9IvF4r7b7f7pcrlejkaj57IsH58Pzp8dvjhc/lsBk0gkbLFYrFqtVvd27+4qOk733ePxPDCbzVBVFfP5fCiK4rvhxfDN/qP9wSasGwwGMv1HiqJQsVg8ZlfTHMepkiR1t05gGJBGmM/nMBqNj9nN9kql0lNN064ARISzH2cQBAGz2ewLu2na7XYLwzBbvxYIBBCNRrFj3BmsAZ/PZ+J5/kOhUIAkSVeA8XiMZqt5efrx9OA3GfcgvyVno9cAAAAASUVORK5CYII=)}a.useremail[href*='Crunch']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='CRUNCH']:last-of-type::"+SS.conf["Emoji Position"]+",a.useremail[href*='crunch']:last-of-type::"+SS.conf["Emoji Position"]+" {content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAQCAYAAAAS7Y8mAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAANxJREFUOE+tVEEKwzAM67bDYJfBch17S/7/lEAgP+jiUme2bLMWEsihUazaiuxlESvnvOLu8IeuBNiIduJ+zATKRd8dfTKxgylixvc4nU1rbcRjFkjMeGd/yKSY+IKZqrT/fOwkd4/4NYF4ewNXijNZelqHxKxXpCMGSv3xcYfGHbjRDlxBmCk1pUTHhF0jYraMesRa6+ZpBt1SoQeUxkctFUkR/niGI7zOVNqddYaUqpO/5XiYRmxmhTw4YjW6A1YbQ8o0CGtUSrHdA1ZjYlW2Y8dw7KHVTKnAjPgXdnI1iOi+J0IAAAAASUVORK5CYII=)}":"") +(SS.location.board==="f"?"#qr #autohide, #qr #autohide+.riceCheck {display:none}#qr .riceFile {float:left!important;margin-right:1px!important;width:189px!important}":"") +(SS.location.sub==="sys"?"body {margin:0!important;padding:0!important}body>form[method='POST'] {background:rgba("+SS.theme.mainColor.rgb+",.9);margin:5px auto;max-width:625px!important;padding:5px;border-radius:5px}body>form[action='']>table {display:table!important}body>form[action='']>table fieldset {text-align:left!important}body>form[action=''],body>form[action='']>table fieldset,body>form[action='']>table #recaptcha_response_field {border:1px solid "+SS.theme.brderColor.hex+"!important}body>form[action='']>table,body>form[action='']>table td[width]+td {text-align:center}body>form[action='']~.rules {display:block!important;margin:0 auto}body>form[action='']>table td[width='240px'] {display:none!important}":"")+"#post-preview {margin:0!important;position:absolute!important}#content #threads .thread {background:"+SS.theme.bgColor.hex+"!important}"+SS.theme.customCSS+""
    ###
    
    if reload
      $("#ch4SS").text css
    else
      $(document.head).append $("<style type='text/css' id=ch4SS>").text css
  
  DOMLoaded: (reload) ->
    if SS.location.sub is "sys" # fix for firefux on report popups.
      document.head.innerHTML = document.head.innerHTML;
  
    unless reload
      MutationObserver = window.MutationObserver or window.WebKitMutationObserver
      SS.options.init();
  
      $(document).bind("QRDialogCreation", SS.QRDialogCreationHandler)
                 .bind("QRPostSuccessful",   -> $(".riceFile>span", $("#qr")).text "")
                 .bind("WatcherThreadAdded", -> $("#watcher").addClass "show")
                 .delay (-> $(@).removeClass "show"), 2000
  
      observer = new MutationObserver (mutations) ->
        for nodes in mutations
          nodes = mutations[i].addedNodes;
          $("input[type=checkbox]", node).riceCheck() for node in nodes
  
          observer.observe d, childList: true, subtree: true
  
          # things that need to change after 4chan X loads.
          $(d).bind '4chanXInitFinished', ->
            if not SS.QRhandled and (div = $("#qr")).exists()
              SS.QRDialogCreationHandler target: div
              div.bind "change", -> $(@).toggleClass "imgExpanded" if (div = $ "#imageType+label").exists()
              $("input[type=checkbox]", div).riceCheck() if (div = $ "#updater").exists()
  
    SS.nav.init();
    SS.pages.init();
    SS.menuEntries.init();
    SS.riceInputs.init();
    SS.logoReflect.init();
  
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
        
          ret = []
          return parseInt value for value in val
  
        return (if Array.isArray(val) and typeof val[0] isnt "object" then val[0] else val)
  
      SS.conf = [];
  
      for key of defaultConfig
        SS.conf[key] = parseVal key, @get key
        SS.conf["Small Font Size"] = 
          if SS.conf["Font Size"] > 11 and !SS.conf["Bitmap Font"] then 12 else SS.conf["Font Size"]
        SS.conf["Sidebar Position String"] = 
          if SS.conf["Sidebar Position"] isnt 2 and SS.conf["Sidebar Position"] isnt 5 then "right" else "left"
        SS.conf["Sidebar Position oString"] = 
          if SS.conf["Sidebar Position String"] is "right" then "left" else "right"
  
    get: (name) ->
      val = if @hasGM
        GM_getValue NAMESPACE + name
      else
        localStorage.getItem NAMESPACE + name
  
      return JSON.parse val if val?
      return defaultConfig[name];
  
    set: (name, val) ->
      name = NAMESPACE + name;
  
      if typeof val isnt "number"
        val = JSON.stringify val
  
      return (if this.hasGM
        GM_setValue name, val
      else
        localStorage.setItem name, val
      )