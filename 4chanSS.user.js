// ==UserScript==
// @name          4chan Style Script
// @version       3.1.0
// @description   Customize 4chan to your liking right on the page itself.
// @namespace     ahodesuka.github.com
// @run-at        document-start
// @match         *://boards.4chan.org/*
// @match         *://sys.4chan.org/*
// @match         *://a.4cdn.org/*
// @match         *://i.4cdn.org/*
// @grant         GM_getValue
// @grant         GM_setValue
// @grant         GM_deleteValue
// @grant         GM_openInTab
// @updateURL 	  https://github.com/zixaphir/4chan-Style-Script/raw/stable/builds/4chanSS.meta.js
// @downloadURL   https://github.com/zixaphir/4chan-Style-Script/raw/stable/builds/4chanSS.user.js
// ==/UserScript==
(function() {
  var $, MAX_FONT_SIZE, MIN_FONT_SIZE, NAMESPACE, SS, VERSION, d, defaultConfig, fontListSWF, inputImages, themeInputs, __toHexStr,
    __slice = [].slice;

  d = document;

  defaultConfig = {
    'Show Board Name': [true, "Toggle visibility of the board name."],
    'Show Text Board': [true, "Toggle visibility of the text board link"],
    "Show Logo": [true, "Toggle visibility of the logo", null, true],
    "Show Logo Reflection": [true, "Toggle visibility of the logo reflection", "Show Logo", true, true],
    "Fixed Logo Position": [true, "Moves logo and board name into the sidebar"],
    "Auto Hide Thread Watcher": [true, "Hides watched threads unless the mouse is over the watcher"],
    "Slim Threads": [false, "Reduces the spacing between threads"],
    "Slim Replies": [true, "Reduces the size of replies"],
    "Rounded Edges": [true, "Makes certain elements have round edges"],
    "Emoji Icons": [false, "Show icons for different e-mails"],
    "Smart Tripcode Hider": [false, "Hides the name field if the value contains a tripcode"],
    "Hide Checkboxes": [true, "Hides the delete/report checkboxes"],
    "Show/Hide Menu Entry": [true, "Replaces the hide/show post button with a menu entry"],
    "Underline Links": [false, "If enabled links that are normally underlined will remain so"],
    "Expanding Form Inputs": [true, "Makes certain form elements expand on focus"],
    "Custom Navigation Links": [true, "Use specified links instead of showing all boards"],
    "SFW/NSFW Themes": [true, "Allows you to choose one theme for SFW boards and another for NSFW boards."],
    "Style Scrollbars": [true, "Make the scroll bar match the theme"],
    "Style Post Info": [true, "Style the post information to differ from the actual post."],
    "Sage Identification": [
      3, "Adds identification to posts that do not bump threads.", [
        {
          name: "None",
          value: 1
        }, {
          name: "Text",
          value: 2
        }, {
          name: "Icon",
          value: 3
        }
      ]
    ],
    "Emoji Position": [
      "after", "Changes the location of emoji icons", [
        {
          name: "Before",
          value: "before"
        }, {
          name: "After",
          value: "after"
        }
      ]
    ],
    "Side Margin": [
      5, "Change the size of the margin opposite of the sidebar", [
        {
          name: "Large",
          value: 65
        }, {
          name: "Medium",
          value: 25
        }, {
          name: "Small",
          value: 5
        }, {
          name: "None",
          value: 0
        }
      ]
    ],
    "Layout": [
      1, "Change the layout of the main content", [
        {
          name: "Fit Width",
          value: 1
        }, {
          name: "Fit Content",
          value: 2
        }, {
          name: "Centered",
          value: 3
        }
      ], true
    ],
    "Navigation Bar Position": [
      2, "Sets the position of the navigation bar", [
        {
          name: "Top",
          value: 1
        }, {
          name: "Bottom",
          value: 2
        }
      ]
    ],
    "Post Form": [
      2, "Change the transition for the post form", [
        {
          name: "Slide Up",
          value: 1
        }, {
          name: "Fade",
          value: 2
        }, {
          name: "Fixed",
          value: 3
        }, {
          name: "Float",
          value: 4
        }
      ]
    ],
    "Sidebar Position": [
      1, "Change the position of the sidebar", [
        {
          name: "Right",
          value: 1
        }, {
          name: "Left",
          value: 2
        }, {
          name: "Right (Old)",
          value: 4
        }, {
          name: "Left (Old)",
          value: 5
        }, {
          name: "Disabled",
          value: 3
        }
      ], true
    ],
    "Pages Position": [
      1, "Change the location of the page links", [
        {
          name: "Drop Down",
          value: 1
        }, {
          name: "Fixed",
          value: 2
        }, {
          name: "Fixed Vertical",
          value: 3
        }, {
          name: "Hidden",
          value: 4
        }
      ]
    ],
    "Font": [
      "sans-serif", "Set the default font family", [
        {
          name: "Default",
          value: "sans-serif"
        }, {
          name: "Monospace",
          value: "monospace"
        }, {
          name: "Ubuntu",
          value: "Ubuntu"
        }, {
          name: "Consolas",
          value: "Consolas"
        }, {
          name: "Droid Sans",
          value: "Droid Sans"
        }, {
          name: "Segoe UI",
          value: "Segoe UI"
        }, {
          name: "Calibri",
          value: "Calibri"
        }, {
          name: "Arial",
          value: "Arial"
        }, {
          name: "Lucida Grande",
          value: "Lucida Grande"
        }, {
          name: "Helvetica",
          value: "Helvetica"
        }
      ]
    ],
    "Font Size": [12, "Set the general size of text (Pixels)"],
    "Bitmap Font": [false, "Check @ if you are using a bitmap font"],
    "Nav Links": [
      {
        text: "anime & manga",
        link: "boards.4chan.org/a/"
      }, {
        text: "anime/cute",
        link: "boards.4chan.org/c/"
      }, {
        text: "technology",
        link: "boards.4chan.org/g/"
      }, {
        text: "video game generals",
        link: "boards.4chan.org/vg/"
      }, {
        text: "otaku culture",
        link: "boards.4chan.org/jp/"
      }
    ],
    "Nav Link Delimiter": ["&nbsp;-&nbsp;", "Sets the character which will separate navigation links"],
    "Themes": [],
    "Hidden Themes": [],
    "Selected Theme": 0,
    "NSFW Theme": 0,
    "Selected Mascots": 0,
    "Mascots": [],
    "Hidden Mascots": []
  };

  MAX_FONT_SIZE = 18;

  MIN_FONT_SIZE = 8;

  NAMESPACE = "4chanSS.";

  VERSION = "3.1.0";

  inputImages = "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAgCAYAAAAv8DnQAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAP9JREFUOMvV0CFLQ2EYxfHfrtdiURgbmCxOmFPBJgZZ0CQD0Q+goFkwabWIyWIWFgwmy7Qp7DPI3GD7ACZlYLNcy31ljG0aDHrSy3N43nOef6ZULBiifczEQ8wV7OAtGmBO4wgfOI2whsXUnMAJ8rhCJ8IxDpHDHpZwixqM5XPZBBtYxioauEgjRLjBI2bRxTneQ6EYCS4xiTu89DbONJrtP88hwnV64hm28YRqyPsFDkmSGKUYFubnsqignM7rqDWa7dcAqoLdnsXwrgZQ5QG/l8MVIxX1ZPar/lUyUOsv+aMzv+0Qw3OrM4VNrKfzB9yXioVu6LDVx+EA4/+Gwycw/Uz36O07WwAAAABJRU5ErkJggg==";

  fontListSWF = "http://ahodesuka.github.com/FontList.swf";

  themeInputs = [
    {
      dName: "Body Background",
      name: "bgColor",
      property: "background-color"
    }, {
      dName: "Reply Background",
      name: "mainColor",
      property: "background-color"
    }, {
      dName: "Reply Border",
      name: "brderColor",
      property: "border-color"
    }, {
      dName: "Input Background",
      name: "inputColor",
      property: "background-color"
    }, {
      dName: "Input Border",
      name: "inputbColor",
      property: "border-color"
    }, {
      dName: "Backlinks",
      name: "blinkColor",
      property: "color"
    }, {
      dName: "4chan x Links",
      name: "jlinkColor",
      property: "color"
    }, {
      dName: "Links",
      name: "linkColor",
      property: "color"
    }, {
      dName: "Links Hovered",
      name: "linkHColor",
      property: "color"
    }, {
      dName: "Names",
      name: "nameColor",
      property: "color"
    }, {
      dName: "Quote",
      name: "quoteColor",
      property: "color"
    }, {
      dName: "Text",
      name: "textColor",
      property: "color"
    }, {
      dName: "Sage",
      name: "sageColor",
      property: "color"
    }, {
      dName: "Tripcodes",
      name: "tripColor",
      property: "color"
    }, {
      dName: "Titles",
      name: "titleColor",
      property: "color"
    }, {
      dName: "Timestamps",
      name: "timeColor",
      property: "color"
    }
  ];

  __toHexStr = function() {
    var i, s;
    s = "";
    i = 7;
    while (i-- >= 0) {
      s += ((this >>> (i * 4)) & 0xf).toString(16);
    }
    return s;
  };

  /*
   STYLE SCRIPT LIBRARY
   More or less based off jQuery
  */


  $ = (function() {
    function $(selector, root) {
      if (this instanceof $) {
        this.constructor = $;
        this.elems = [];
        this.length = function() {
          return this.elems.length;
        };
        return this.init(selector, root);
      } else {
        return new $(selector, root);
      }
    }

    $.prototype.check = function(el) {
      return (el.constructor === $ ? el.get() : el);
    };

    $.prototype.init = function(selector, root) {
      var atRegEx, attribs, el, tag, tagCheck, val, _ref;
      if (selector == null) {
        return this;
      }
      if (selector.constructor === $) {
        return selector;
      } else if (typeof selector === 'string') {
        root = root || d;
        tagCheck = /^<(\w+)([^>]*)>(.*)$/.exec(selector);
        root = this.check(root);
        if (tagCheck) {
          tag = d.createElement(tagCheck[1]);
          if (tagCheck[2]) {
            atRegEx = /(\w+)=((?:"(?:[^"]+)"|'(?:[^']+)'|(?:\w+)))/g;
            while ((attribs = atRegEx.exec(tagCheck[2])) != null) {
              val = attribs[2];
              if (((_ref = val[0]) === '"' || _ref === "'") && val[0] === val[val.length - 1]) {
                val = val.substr(1, val.length - 2);
              }
              tag.setAttribute(attribs[1], val);
            }
          }
          tag.innerHTML = tagCheck[3];
          this.elems = [tag];
        } else if (/^#[A-Za-z][\w\-.:]+$/.test(selector) && root === d) {
          if ((el = root.getElementById(selector.substr(1))) != null) {
            this.elems = [el];
          }
        } else if (root.querySelectorAll != null) {
          this.elems = __slice.call(root.querySelectorAll(selector));
        }
      } else if (selector.nodeType) {
        this.elems = [selector];
      } else if (Array.isArray(selector)) {
        this.elems = __slice.call(selector);
      }
      return this;
    };

    $.prototype.clone = function() {
      var ret;
      ret = [];
      this.each(ret.push(this.cloneNode(true)));
      return new $(ret);
    };

    $.prototype.elements = function() {
      if (!this.hasSingleEl()) {
        return this;
      }
      this.elems = __slice.call(this.elems[0].elements);
      return this;
    };

    $.prototype.get = function(index) {
      if (index == null) {
        if (this.elems.length === 1) {
          return this.elems[0];
        }
        if (!this.hasSingleEl()) {
          return this.elems;
        }
      } else {
        return this.elems[index];
      }
    };

    $.prototype.prepend = function(el) {
      el = this.check(el);
      return this.each(function() {
        return this.insertBefore(el, this.firstChild);
      });
    };

    $.prototype.append = function(el) {
      el = this.check(el);
      return this.each(function() {
        return this.appendChild(el);
      });
    };

    $.prototype.before = function(el) {
      el = this.check(el);
      return this.each(function() {
        return this.parentNode.insertBefore(el, this);
      });
    };

    $.prototype.after = function(el) {
      el = this.check(el);
      return this.each(function() {
        if (this.nextSibling != null) {
          return this.parentNode.insertBefore(el, this.nextSibling);
        } else if (this.parentNode != null) {
          return this.parentNode.appendChild(el);
        }
      });
    };

    $.prototype.replace = function(el) {
      return this.each(function() {
        return $(this).before(el).remove();
      });
    };

    $.prototype.html = function(html) {
      return (html == null ? this.elems[0].innerHTML : this.each(function() {
        return this.innerHTML = html;
      }));
    };

    $.prototype.text = function(text) {
      if (this.length() === 0) {
        return;
      }
      if (text == null) {
        return;
      }
      return this.each(function() {
        return this.textContent = text;
      });
    };

    $.prototype.appendText = function(text) {
      if (text == null) {
        return;
      }
      return this.each(function() {
        return this.textContent += text;
      });
    };

    $.prototype.attr = function(name, val) {
      if (val == null) {
        return (!this.hasSingleEl() ? this : this.elems[0].getAttribute(name));
      } else if (val === "") {
        return this.each(function() {
          return this.removeAttribute(name);
        });
      }
      return this.each(function() {
        return this.setAttribute(name, val);
      });
    };

    $.prototype.disabled = function(bDisabled) {
      return (bDisabled == null ? this.elems[0].disabled : this.each(function() {
        return this.disabled = bDisabled;
      }));
    };

    $.prototype.toggle = function(bHidden) {
      return this.each(function() {
        var that;
        that = $(this);
        if (bHidden == null) {
          bHidden = this.attr("disabled") === "true";
        }
        return that.attr("hidden", bHidden || "");
      });
    };

    $.prototype.hide = function() {
      return this.toggle(true);
    };

    $.prototype.show = function() {
      return this.toggle(false);
    };

    $.prototype.val = function(val) {
      var el;
      if (val == null) {
        el = this.elems[0];
        if (el == null) {
          return false;
        }
        switch (el.type) {
          case 'checkbox':
          case 'radio':
            el.checked === true;
            break;
          default:
            if (/^\d+$/.test(el.value)) {
              return parseInt(el.value);
            }
            return el.value;
        }
      }
      return this.each(function() {
        switch (this.type) {
          case 'checkbox':
          case 'radio':
            return this.checked = val;
          default:
            return this.value = val;
        }
      });
    };

    $.prototype.checked = function(state) {
      return this.each(function() {
        return this.checked = state;
      });
    };

    $.prototype.addClass = function(classNames) {
      classNames = classNames.split(" ");
      return this.each(function() {
        var name, _i, _len;
        for (_i = 0, _len = classNames.length; _i < _len; _i++) {
          name = classNames[_i];
          if (!$(this).hassClass(name)) {
            this.className += (this.className ? " " : "")(name);
          }
        }
      });
    };

    $.prototype.hasClass = function(className) {
      if (!(this.hasSingleEl() || (this.elems[0].className != null))) {
        return false;
      }
      return (new RegExp("\\b" + className + "\\b")).text(this.elems[0].className);
    };

    $.prototype.removeClass = function(classNames) {
      classNames = classNames.split(" ");
      return this.each(function() {
        var check, elClassNames, name, newClassNames, pass, _i, _j, _len, _len1;
        elClassNames = this.className.split(" ");
        newClassNames = [];
        for (_i = 0, _len = elClassNames.length; _i < _len; _i++) {
          name = elClassNames[_i];
          if (!(pass)) {
            continue;
          }
          pass = true;
          for (_j = 0, _len1 = classNames.length; _j < _len1; _j++) {
            check = classNames[_j];
            if (check === name) {
              pass = false;
              break;
            }
          }
          if (!pass) {
            continue;
          }
          newClassNames.push(name);
        }
        return this.className = newClassNames.join(" ");
      });
    };

    $.prototype.toggleClass = function(classNames) {
      classNames = classNames.split(" ");
      return this.each(function() {
        var add, name, remove, that, _i, _len;
        that = $(this);
        remove = [];
        add = [];
        for (_i = 0, _len = classNames.length; _i < _len; _i++) {
          name = classNames[_i];
          if (that.hasClass(name)) {
            remove.push(name);
          } else {
            add.push(name);
          }
        }
        if (remove.length) {
          that.removeClass(remove.join(" "));
        }
        if (add.length) {
          return that.addClass(add.join(" "));
        }
      });
    };

    $.prototype.remove = function() {
      return this.each(function() {
        return this.parentNode.removeChild(this);
      });
    };

    $.prototype.parent = function() {
      if (!this.hasSingleEl()) {
        return this;
      }
      return new $(this.elems[0].parentNode);
    };

    $.prototype.children = function(selector) {
      if (!this.hasSingleEl()) {
        return this;
      }
      if (!selector) {
        selector = '*';
      }
      return new $(selector, this.elems[0]);
    };

    $.prototype.nextSibling = function(selector) {
      var i, item, m, s, t;
      if ((this.hasSingleEl() ? this.elems[0].nextSibling == null : true)) {
        return new $(null);
      }
      if (selector == null) {
        m = new $(selector, this.elems[0].parentNode);
        s = this.elems[0].parentNode.childNodes;
        i = s.length;
        t = null;
        while (item = s[--i]) {
          if (s[i] === this.elems[0] && (t == null)) {
            return new $(null);
          }
          if (s[i] === this.elems[0] && (t != null)) {
            return new $(t);
          }
          if (m.elems.indexOf(s[i]) !== -1) {
            t = s[i];
          }
        }
      }
      return new $(this.elems[0].nextSibling);
    };

    $.prototype.previousSibling = function(selector) {
      var i, item, m, s, t;
      if ((this.hasSingleEl() ? this.elems[0].previousSibling == null : true)) {
        return new $(null);
      }
      if (selector == null) {
        m = new $(selector, this.elems[0].parentNode);
        s = this.elems[0].parentNode.childNodes;
        i = 0;
        t = null;
        while (item = s[++i]) {
          if (s[i] === this.elems[0] && (t == null)) {
            return new $(null);
          }
          if (s[i] === this.elems[0] && (t != null)) {
            return new $(t);
          }
          if (m.elems.indexOf(s[i]) !== -1) {
            t = s[i];
          }
        }
      }
      return new $(this.elems[0].previousSibling);
    };

    $.prototype.bind = function(type, listener) {
      return this.each(function() {
        return this.addEventListener(type, listener, false);
      });
    };

    $.prototype.unbind = function(type, listener) {
      return this.each(function() {
        return this.removeEventListener(type, listener, false);
      });
    };

    $.prototype.blur = function() {
      return this.each(function() {
        return this.blur();
      });
    };

    $.prototype.click = function() {
      return this.each(function() {
        return this.click();
      });
    };

    $.prototype.scrollIntoView = function(alignWithTop) {
      return this.each(function() {
        return this.scrollIntoView(alignWithTop);
      });
    };

    $.prototype.fire = function(e) {
      var evt;
      evt = d.createEvent("HTMLEvents");
      return this.each(function() {
        e.initEvent(evt, true, true);
        return this.dispatchEvent(evt);
      });
    };

    $.prototype.delay = function(fn, time) {
      return this.each(function() {
        var that;
        that = this;
        return setTimeout((function() {
          return fn.call(that);
        }), time);
      });
    };

    $.prototype.each = function(fn, args) {
      var el, _i, _j, _len, _len1, _ref, _ref1;
      if (args != null) {
        if (!Array.isArray(args)) {
          args = [args];
        }
        _ref = this.elems;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          el = _ref[_i];
          fn.apply(el, args);
        }
      } else {
        _ref1 = this.elems;
        for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
          el = _ref1[_j];
          fn.call(el);
        }
      }
      return this;
    };

    $.prototype.exists = function() {
      return this.elems.length > 0;
    };

    $.prototype.hasSingleEl = function() {
      return this.elems.length === 1;
    };

    $.prototype.riceFile = function() {
      return this.each(function() {
        var div, next, that;
        that = $(this);
        next = that.next;
        if (that.attr("riced")) {
          return;
        }
        div = $("<div class=riceFile><div>BROWSE...</div><span></span>");
        return that.attr("riced", true).bind("change", function() {
          return that.nextSibling("span").text($("#qr.dump").exists() ? "" : this.files[0].name);
        }).bind("focus", function() {
          return that.nextSibling("div").addClass("focus");
        }).bind("blur", function() {
          return that.nextSibling("div").removeClass("focus");
        }).parent().prepend(div.prepend(this));
      });
    };

    $.prototype.riceCheck = function() {
      return this.each(function() {
        var click, div, _ref;
        click = function(e) {
          e.preventDefault();
          return this.previousSibling.click();
        };
        if (this.isRiced) {
          return;
        }
        if (((_ref = this.nextSibling) != null ? _ref.className : void 0) === 'riceCheck') {
          return $(this.nextSibling).bind("click", click);
        }
        div = $("<div class=riceCheck>").bind("click", click);
        $(this).hide().after(div);
        return this.isRiced = true;
      });
    };

    $.prototype.jsColor = function() {
      return this.each(function() {
        return this.color = new SS.jscolor.color(this);
      });
    };

    return $;

  })();

  SS = {
    browser: {},
    ppDark: {
      com: "#969896",
      kwd: "#81a2be",
      typ: "#b294bb",
      str: "#b5bd68",
      pun: "#aac674",
      lit: "#8abeb7"
    },
    init: function(reload) {
      var i, mDiff, m_VERSION, nsTheme, ntMascots, ntThemes, otMascots, otThemes, sMascots, sTheme;
      if (!reload) {
        if (/^about:neterror/.test(d.dURI)) {
          return;
        }
        SS.browser.webkit = /AppleWebKit/.test(navigator.userAgent);
        SS.browser.gecko = /Gecko\//.test(navigator.userAgent);
        SS.location = SS.getLocation();
        if (m_VERSION = SS.Config.get("VERSION") !== VERSION) {
          ntMascots = SS.Mascots.defaults.length;
          ntThemes = SS.Themes.defaults.length;
          otMascots = SS.Config.get("Total Mascots") || ntMascots;
          otThemes = SS.Config.get("Total Themes") || ntThemes;
          sMascots = SS.Config.get("Selected Mascots");
          sTheme = SS.Config.get("Selected Theme");
          nsTheme = SS.Config.get("NSFW Theme");
          if (otMascots !== ntMascots) {
            mDiff = ntMascots - otMascots;
            i = sMascots.length - 1;
            while (sMascots[i] > otMascots) {
              sMascots[i--] += mDiff;
            }
          }
          SS.Config.set("Selected Mascots", sMascots);
          if (otThemes !== ntThemes) {
            if (sTheme >= otThemes) {
              sTheme += ntThemes - otThemes;
              SS.Config.set("Selected Theme", sTheme);
              if (nsTheme >= otThemes) {
                nsTheme += ntThemes - otThemes;
                SS.Config.set("NSFW Theme", nsTheme);
              }
            }
          }
          SS.Config.set("VERSION", VERSION);
          SS.Config.set("Total Mascots", ntMascots);
          SS.Config.set("Total Themes", ntThemes);
        }
        SS.Config.init();
        SS.Themes.init();
        SS.Mascots.init();
        if ($("link[rel=stylesheet]", d.head).exists()) {
          SS.insertCSS();
        } else {
          $(d).bind("DOMNodeInserted", SS.insertCSS);
        }
        if (/complete|interactive/.test(d.readyState)) {
          return SS.DOMLoaded();
        } else {
          return $(d).bind("DOMContentLoaded", SS.DOMLoaded);
        }
      } else {
        SS.insertCSS();
        return SS.DOMLoaded(true);
      }
    },
    insertCSS: function() {
      var css, reload;
      reload = $("#ch4SS").exists();
      if (reload || $("link[rel=stylesheet]", d.head).exists()) {
        $(d).unbind("DOMNodeInserted", SS.insertCSS);
      } else {
        return;
      }
      if (!reload && !SS.location.catalog && (css = $("link[rel*='stylesheet']:not([href*='flags'])")).exists()) {
        css.remove();
      }
      SS.bHideSidebar = SS.location.sub !== "boards" || SS.location.catalog || SS.location.board === "f";
      css = " /* BIGGEST WIP OF THE SCRIPT */ @import url(" + location.protocol + "//fonts.googleapis.com/css?family=PT+Sans+Narrow); * { font-family:" + SS.formatFont(SS.conf["Font"]) + "!important; font-size:" + SS.conf["Font Size"] + "px!important; } *:focus { outline:none!important; -moz-outline:none!important; -moz-user-focus:none!important; } [draggable] { -webkit-user-select:none; -moz-user-select:none; -o-user-select:none; user-select:none; } input:active:not([disabled]), body input:focus:not([type]), body input[type=password]:focus, body input[type=text]:focus, body select:focus, body textarea:focus { border:1px solid " + SS.theme.brderColor.hex + "!important; outline:1px solid " + SS.theme.linkColor.hex + "!important; outline-offset:-2px!important; } ::-moz-focus-inner { border:0; padding:0; } ::selection { background:" + SS.theme.linkColor.hex + "; color:#" + (SS.theme.linkColor.isLight ? "000" : "fff") + "!important; } ::-moz-selection { background:" + SS.theme.linkColor.hex + "; color:#" + (SS.theme.linkColor.isLight ? "000" : "fff") + "!important; } img { border:0!important; } hr { border:0!important; border-top:1px solid rgba(" + SS.theme.brderColor.rgb + ",.9)!important; clear:left; margin:.3em 0!important; } /* Some original Yotsuba CSS */ div.post div.file .fileThumb { float:left; margin-left:20px; margin-right:20px; margin-top:3px; margin-bottom:5px; } .postContainer { display:block; } div.post blockquote.postMessage { display:block; } div.post { margin:2px 0; } div.fileText { margin:1px 10px 1px 20px; } div.reply div.postInfo { display:block!important; } #delform div.reply:not([hidden]), div.image_expanded { display:table !important; } div.thread { margin:0px; clear:both; } table.flashListing { border-spacing:1px; margin-left:auto; margin-right:auto; } div.pagelist div.pages { padding:4px; } .globalMessage { text-align:center; } .prettyprint { padding:5px!important; display:inline-block; max-height:400px; overflow-x:auto; max-width:600px; } span.spoiler, s, s a, s:not(:hover) span.quote { color:#000!important; background:#000!important; text-decoration:none; } span.spoiler:hover, span.spoiler:focus, s:hover, s:focus, s:hover a { color:#fff!important; } /* End */ h1, h2, h3, h4, h5 { margin:.4em 0!important; } *[style*='font-weight: bold;'], h3, b, strong, body a.YTLT-link, .postInfo span.name, .postInfo span.subject { font-weight:" + (SS.conf["Bitmap Font"] ? 4 : 7) + "00!important; } a, .button, a.quotelink, .deadlink, span>a.replylink { " + (!SS.conf["Underline Links"] ? "text-decoration:none!important;" : "") + " color:" + SS.theme.linkColor.hex + "!important; font-weight:normal!important; -webkit-transition:all .1s; -moz-transition:all .1s; -o-transition:all .1s; } body a.YTLT-link { " + (SS.location.catalog ? "white-space:normal;" : "") + " font-style:normal!important; -webkit-transition:none; -moz-transition:none; -o-transition:none; } body .YTLT-embed { border:0!important; } a.filtered { text-decoration:line-through" + (SS.conf["Underline Links"] ? " underline" : "") + "!important; } body a:hover, .button:hover, .posteruid span.hand:hover, blockquote a.quotelink:hover, #boardLinks>a.selectedBoard, div.post div.postInfo span~span.postNum a:hover { color:" + SS.theme.linkHColor.hex + "!important; text-shadow:rgba(" + SS.theme.linkHColor.rgb + ",.2) 0 0 2px!important; } .spoiler a { -webkit-transition:none; -moz-transition:none; -o-transition:none; } a:not([href]), a[href='javascript:;'], a[href='#'], a[href='#']:hover, #playerDiv a, #playerDiv a:hover, #settingsWindowLink, #menu .entry { color:" + SS.theme.jlinkColor.hex + "!important; } .nameBlock .name, .nameBlock .useremail[href] .name, #post-preview .post-author, #delform[action='https://sys.4chan.org/f/up.php'] .name { color:" + SS.theme.nameColor.hex + "!important; } .useremail[href] span.postertrip, span>span.postertrip, #post-preview .post-tripcode, #delform[action='https://sys.4chan.org/f/up.php'] .postertrip { color:" + SS.theme.tripColor.hex + "!important; } .postMessage .quote { color:" + SS.theme.quoteColor.hex + "!important; } a.playerLoadAllLink:hover { color:" + SS.theme.linkHColor.hex + "!important; } a.forwardlink, a.playerLoadAllLink { color:" + SS.theme.linkColor.hex + "!important; } .dateTime { color:" + SS.theme.timeColor.hex + "!important; } .postInfo .subject, .replytitle, #delform[action='https://sys.4chan.org/f/up.php'] .subject { color:" + SS.theme.titleColor.hex + "!important; } a.linkmail[href='mailto:sage'], a.linkmail[href='mailto:sage']:hover, #qr .warning, span[style='color:#F00000'], span[style='color:#FF0000;font-weight:normal'] { color:" + SS.theme.sageColor.hex + "!important; text-shadow:none!important; } .dialog, .reply, .hidden_thread, .panel, .stub, " + (SS.conf["Layout"] !== 2 ? "a.summary," : "") + " option, div[id*=jsMath], #imgControls, #imgControls .preload, #playerDiv, #playerListMenu, #playerListItemMenu, #playerSettings, #prefetch, #watcher>div, #jsMath_float>*, #content>#ctrl, .deleteform, table.flashListing tr:nth-of-type(2n+1) { background:rgba(" + SS.theme.mainColor.rgb + ",.9)!important; } #boardNavDesktop, #globalMessage { background:" + SS.theme.mainColor.hex + "!important; } table.flashListing .highlightPost { background:none!important; } table.flashListing .highlightPost::after { content:'●'; color:rgb(214,149,149); position:relative!important; top:2px!important; } .flashListing > tbody { padding-top:200px!important; } table.flashListing { background:rgba(" + SS.theme.mainColor.shiftRGB(-16) + ",.9)!important; position:relative; z-index:3; } table.postForm td { background:none!important; border:0!important; } .postContainer>.op.highlight, .postContainer>.op:target, .postContainer.qphl, #delform[action='https://sys.4chan.org/f/up.php'], #delform[action='https://sys.4chan.org/f/up.php'] .postblock { background:none!important; border:none!important; } a, button, input[type=checkbox], input[type=radio], input[type=button], input[type=submit], #themeoptions #tMascot div, #themeoptions #tThemes>div, .pointer, .riceCheck, .trbtn { cursor:pointer; } body, img[alt=Closed], img[alt=Sticky], .navLinks, .deleteform, #navtopright, #navtopright>a, #imageType+label, #qr>form #spoilerLabel, .preview>label, .close, .remove, .menu_button, #boardNavDesktop>.boardList, .hide_reply_button:not(.stub)>a:first-child>span, .hidden_thread>span, .hidden_thread a:first-child>span, .stub>a:first-child>span, .mPagelist .pages span { color:transparent!important; font-size:0!important; } button, form[name=post] input[name=email]+label, form[name=post] #com_submit+label, input[type=button], input[type=submit], #imgControls label, #qr>.move, #qr>form #spoilerLabel::after, #stats .move, #themeoptions #tThemes>div p a, #updater span, #updater .move, #watcher .move, .deleteform::before, .boardBanner .boardSubtitle, .preview>label::after, .riceFile div, .trbtn { text-transform:uppercase; } #qr>form>div:first-child .field:not(#dump):focus+span, input:not([type=submit]), select, select *, textarea, #navlinks, #themeoptions label, #themeoptions label>span, #themeoptions #tMascot div a, #boardNavDesktop>.boardList a:not(#lastmuSettingsWindowLink):not(.current), #updater label, #updater span, .container * { font:" + SS.conf["Small Font Size"] + "px " + SS.formatFont(SS.conf["Font"]) + "!important; } #qr>form #spoilerLabel::after, button, form[name=post] input[name=email]+label, form[name=post] #com_submit+label, input[type=button], input[type=submit], #imgControls label, #stats .move, #updater span, #updater .move, #watcher .move, #stats span, .deleteform::after, .preview>label::after, .riceFile div { font-size:" + (SS.conf["Bitmap Font"] ? SS.conf["Font Size"] : 9) + "px!important; } #qr>.move, #themeoptions #tMascot div a, #themeoptions #tThemes>div p a, #watcher>div>a:first-child, .container::before, .deleteform::before, .riceFile span, .trbtn { font-size:" + (SS.conf["Bitmap Font"] ? SS.conf["Font Size"] : 10) + ("px!important; } " + (!SS.conf["Show Board Name"] ? ".boardBanner .boardTitle," : "") + " " + (!SS.conf["Show Text Board"] ? ".boardBanner .boardSubtitle," : "") + " " + (SS.conf["Post Form"] !== 4 ? "#qr>.move .close," : "") + " " + (SS.conf["Post Form"] === 3 ? "#qr>.move #autohide,#qr>.move .riceCheck," : "") + " " + (SS.conf["Pages Position"] === 4 ? ".pages," : "") + " " + (SS.conf["Hide Checkboxes"] ? ".postInfo>input[type=checkbox],.postInfo>.riceCheck,.deleteform," : "") + " " + (SS.conf["Show/Hide Menu Entry"] ? ".hide_thread_button:not(.hidden_thread),.hide_reply_button:not(.stub)," : ".stub>.menu_button,") + " " + (SS.conf["Custom Navigation Links"] ? "#boardNavDesktop>.boardList," : "") + " " + (SS.location.catalog ? ".boardBanner," : "") + " .ad-plea, .mobile, [hidden], .hidden:not(.postContainer), body>hr, body>form[name=post], .navLinksBot, .navLinks a[href$='catalog'], .navLinks #search-btn, .navLinks #search-cnt, .navLinks a[href='#bottom'], #navtopright a[target=_blank], .stylechanger, #absbot, #boardNavDesktopFoot, .navSmall, .pagelist, .pages~div, .postingMode, .sideArrows:not(.hide_reply_button), #delform>hr, body>.closed>br, .board>hr:nth-last-child(2), div.center, .mFileInfo, #imageExpand, #settingsWindowLink, .menu_button>span, .hidden_thread+div.opContainer, .stub+div+div.post, #hideBtn, span#tobottom, #filters-ctrl, .toggleCatalog, #topnav~#globalMessage, #toggleMsgBtn, #first-run, #search-label, #search-label-bottom, #content>hr, #content>.navLinks, #content>#styleSwitcher, #navtopright>a[href='https://4chan-x.just-believe.in/'] { display:none!important; } .btn-wrap::after, .btn-wrap::before { content:''!important; } .btn-wrap { padding:0 2px; } #content #settings { float:none!important; text-align:center!important; } #content #info { float:none!important; position:absolute; } #content>#ctrl { padding:1px 2px; position:fixed; top:0; width:100%; z-index:13; } a.summary, a.summary:hover, blockquote>.abbr, #globalMessage>b, button, div, div.autohide>a, form[name=delform], form[name=post] input[name=email]+label, form[name=post] #com_submit+label, input:not(.jsColor), select, table.exif td, textarea, tr, td, td label, #navtopright>a:not(:first-child)::before, #qr>.move, #qr>form #spoilerLabel::after, #stats span, #themeoptions #toNav li label.selected, #themeoptions #toNav li label:hover, #boardNavDesktop>.boardList a.current, .deleteform::before, .deleteform::after, .summary, .preview>label::after, .reply, .replymode, #delform[action='https://sys.4chan.org/f/up.php'] .postblock, .mPagelist .pages span strong>a { color:") + SS.theme.textColor.hex + "!important; } body, input, select, textarea, .replyContainer>.reply, .hidden_thread, .postInfo, .stub, .thread.stub, .riceFile, .riceCheck, .boardBanner .boardTitle, .ys_playerContainer, #qr>form>.captchaimg>img, #boardNavDesktop, #themeoptions #tMascot div, #themeoptions #tThemes .reply, #themeoptions #tNavLinks .navlink .handle { box-sizing:border-box; -moz-box-sizing:border-box; -webkit-box-sizing:border-box; } #qr { box-sizing:padding-box; -moz-box-sizing:padding-box; -webkit-box-sizing:padding-box; } input::-webkit-input-placeholder, textarea::-webkit-input-placeholder { color:rgba(" + SS.theme.textColor.rgb + ",.4)!important; } input:-moz-placeholder, textarea:-moz-placeholder { color:rgba(" + SS.theme.textColor.rgb + ",.4)!important; } body { background:" + SS.theme.bgImg.get() + SS.theme.bgColor.hex + "!important; margin:0!important; margin-bottom:" + (SS.conf["Navigation Bar Position"] === 1 ? 23 : 43) + "px!important; " + (!SS.bHideSidebar && SS.conf["Sidebar Position"] !== 3 ? "margin-" + SS.conf["Sidebar Position String"] + ":265px!important;" : "") + " padding:0!important; } /* JS COLOR */ .jscBox { width: 251px; height: 155px; } .jscBoxB, .jscPadB, .jscPadM, .jscSldB, .jscSldM, .jscBtn { position: absolute; clear: both; } .jscBoxB { left: 320px; bottom: 20px; z-index: 30; border: 1px solid; border-color: ThreeDHighlight ThreeDShadow ThreeDShadow ThreeDHighlight; background: ThreeDFace; } .jscPad { width: 181px; height: 101px; background-image: linear-gradient(to bottom, rgba(255,255,255,0), rgba(255,255,255,1)), linear-gradient(to right, rgb(255,0,0), rgb(255,255,0), rgb(0,255,0), rgb(0,255,255), rgb(0,0,255), rgb(255,0,255), rgb(255,0,0)); background-repeat: no-repeat; background-position: 0 0; } .jscPadB { left: 10px; top: 10px; border: 1px solid; border-color: ThreeDShadow ThreeDHighlight ThreeDHighlight ThreeDShadow; } .jscPadM { left: 0; top: 0; width: 200px; height: 121px; cursor: crosshair; background-image: url('data:image/gif;base64,R0lGODlhDwAPAKEBAAAAAP///////////yH5BAEKAAIALAAAAAAPAA8AAAIklB8Qx53b4otSUWcvyiz4/4AeQJbmKY4p1HHapBlwPL/uVRsFADs='); background-repeat: no-repeat; } .jscSld { width: 16px; height: 101px; background-image: linear-gradient(rgba(0,0,0,0), rgba(0,0,0,1)); } .jscSldB { right: 10px; top: 10px; border: 1px solid; border-color: ThreeDShadow ThreeDHighlight ThreeDHighlight ThreeDShadow; } .jscSldM { right: 0; top: 0; width: 36px; height: 121px; cursor: pointer; background-image: url('data:image/gif;base64,R0lGODlhBwALAKECAAAAAP///6g8eKg8eCH5BAEKAAIALAAAAAAHAAsAAAITTIQYcLnsgGxvijrxqdQq6DRJAQA7'); background-repeat: no-repeat; } .jscBtn { right: 10px; bottom: 10px; padding: 0 15px; height: 18px; border: 1px solid; border-color: ThreeDHighlight ThreeDShadow ThreeDShadow ThreeDHighlight; color: ButtonText; text-align: center; cursor: pointer; } .jscBtnS { line-height: 10px; } " + (!SS.bHideSidebar ? (SS.conf["Sidebar Position"] > 3 ? " body::before { background:rgba(" + SS.theme.mainColor.shiftRGB(-18) + ",.8); border-" + SS.conf["Sidebar Position oString"] + ":2px solid rgba(" + SS.theme.mainColor.rgb + ",.9); box-shadow:" + (SS.conf["Sidebar Position"] !== 5 ? "inset " : "") + SS.theme.brderColor.hex + " 1px 0 0," + (SS.conf["Sidebar Position"] === 4 ? "inset " : "") + SS.theme.brderColor.hex + " -1px 0 0; content:''; height:100%; width:262px; position:fixed; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 0 : -19) + "px!important; z-index:1; }" : "") + (SS.conf["Sidebar Position"] !== 3 ? " body::after { background:" + SS.mascot.img.get() + "; content:''; height:100%; width:" + (SS.mascot.overflow ? "100%" : "261px") + "; " + (!SS.mascot.small ? "background-size:contain;" : "") + " bottom:" + (SS.conf["Navigation Bar Position"] === 1 ? 0 : 21) + "px!important; margin-bottom:" + SS.mascot.offset + "px; pointer-events:none; position:fixed; z-index:2; " + (SS.conf["Sidebar Position String"] === "left" && SS.mascot.flip ? " -webkit-transform:scaleX(-1); -moz-transform:scaleX(-1); -o-transform:scaleX(-1);" : "") + " }" : "") : "") + " body::after, body::before, #imgControls, " + (SS.conf["Post Form"] !== 4 ? "#qr," : "") + " #updater, #watcher { " + SS.conf["Sidebar Position String"] + ":0!important; " + SS.conf["Sidebar Position oString"] + ":auto!important; } " + (SS.conf["Layout"] === 2 ? ".op," : "") + " #menu, #jsmath_button, #jsMath_panel, #jsMath_float, #globalMessage, #options ul, #playerDiv, #playerListMenu, #playerListItemMenu, #playerSettings, #qr, #themeoptions #toWrapper, .subMenu.reply, .reply, .hidden_thread, .stub { border:1px solid " + SS.theme.brderColor.hex + "!important; } #menu .entry:not(:last-child), #content>#ctrl, .panelHeader, " + (SS.conf["Navigation Bar Position"] === 1 ? "#boardNavDesktop," : "") + " #imgControls { border-bottom:1px solid " + SS.theme.brderColor.hex + "!important; } .dialog { border-color: " + SS.theme.brderColor.hex + "!important; } " + (SS.conf["Sidebar Position"] <= 3 ? "#imgControls," : "") + " .deleteform { border-" + SS.conf["Sidebar Position oString"] + ":1px solid " + SS.theme.brderColor.hex + "!important; } #updater { border-right:1px solid " + SS.theme.brderColor.hex + "!important; } body #delform { " + (SS.conf["Layout"] !== 2 && SS.conf["Sidebar Position"] > 3 ? " border:1px solid rgba(" + SS.theme.brderColor.rgb + ",.9); " + (SS.conf["Layout"] === 1 ? "border-" + SS.conf["Sidebar Position String"] + ":0!important;" : "") : "") + " margin:" + (SS.conf["Layout"] !== 3 ? (SS.conf["Sidebar Position String"] !== "left" ? "0 0 0 " + SS.conf["Side Margin"] + "px" : "0 " + SS.conf["Side Margin"] + "px 0 0") : " 0 " + (Math.min(SS.conf["Side Margin"], 40) / 2 * (SS.conf["Side Margin"] < 10 ? 3 : 1)) + "% 0") + "; padding:0!important; position:relative; margin-top:20px!important; padding-top:0!important; } .closed~#delform { margin-top:0!important; } .deleteform, " + (SS.conf["Navigation Bar Position"] !== 1 ? "#boardNavDesktop," : "") + " { border-top:1px solid " + SS.theme.brderColor.hex + "!important; } #jsmath_button { bottom:auto!important; left:0!important; top:1px!important; right:auto!important; } #jsMath_panel { bottom:auto!important; left:1em!important; top:1.75em!important; right:auto!important; } " + (SS.conf["Layout"] !== 2 && SS.conf["Sidebar Position"] > 3 ? " .thread:not(.stub) { background:rgba(" + SS.theme.mainColor.rgb + ",.5); }" : "") + " .thread { clear:both; margin:1px" + (SS.conf["Layout"] === 1 ? (SS.conf["Sidebar Position String"] === "right" ? " 0 1px 1px" : " 1px 1px 0") : (SS.conf["Layout"] === 2 ? " 0 1px" : "")) + "!important; overflow:visible!important; padding:0!important; " + (SS.conf["Layout"] !== 3 ? "padding-" + SS.conf["Sidebar Position String"] + ":2px!important;" : "") + " position:relative; } " + (!SS.conf["Slim Threads"] ? " .thread { padding:0 0 1em 0!important; } .thread:first-child { padding-top:0!important; } .board>div:nth-last-of-type(2) { padding-bottom:0!important; }" : "") + " #addMascot>label::after, #qr>form>div::after, #updater div>label::after, " + (SS.conf["Layout"] !== 2 ? ".thread .op::after," : "") + " .thread::after { clear:both; content:''; display:block; } .op { border:0!important; padding-top:.3em!important; position:relative; } a.hide_thread_button>span { " + (SS.conf["Layout"] !== 2 ? " position:absolute; right:0; top:0;" : " position:relative; top:1px;") + " } " + (SS.conf["Layout"] === 1 ? " .thread>a.hide_thread_button>span { right:2px!important; }" : "") + " form[name=delform] { } .thread>div>.post { " + (SS.conf["Layout"] !== 2 ? "width:100%;" : "") + " overflow:visible; } .thread:last-child>.postContainer:last-child>.reply { margin-bottom:1px!important; } .postInfo { padding:2px 6px!important; } .sideArrows { margin-left:0!important; margin-right:0!important; } " + (SS.conf["Layout"] !== 3 && !(SS.conf["Sidebar Position"] === 3 && SS.conf["Layout"] === 2) ? (SS.conf["Layout"] === 2 ? ".op," : "") + " .reply, .hidden_thread, .stub { border-" + SS.conf["Sidebar Position String"] + ":0!important; }" : "") + " .postContainer { margin:1px 0!important; position:relative; } .thread .replyContainer { margin:3px 0!important; } .threadContainer { border-left:1px solid rgba(" + SS.theme.brderColor.shiftRGB(-16) + ", .4)!important; padding-left:5px!important; } " + (SS.conf["Layout"] !== 2 ? " hr { margin:0!important; } div.post:not(#qp):not([hidden]) { margin:0!important; width:100%; } .reply .postInfo { line-height:18px; }" : "") + " .favicon { vertical-align:middle; } .identifyIcon { margin:0!important; vertical-align:top; } a.hide_thread_button>span, #settingsBox, .replyContainer>.reply input[type=checkbox], .replyContainer>.reply .riceCheck, .container, .hidden_thread a:first-child>span, .hide_reply_button { z-index:3!important; } " + (SS.conf["Layout"] === 2 ? " .hide_reply_button { margin:0 2px; } .hide_reply_button:not(.stub) { float:left; }" : "") + " " + (SS.conf["Rounded Edges"] ? " #menu, .subMenu, .stub, .post.reply, .hidden_thread { border-radius:4px!important; } .thread { border-radius:" + (SS.conf["Layout"] !== 3 ? (SS.conf["Sidebar Position"] !== 2 ? "2px 0 0 2px" : "0 2px 2px 0") : "2px") + "; } form[name=delform] { border-radius:" + (SS.conf["Layout"] !== 3 ? (SS.conf["Sidebar Position"] !== 2 ? "4px 0 0 4px" : "0 4px 4px 0") : "4px") + "; } .op { border-radius:" + (SS.conf["Layout"] !== 3 ? (SS.conf["Sidebar Position"] !== 2 ? "2px 0 0 2px" : "0 2px 2px 0") : "2px") + "; } " + (SS.conf["Hide Checkboxes"] ? "#qr" : ".deleteform") + " { border-radius:" + (SS.conf["Sidebar Position"] !== 2 ? "3px 0 0 0" : "0 3px 0 0") + "; } #menu a:first-child, .subMenu a:first-child { border-radius:3px 3px 0 0; } #menu a:last-child, .subMenu a:last-child { border-radius:0 0 3px 3px; } #menu a:first-child:last-child, .subMenu a:first-child:last-child { border-radius:3px; } " : "") + " .inline { background:none!important; border:0!important; overflow:visible!important; } .inline div.post.reply { background:rgba(" + SS.theme.mainColor.shiftRGB(-16) + ",.8)!important; border:1px solid rgba(" + SS.theme.brderColor.rgb + ",.4)!important; padding:5px!important; border-radius:3px!important; box-shadow:rgba(" + SS.theme.mainColor.shiftRGB(16) + ",.9) 0 1px 3px; overflow:visible!important; position:relative; z-index:10!important; width:auto!important; } " + (SS.conf["Layout"] !== 2 ? " .menu_button { position:absolute; right:2px; top:0; z-index:1!important; } " + (!SS.conf["Show/Hide Menu Entry"] ? " .hide_thread_button:not(.hidden_thread) { top:2px!important; } .hide_thread_button:not(.hidden_thread), .hide_reply_button:not(.stub) { line-height:18px; position:absolute; right:18px!important; top:0; z-index:1!important; }" : "") : "") + " .replyContainer>.reply>img { vertical-align:middle; } .replyContainer>.reply>span { line-height:16px!important; } .replyContainer>.reply, .stub>a:first-child, .hidden_thread>a:first-child { padding:5px!important; " + (SS.conf["Layout"] !== 2 ? "width:100%;" : (SS.conf["Sidebar Position"] !== 2 ? "margin-right:1px!important;" : "")) + " border-radius:" + (SS.conf["Layout"] !== 3 && !(SS.conf["Sidebar Position"] !== 2 && SS.conf["Layout"] === 2) ? (SS.conf["Sidebar Position"] !== 2 ? "2px 0 0 2px" : "0 2px 2px 0") : "2px") + "; } .replyContainer>.post.highlight, .replyContainer>.post:target, .highlightPost, .qphl { background:rgba(" + SS.theme.mainColor.shiftRGB(4, true) + ",.9)!important; border:1px solid " + SS.theme.linkColor.hex + "!important; } .filter_highlight>div.opContainer, .filter_highlight>.reply { box-shadow:inset 5px 0 rgba(" + SS.theme.sageColor.rgb + ",.5)!important; } .stub { " + (SS.conf["Layout"] === 2 ? "display:inline-block!important;" : "") + " margin:1px 0!important; padding:0!important; } .thread.stub { margin:1px 0!important; padding:0 " + (SS.conf["Sidebar Position"] !== 2 ? "0 0 1px" : "1px 0 0") + "!important; } .hidden_thread>a:first-child, .stub>a:first-child { display:" + (SS.conf["Layout"] === 2 ? "inline-" : "") + "block; line-height:16px!important; padding:7px; } .container { margin-left:2px; } .container>a { color:" + SS.theme.blinkColor.hex + "!important; } input[type=checkbox]:active, input[type=checkbox]:focus, .qphl { outline:none!important; } .qphl { box-shadow:none!important; } #qp, #post-preview { background:rgb(" + SS.theme.mainColor.shiftRGB(-8) + ")!important; border:1px solid rgba(" + SS.theme.linkColor.rgb + ",.4)!important; margin:0 10px!important; max-width:65%; padding:5px; position:fixed!important; z-index:16!important; border-radius:3px; } #qp .reply { background:none!important; border:none!important; width:auto!important; } a.summary { display:inline-block; line-height:16px; margin:-4px 10px 0!important; padding:0 6px; border-radius:3px; } .deleteform { bottom:" + (SS.conf["Navigation Bar Position"] === 1 ? 0 : 20) + "px!important; height:22px; overflow:hidden; padding:1px 2px 0 18px!important; position:fixed; " + (SS.conf["Sidebar Position"] === 3 ? " right:" + (SS.conf["Post Form"] === 4 ? 0 : 262) + "px;" : SS.conf["Sidebar Position String"] + ":264px;") + " width:0; white-space:nowrap; z-index:" + (SS.conf["Sidebar Position"] === 3 ? 11 : 5) + "!important; -webkit-transition:all .2s ease-in-out; -moz-transition:all .2s ease-in-out; -o-transition:all .2s ease-in-out; } .deleteform:hover { " + (SS.conf["Sidebar Position"] !== 2 ? " padding-left:2px!important; " + (SS.conf["Sidebar Position"] === 3 ? "padding-right:4px!important;" : "") : " padding-left:0!important; padding-right:3px!important;") + " width:238px; -webkit-transition:all .2s ease-in-out; -moz-transition:all .2s ease-in-out; -o-transition:all .2s ease-in-out; } .deleteform::before { content:'X'; display:inline-block; position:absolute; left:0; top:0; width:20px; height:24px; text-align:center; padding-top:1px; } .deleteform:hover::before { overflow:hidden; white-space:nowrap; padding:0; width:0; } .deleteform::after { content:'FILE ONLY'; position:absolute; bottom:0; right:" + (SS.conf["Sidebar Position"] !== 2 ? 120 : 122) + "px; line-height:24px; } .deleteform * { visibility:visible!important; } .deleteform input[type=checkbox], .deleteform .riceCheck { margin:2px!important; position:absolute; right:105px; bottom:4px!important; top:auto!important; } .deleteform input:not([type=checkbox]) { height:20px!important; margin:0 1px 0 0!important; } .deleteform input[type=password] { margin-left:4px!important; width:138px!important; } .deleteform:hover input[type=password] { margin-left:0!important; } blockquote.postMessage { line-height:16px; margin:0!important; padding:" + (SS.conf["Slim Replies"] ? "4px 16px" : "10px 15px 12px 15px") + "!important; } blockquote.postMessage>div[style] { border-color:" + SS.theme.sageColor.hex + "!important; } .fileThumb>img { position:relative; z-index:1; } .fileThumb>img+img { background-color:rgba(" + SS.theme.mainColor.rgb + ",.01)!important; z-index:10!important; } img[alt=Closed], img[alt=Sticky], a[href='.././'], a.hide_thread_button>span, #qf-ctrl, #info a[href='./'], #imageType+label, #navtopright>a, #toggleMsgBtn, .close, .remove, .favicon, .menu_button, .icon.closeIcon, .mobileCatalogLink>a, .hide_reply_button:not(.stub)>a:first-child>span, .hide_thread_button>span, .hidden_thread a:first-child>span, .stub>a:first-child>span { background-color:transparent!important; background-position:center!important; background-repeat:no-repeat; display:inline-block; height:0!important; padding-top:16px!important; text-indent:-9999px!important; vertical-align:bottom; width:16px!important; } img[alt=Closed] { background-image:url(\"data:image/svg+xml," + SS.theme.icons.closedThread + "\")!important; } img[alt=Sticky] { background-image:url(\"data:image/svg+xml," + SS.theme.icons.stuckThread + "\")!important; } #themeoptionsLink { background-image:url(\"data:image/svg+xml," + SS.theme.icons._4chanSS + "\")!important; } .settingsWindowLink { background-image:url(\"data:image/svg+xml," + SS.theme.icons._4chanX + "\")!important; } .settingsWindowLinkBot { background-image:url(\"data:image/svg+xml," + SS.theme.icons._4chanSP + "\")!important; float:left!important; position:relative; top:2px; } #toggleMsgBtn.collapseIcon, a.hide_thread_button>span, .hide_reply_button:not(.stub)>a:first-child>span { background-image:url(\"data:image/svg+xml," + SS.theme.icons.hideButton + "\")!important; } #toggleMsgBtn.expandIcon, .stub>a:first-child>span, .hidden_thread a:first-child>span { background-image:url(\"data:image/svg+xml," + SS.theme.icons.showButton + "\")!important; } .icon.closeIcon, .close, .remove { background-image:url(\"data:image/svg+xml," + SS.theme.icons.closeButton + "\")!important; } .favicon[src^='data'] { background-image:url(\"data:image/svg+xml," + SS.theme.icons.notWatched + "\")!important; } .favicon[src$='ico'] { background-image:url(\"data:image/svg+xml," + SS.theme.icons.watchedIco + "\")!important; } .mobileCatalogLink { position:fixed; z-index:13; } .mobileCatalogLink>a { background-image:url(\"data:image/svg+xml," + SS.theme.icons.catalog + "\")!important; padding:16px 1px 0!important; position:fixed; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 23 : 2) + "px; " + SS.conf["Sidebar Position String"] + ":135px; } .menu_button { background-image:url(\"data:image/svg+xml," + SS.theme.icons.menuButton + "\")!important; vertical-align:baseline!important; padding-top:12px!important; -webkit-transform:rotate(90deg); -moz-transform:rotate(90deg); -o-transform:rotate(90deg); } #qf-ctrl { background-image:url(\"data:image/svg+xml," + SS.theme.icons.search + "\")!important; left:20px; position:absolute; } #qf-cnt { left:38px; position:absolute; } #boardNavDesktop>.boardList a { margin:0 1px 0 2px!important; } " + (!SS.conf["Bitmap Font"] ? " #boardNavDesktop>.boardList a.current { font-size:" + SS.conf["Font Size"] + "px!important; font-weight:700; }" : " i { font-style:normal!important; } body .exlinks-options-title, body .exlinks-options-subtitle { font-size:" + SS.conf["Font Size"] + "px!important; }") + " .inline .menu_button { opacity:1!important; position:static!important; vertical-align:top!important; } " + (SS.conf["Layout"] !== 2 ? " .menu_button, .hide_reply_button:not(.stub) { right:2px; opacity:0!important; position:absolute; top:0; -webkit-transition:all .4s ease-in-out!important; -moz-transition:all .4s ease-in-out!important; -o-transition:all .4s ease-in-out!important; } .opContainer .menu_button, .postContainer:hover .hide_reply_button, .postContainer:hover .menu_button { opacity:1!important; }" : "") + " a[href='.././'], #qf-ctrl, #info a[href='./'], #imageType+label, #navtopright>a, a.hide_thread_button>span, .close, .remove, .mobileCatalogLink>a, .hide_reply_button:not(.stub)>a:first-child>span, .hidden_thread a:first-child>span, .stub>a:first-child>span { margin:0!important; opacity:.5; -webkit-transition:all .1s ease-in-out; -moz-transition:all .1s ease-in-out; -o-transition:all .1s ease-in-out; } a[href='.././']:hover, #qf-ctrl:hover, #info a[href='./']:hover, #imageType+label:hover, #navtopright>a:hover, #imageType+label:hover, #imageType+label.imgExpanded, a.hide_thread_button>span:hover, .close:hover, .remove:hover, .mobileCatalogLink>a:hover, .hide_reply_button:not(.stub)>a:first-child>span:hover, .hide_thread_button a:first-child>span:hover, .hidden_thread:hover>span:hover, .stub>a:first-child>span:hover { opacity:.95; } textarea, button, input:not([type=checkbox]):not([type=radio]), select, #qr>form>.captchaimg>img, #qr .field, .riceFile { border:1px solid " + SS.theme.inputbColor.hex + "!important; } button, input[type=button], input[type=file], input[type=password], input[type=submit], input[type=text]:not(.jsColor), input.field, select, textarea, .riceFile, #qr .field, #options input { background:rgba(" + SS.theme.inputColor.rgb + ",.9)!important; } button, input:not(.jsColor), textarea, .riceFile input~div { -webkit-transition:background .2s,box-shadow .2s; -moz-transition:background .2s,box-shadow .2s; -o-transition:background .2s,box-shadow .2s; } button:hover, input[type=button]:hover, input[type=password]:hover, input[type=submit]:hover, input[type=text]:not(.jsColor):not([disabled]):hover, input.field:hover, select:hover, textarea:hover, #options input:hover, .riceFile input:hover+div, .riceFile input:focus+div, .riceFile div.focus { background:rgba(" + SS.theme.inputColor.hover + ",.9)!important; } input[type=password]:hover, input[type=text]:not([disabled]):hover, input.field:hover, select:hover, textarea:hover, #options input:not[type=checkbox]:hover { box-shadow:inset rgba(0,0,0,.2) 0 1px 2px; } input[type=password]:focus, input[type=text]:focus, input.field:focus, select:focus, textarea:focus, #options input:focus { box-shadow:inset rgba(0,0,0,.2) 0 1px 2px; } textarea:focus, input[type=text]:not(.jsColor):not([disabled]):focus, input[type=password]:focus, input.field:focus, #options input:focus { background:rgba(" + SS.theme.inputColor.hover + ",.9)!important; } button, input[type=button], input[type=submit], .riceFile div { height:22px!important; margin-top:1px!important; padding:0!important; text-align:center!important; vertical-align:top; width:50px; } input[type=checkbox], input[type=radio], .riceCheck { background:rgba(" + SS.theme.inputColor.rgb + ",.9)!important; border:1px solid rgb(" + SS.theme.inputbColor.rgb + ")!important; display:inline-block; height:12px!important; margin:3px; position:relative; vertical-align:top; width:12px!important; border-radius:2px!important; -webkit-appearance:none; -webkit-transition:background .1s; -moz-transition:background .1s; -o-transition:background .1s; } input[type=radio] { border-radius:10px!important; } input[type=checkbox], .riceCheck { box-shadow:rgba(" + SS.theme.mainColor.shiftRGB(32) + ",.3) 0 1px; } input[type=checkbox]:hover, input[type=radio]:hover, .riceCheck:hover { background:rgba(" + SS.theme.inputColor.hover + ",.9)!important; } input[type=checkbox]:checked, input[type=checkbox]:checked+.riceCheck { box-shadow:inset rgba(0,0,0,.2) 0 1px 2px,rgba(" + (SS.theme.mainColor.isLight ? "255,255,255" : "100,100,100") + ",.6) 0 1px; } input[type=radio]:checked { background:rgba(" + SS.theme.inputColor.shiftRGB(40, true) + ",.9)!important; box-shadow:inset rgba(" + SS.theme.inputColor.shiftRGB(100, true) + ",.2) 0 0 1px!important; } input[type=checkbox]::before, input[type=radio]::before, input[type=checkbox]+.riceCheck::before { content:''; display:block; height:8px; margin:1px; opacity:0; width:8px; -webkit-transition:opacity .2s ease-in-out; -moz-transition:opacity .2s ease-in-out; -o-transition:opacity .2s ease-in-out; } input[type=checkbox]:checked::before, input[type=radio]:checked::before, input[type=checkbox]:checked+.riceCheck::before { opacity:1; } input[type=checkbox]:checked::before, input[type=checkbox]:checked+.riceCheck::before { background:" + SS.theme.checkMark.get() + "!important; } input[type=radio]:checked::before { background:" + SS.theme.radioCheck.get() + " transparent!important; } input[type=checkbox]:active, input[type=radio]:active, .riceCheck:active { background:rgba(" + SS.theme.inputColor.shiftRGB(40, true) + ",.9)!important; box-shadow:inset rgba(" + SS.theme.inputColor.shiftRGB(100, true) + ",.4) 0 0 3px,rgba(" + SS.theme.mainColor.shiftRGB(64) + ",.6) 0 1px!important; } .replyContainer>.reply input[type=checkbox], .replyContainer>.reply .riceCheck, { margin-left:0!important; position:relative; } span.filesize~input[type=checkbox], span.filesize~.riceCheck { top:2px; } textarea, .navLinks { margin:0!important; } .boardBanner { " + (SS.conf["Sidebar Position"] !== 3 ? "height:100%;" : "") + " " + SS.conf["Sidebar Position String"] + ":1px; pointer-events:none; text-align:center; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 43 : 22) + "px; z-index:1; } " + (SS.conf["Fixed Logo Position"] ? " .boardBanner, .boardBanner img, .boardBanner .boardTitle { width:26" + (SS.conf["Sidebar Position"] > 3 ? 0 : 1) + "px!important; } .boardBanner, .boardBanner #bBanner { position:fixed; } .boardBanner #bBanner { height:86.3333px; } .boardBanner .boardTitle { top:64px!important; position:absolute!important; } .boardBanner .boardSubtitle { top:98px!important; left:0; pointer-events:auto; position:absolute!important; } .boardBanner img { top:-1px; } " : " .boardBanner #bBanner { display:inline-block; height:" + (SS.conf["Show Logo"] ? 100 : 40) + "px; position:relative; } ") + " .boardBanner img { height:auto!important; margin:0!important; position:relative; opacity:.5; z-index:1; } " + (SS.conf["Show Logo"] && SS.conf["Show Logo Reflection"] ? " .boardBanner #bBanner::after { background-image:-moz-element(#banner); bottom:-100%; content:''; left:0; mask:url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzdmcgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPg0KCTxkZWZzPg0KCQk8bGluZWFyR3JhZGllbnQgZ3JhZGllbnRVbml0cz0ib2JqZWN0Qm91bmRpbmdCb3giIGlkPSJncmFkaWVudCIgeDI9IjAiIHkyPSIxIj4NCgkJCTxzdG9wIHN0b3Atb2Zmc2V0PSIwIi8+DQoJCQk8c3RvcCBzdG9wLWNvbG9yPSJ3aGl0ZSIgb2Zmc2V0PSIxIi8+DQoJCTwvbGluZWFyR3JhZGllbnQ+DQoJCTxtYXNrIGlkPSJtYXNrIiBtYXNrVW5pdHM9Im9iamVjdEJvdW5kaW5nQm94IiBtYXNrQ29udGVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeD0iMCIgeT0iMCIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSI+DQoJCQk8cmVjdCB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWRpZW50KSIvPg0KCQk8L21hc2s+DQoJPC9kZWZzPg0KPC9zdmc+#mask'); opacity:.6; position:absolute; right:0; top:100%; z-index:1; -moz-transform:scaleY(-1); pointer-events:none; } .boardBanner img { -webkit-box-reflect:below 0 -webkit-gradient(linear,left top,left bottom,from(transparent),color-stop(.1,transparent),to(rgba(255,255,255,.5))); }" : "") + " .boardBanner .boardTitle { cursor:default!important; display:block; font-family:'PT Sans Narrow',sans-serif!important; font-size:28px!important; font-weight:700!important; height:36px; padding:0 10px; position:relative; text-align:center; top:-25px; width:100%; z-index:3; } #navlinks a, .boardBanner .boardTitle { text-shadow:" + SS.theme.mainColor.hex + " -1px -1px, " + SS.theme.mainColor.hex + " 1px -1px, " + SS.theme.mainColor.hex + " -1px 1px, " + SS.theme.mainColor.hex + " 1px 1px, " + SS.theme.mainColor.hex + " -1px 0, " + SS.theme.mainColor.hex + " 1px 0, " + SS.theme.mainColor.hex + " 0 -1px, " + SS.theme.mainColor.hex + " 0 1px, rgba(0,0,0,.6) 0 2px 4px, rgba(0,0,0,.6) 0 0 10px!important; } .boardBanner .boardTitle::selection { background:transparent!important; } .boardBanner .boardTitle::-moz-selection { background:transparent!important; } .boardBanner .boardSubtitle { position:relative; top:-25px; text-shadow:" + SS.theme.mainColor.hex + " -1px -1px," + SS.theme.mainColor.hex + " 1px -1px," + SS.theme.mainColor.hex + " -1px 1px," + SS.theme.mainColor.hex + " 1px 1px,rgba(0,0,0,.2) 0 0 10px,#000 0 1px 5px,#000 0 -1px 5px; width:100%; z-index:3; } .boardBanner .boardSubtitle>a { text-transform:none!important; text-shadow:" + SS.theme.mainColor.hex + " -1px -1px," + SS.theme.mainColor.hex + " 1px -1px," + SS.theme.mainColor.hex + " -1px 1px," + SS.theme.mainColor.hex + " 1px 1px,rgba(0,0,0,.2) 0 0 10px,#000 0 1px 5px,#000 0 -1px 5px!important; } div.autohide>a[title='Auto-hide dialog box'] { text-decoration:underline!important; } .op, .thread.hidden { display:block!important; } .op .filesize { display:inline-block!important; margin:2px " + (SS.conf["Layout"] !== 2 ? 6 : 0) + "px!important; } body>span[style]~form .op .filesize { padding-left:6px!important; } .inline .filesize { margin:2px 0!important; } .filesize span:not([class]) { font-size:0!important; visibility:hidden; } .filesize span:not([class])::after { content:attr(title); visibility:visible; } input:not([type=checkbox]):not([type=radio]), button, select, textarea { -webkit-appearance:none; -o-appearance:none; } #options .move, " + (SS.conf["Post Form"] !== 4 ? "#qr>.move," : "") + " #stats .move, #updater .move, #watcher .move { cursor:default!important; } #watcher { background:none!important; bottom:auto!important; border:0!important; padding-top:0!important; position:fixed!important; max-width:" + (SS.conf["Auto Hide Thread Watcher"] ? 200 : 261) + "px!important; min-width:" + (SS.conf["Auto Hide Thread Watcher"] ? 0 : 261) + "px!important; text-align:" + SS.conf["Sidebar Position String"] + "; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 41 : 21) + "px!important; z-index:4!important; } " + (SS.conf["Auto Hide Thread Watcher"] ? " #watcher.show, #watcher:hover { padding-bottom:16px; max-width:261px!important; min-width:261px!important; }" : "") + " #watcher .move, #imgControls .preload, #prefetch { display:inline-block; margin:0 5px; padding:2px 5px!important; text-align:center; text-decoration:none!important; border-radius:0 0 3px 3px; } #watcher>div:not(.move) { display:none; line-height:15px; margin:0 5px; " + (SS.conf["Auto Hide Thread Watcher"] ? " max-height:0px; max-width:0!important; " : "max-width:241px!important;") + " padding:1px 5px!important; text-align:left!important; -webkit-transition:max-height .1s ease-in-out; -moz-transition:max-height .1s ease-in-out; -o-transition:max-height .1s ease-in-out; } #watcher>div:not(.move):nth-of-type(2) { margin-top:3px; padding-top:5px!important; border-top-left-radius:3px; border-top-right-radius:3px; } #watcher>div:not(.move):last-child { padding-bottom:5px!important; border-bottom-left-radius:3px; border-bottom-right-radius:3px; } #watcher.show>div:not(.move), #watcher" + (SS.conf["Auto Hide Thread Watcher"] ? ":hover" : "") + ">div:not(.move) { display:block; max-height:16px; max-width:241px!important; } #overlay, #overlay2 { background:rgba(0,0,0,.5); position:fixed; top:0; left:0; height:100%; width:100%; text-align:center; z-index:999!important; } #overlay::before, #overlay2::before { content:''; display:inline-block; height:100%; vertical-align:middle; } #addMascot, #addTheme, #themeoptions { border:0!important; display:inline-block; position:relative; text-align:right!important; width:600px; padding:5px; vertical-align:middle; border-radius:5px!important; } #themeoptions>div { padding:5px; } .trbtn { color:" + SS.theme.jlinkColor.hex + "!important; display:inline-block; line-height:18px; margin:0 2px; min-width:40px; padding:2px 10px; text-align:center; background:-webkit-linear-gradient(top,rgba(" + SS.theme.mainColor.shiftRGB(20) + ",.9),rgba(" + SS.theme.mainColor.rgb + ",.9)); background:-moz-linear-gradient(top,rgba(" + SS.theme.mainColor.shiftRGB(20) + ",.9),rgba(" + SS.theme.mainColor.rgb + ",.9)); background:-o-linear-gradient(top,rgba(" + SS.theme.mainColor.shiftRGB(20) + ",.9),rgba(" + SS.theme.mainColor.rgb + ",.9)); border-radius:3px; box-shadow:rgba(0,0,0,.3) 0 0 2px; } .trbtn:hover, #selectImage>input[type=file]:hover+.trbtn { color:" + SS.theme.jlinkColor.hex + "!important; background:rgba(60,60,60,.9); background:-webkit-linear-gradient(top,rgba(" + SS.theme.mainColor.shiftRGB(40) + ",.9),rgba(" + SS.theme.mainColor.rgb + ",.9)); background:-moz-linear-gradient(top,rgba(" + SS.theme.mainColor.shiftRGB(40) + ",.9),rgba(" + SS.theme.mainColor.rgb + ",.9)); background:-o-linear-gradient(top,rgba(" + SS.theme.mainColor.shiftRGB(40) + ",.9),rgba(" + SS.theme.mainColor.rgb + ",.9)); } .trbtn:active, #selectImage>input[type=file]:active+.trbtn { box-shadow:inset rgba(0,0,0,.3) 0 0 2px,rgba(0,0,0,.3) 0 0 2px; } .trbtn-small { padding:2px 5px; min-width:30px; } #themeoptions #toNav { list-style:none; margin:0; padding:0; position:absolute; top:-26px; } #themeoptions #toNav li { float:left; margin:0; padding:0; } #themeoptions #toNav li label { background:rgba(" + SS.theme.mainColor.shiftRGB(-10) + ",.9); color:#888!important; display:block; height:16px; margin:0 2px; padding:5px 10px; text-align:center; width:75px; border-radius:5px 5px 0 0; -webkit-transition:all .1s ease-in-out; -moz-transition:all .1s ease-in-out; -o-transition:all .1s ease-in-out; } #SSVersion { opacity:.5; padding-right:5px; } #themeoptions #toWrapper { background:rgb(" + SS.theme.mainColor.shiftRGB(-12) + "); box-shadow:inset rgba(0,0,0,.3) 0 0 5px,rgba(" + SS.theme.mainColor.shiftRGB(32) + ",.6) 0 1px 3px; border-radius:5px; } #themeoptions #toWrapper, #themeoptions #toWrapper>div { height:400px; } #themeoptions #toWrapper>div { overflow:auto; } #themeoptions #toWrapper>[name=toTab]:not(:checked)+div { display:none; } #updater label, #themeoptions #tMain .mOption, #themeoptions #tNavLinks .navlink { display:block; border-bottom:1px solid rgba(" + SS.theme.mainColor.rgb + ",.3); border-top:1px solid rgba(0,0,0,.1); height:20px; padding:0 3px; vertical-align:top; } .deleteform::before, #themeoptions #tMain .mOption span { float:left; line-height:20px!important; } #themeoptions #tMain .mOption:first-child, #updater div:first-child label { border-top:0!important; } #themeoptions #tMain .mOption:last-child, #updater div:nth-last-of-type(3) label { border-bottom:0!important; } #themeoptions #tMain select[name=Font] option { max-width:150px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis; } #themeoptions #tMain .subOption::before { border-bottom:1px solid rgba(0,0,0,.1); border-left:1px solid rgba(0,0,0,.1); content:''; display:inline-block; float:left; margin-right:2px; height:50%; width:6px; } #themeoptions #tMain .subOption { margin-left:16px; } #themeoptions #tThemes>div { opacity:.5; -webkit-transition:all .1s; -moz-transition:all .1s; -o-transition:all .1s; } #themeoptions #tThemes>div:hover, #themeoptions #tThemes>div.selected { opacity:1; } #themeoptions #tThemes .reply { margin:2px 0!important; padding:2px!important; position:relative; text-align:left; width:100%; border-radius:2px!important; } #themeoptions #tThemes>div p { bottom:4px; right:2px; margin:0; opacity:0; position:absolute; z-index:3; } #themeoptions #tThemes>div:hover p { opacity:1; } #themeoptions #tThemes>div p a { display:inline-block; margin:0 2px; padding:2px 5px; text-align:center; width:50px; border-radius:3px; } #themeoptions #tThemes>div h3 { bottom:0; font-size:32px!important; margin:0!important; opacity:0; position:absolute; right:100%; -webkit-transition:all .3s; -moz-transition:all .3s; -o-transition:all .3s; } #themeoptions #tThemes>div.selected h3 { opacity:1; right:3px; z-index:1; } #themeoptions #tMascot { text-align:center; } #themeoptions #toWrapper>div>p { bottom:10px; left:10px; position:absolute; } #themeoptions #toWrapper>div>p { margin:0; } #themeoptions #tMascot div { background-position:center top!important; background-repeat:no-repeat!important; background-size:cover!important; display:inline-block; height:257px; margin:2px; opacity:.75; position:relative; width:185px; border-radius:10px; -webkit-transition:all .1s; -moz-transition:all .1s; -o-transition:all .1s; } #themeoptions #tMascot div:hover { opacity:1; } #themeoptions #tMascot div.selected { background-color:rgba(" + SS.theme.linkColor.rgb + ",.6)!important; opacity:1; box-shadow:inset rgba(0,0,0,.15) 0 0 15px, rgba(" + SS.theme.linkColor.rgb + ",.6) 0 0 2px; } #themeoptions #tMascot div a { position:absolute; top:0; padding:5px 8px; background:rgba(0,0,0,.3); } #themeoptions #tMascot div a:not([href]):hover { background:rgba(0,0,0,.5); } #themeoptions #tMascot div a[title=Delete], #themeoptions #tMascot div a[title=Hide] { left:0; border-radius:10px 0 10px 0; } #themeoptions #tMascot div a[title=Edit] { right:0; border-radius:0 10px 0 10px; } #themeoptions #tNavLinks .navlink>*:not(.handle) { position:relative; z-index:1; } #themeoptions #tNavLinks .navlink { height:24px; padding-top:1px; position:relative; -webkit-transition:all .2s; -moz-transition:all .2s; -o-transition:all .2s; } #themeoptions #tNavLinks .moving { opacity:.5; -webkit-transform:scale(.95); -moz-transform:scale(.95); -0-transform:scale(.95); } #themeoptions #tNavLinks .over:not(.moving) { border-top:4px double " + SS.theme.brderColor.hex + "; } #themeoptions #tNavLinks .moving~.over { border-bottom:4px double " + SS.theme.brderColor.hex + "; border-top:1px solid rgba(0,0,0,.1); } #themeoptions #tNavLinks .navlink .handle { border-left:16px solid rgb(" + SS.theme.brderColor.shiftRGB(8, true) + "); cursor:move; height:26px; left:0; position:absolute; top:0; width:100%; z-index:0; } #themeoptions #tNavLinks label { margin:0 5px; position:relative; top:1px; } #themeoptions #tNavLinks label:first-child { float:left; margin-left:18px; } #themeoptions #tNavLinks label:first-child>input[type=text] { width:130px; } #themeoptions #tNavLinks label>input[type=text] { width:180px; } #themeoptions label>input[type=checkbox], #themeoptions label>.riceCheck { margin:4px 2px 0!important; vertical-align:bottom!important; } #themeoptions span>select, #themeoptions span>input[type=text] { width:125px; } #addMascot input[type=text], #addTheme input[type=text], #themeoptions input[type=text], #themeoptions select { height:20px; margin:0!important; padding:1px 3px!important; } #themeoptions select { padding:1px 1px 1px 0!important; } #themeoptions textarea { background:transparent!important; border:0!important; height:100%!important; width:100%!important; resize:none; } #addMascot { width:350px!important; } #addMascot>div { padding:5px; } #addMascot>label { display:block; } #addMascot>label>span, #addTheme>label>span { float:left; line-height:22px; padding-left:5px; } #addMascot>label>input[type=text], #addMascot>label>select, #addMascot>label>textarea { margin-top:1px!important; width:200px; } #addMascot>label>select, #addTheme>label>select { height:20px; } #addMascot select { margin-right:1px!important; position:relative; top:-1px; } #addMascot select[name=mPosition], #addMascot input[name=mOffset][type=text] { width:80px; } #addMascot>label>textarea { height:20px; line-height:20px; overflow:hidden; resize:none; } #addMascot>label>input[type=checkbox], #addMascot>label>.riceCheck { margin-top:5px; } #selectImage { float:left; height:24px!important; margin-top:-2px; padding-top:2px; } a[name=clearIMG] { display:none; float:left; opacity:0; -webkit-transition:all .2s ease-in-out; -moz-transition:all .2s ease-in-out; -o-transition:all .2s ease-in-out; } input[name=customIMGB64]+a[name=clearIMG] { display:inline-block; opacity:1; } #addTheme { text-align:left!important; width:500px!important; } #addTheme>label { display:inline-block; text-align:right; width:50%; } #addTheme>label#customCSS { width:100%; } #addTheme>label#customCSS>textarea { height:100px; resize:vertical; width:100%; } #addTheme>label>input[type=text], #addTheme>label>select { width:100px; } #addTheme>div { margin-top:.6em; text-align:right; } #themeoptions, #options.dialog, #themeoptions #toNav li label.selected, #themeoptions #toNav li label:hover, #addMascot, #addTheme { background:rgba(" + SS.theme.mainColor.rgb + ",.98)!important; text-align:center; } #options.dialog, #themeoptions, #addMascot, #addTheme { margin:0 auto!important; text-align:left; box-shadow:rgba(0,0,0,.6) 0 0 10px; border-radius:5px; } #options { width:600px!important; z-index:1000!important; } #options hr { margin:3px 0!important; } #options button { vertical-align:baseline!important; width:auto!important; } #options input { width:150px; } #options ul { margin-right:5px; padding:2px 5px!important; border-radius:5px; box-shadow:inset rgba(" + (SS.theme.mainColor.isLight ? "255,255,255" : "155,155,155") + ",.3) 0 0 5px; } #imgControls { height:20px; position:fixed!important; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 21 : 0) + "px; width:" + (SS.conf["Sidebar Position"] < 3 ? 142 : 143) + "px!important; padding-" + SS.conf["Sidebar Position String"] + ":119px!important; z-index:13; } #imgControls #imageType, #boardNavDesktop>select { background:none!important; border:0!important; line-height:16px!important; margin:0!important; height:20px!important; padding:0 1px 1px 0; width:77px!important; " + (SS.conf["Sidebar Position String"] === "left" ? "float:right;" : "") + " } #boardNavDesktop>select { padding:3px 4px!important; width:auto!important; } #imageType+label { background-image:url(\"data:image/svg+xml," + SS.theme.icons.imgExpand + "\")!important; float:" + SS.conf["Sidebar Position String"] + "; margin:2px 1px 1px!important; overflow:hidden; } #imageType+label.imgExpanded { background-image:url(\"data:image/svg+xml," + SS.theme.icons.imgContract + "\")!important; } #imgControls .preload, label#prefetch { height:15px; " + SS.conf["Sidebar Position oString"] + ":24px; padding:1px 5px 3px!important; position:absolute; } label#prefetch { bottom:auto!important; line-height:16px!important; position:fixed!important; " + SS.conf["Sidebar Position String"] + ":130px!important; " + SS.conf["Sidebar Position oString"] + ":auto!important; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 42 : 21) + "px; z-index:13!important; } form[name=post] input[name=email]+label, form[name=post] #com_submit+label, #qr>form #spoilerLabel::after, #imgControls label, ##boardLinks, #themeoptions #toNav li label, #watcher .move, .preview>label::after { line-height:16px; } #stats .move, #updater span, #updater .move { line-height:20px; } #updater { text-align:" + SS.conf["Sidebar Position String"] + "!important; " + SS.conf["Sidebar Position oString"] + ":auto!important; " + SS.conf["Sidebar Position String"] + ":0!important; border-top:0!important; border-" + SS.conf["Sidebar Position String"] + ":0!important; border-" + SS.conf["Sidebar Position oString"] + ":1px solid " + SS.theme.brderColor.hex + "!important; border-bottom:1px solid " + SS.theme.brderColor.hex + "!important; position:fixed!important; bottom:auto!important; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 21 : 0) + "px; height:20px; line-height:20px; overflow:hidden; padding:0 3px; z-index:13!important; width:112px; } #updater:hover { height:auto!important; padding-bottom:3px; width:160px; z-index:18!important; } #updater #count.new { background-color:transparent!important; } #updater label { line-height:20px!important; text-align:left!important; } #updater input, #updater .riceCheck { float:right; } #updater input:not([type=checkbox]) { margin:1px!important; } #updater input[type=button] { margin-right:3px!important; padding:0 5px!important; width:auto!important; } #updater input[type=text] { height:19px!important; width:40px!important; } #updater:not(:hover) { background:transparent!important; } #stats { bottom:auto!important; height:20px; line-height:20px; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 21 : 0) + "px!important; " + SS.conf["Sidebar Position String"] + ":13px!important; " + SS.conf["Sidebar Position oString"] + ":auto!important; text-align:" + SS.conf["Sidebar Position oString"] + "; width:100px; z-index:13!important; } #navlinks { " + SS.conf["Sidebar Position String"] + ":205px!important; " + SS.conf["Sidebar Position oString"] + ":auto!important; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 43 : 22) + "px!important; text-align:left; height:20px; width:50px; z-index:13!important; } #navlinks>a { font-size:12px!important; } #ihover { padding-" + (SS.conf["Navigation Bar Position"] === 2 ? "bottom" : "top") + ":21px; z-index:14!important; } #playerDiv { padding:2px; } #playerStyleSettingsButton { left:2px!important; } #playerClose { right:2px!important; } body>center:nth-of-type(2) { position:relative; } *[style='color: red;'] { color:" + SS.theme.sageColor.hex + "!important; } #globalMessage { margin-" + SS.conf["Sidebar Position oString"] + ":10px; overflow:hidden; padding:3px 10px; position:fixed; " + (SS.location.catalog ? "right:0" : SS.conf["Sidebar Position String"] + ":5") + "px!important; white-space:nowrap; z-index:14; top:-5000px; } #globalMessage::before { content:url(\"data:image/svg+xml," + SS.theme.icons.announcement + "\")!important; display:block; height:24px!important; width:16px!important; opacity:.5; position:fixed; " + SS.conf["Sidebar Position String"] + ":151px; top:" + (SS.conf["Navigation Bar Position"] === 1 ? 23 : 2) + "px; } #globalMessage:hover::before { opacity:.95; } #globalMessage:hover { top:" + (SS.conf["Navigation Bar Position"] === 1 ? 45 : 25) + "px; white-space:normal; border-radius:3px; } body>.closed { height:20px; line-height:20px; padding:0!important; } #boardNavDesktop { " + (SS.conf["Navigation Bar Position"] === 1 ? " top:0!important; bottom:auto!important;" : " bottom:0!important; top:auto!important;") + " min-height:21px; padding:1px 155px 0!important; left:0!important; overflow:hidden; position:fixed!important; text-align:center; width:100%!important; z-index:14!important; } #boardLinks { line-height:18px; } #navtop, #navtopright { float:none!important; height:20px; } #navtop a { text-shadow:rgba(0,0,0,.2) 0 0 3px; } #navtop>div { line-height:20px; } #navtopright { line-height:18px; position:absolute; right:5px!important; top:0; } #navtop { bottom:0; display:inline-block!important; height:20px; padding:3px 6px 6px; position:relative; width:500px; -webkit-transition:all .1s ease-in-out; -moz-transition:all .1s ease-in-out; -o-transition:all .1s ease-in-out } #navtop::before { color:" + SS.theme.jlinkColor.hex + "; content:'Navigation'; display:block; font-size:" + SS.conf["Small Font Size"] + "px; line-height:14px!important; } #navtop:hover { background:rgb(" + SS.theme.mainColor.rgb + "); bottom:48px; height:64px; line-height:0!important; border-radius:3px; box-shadow:rgba(0,0,0,.2) 0 0 5px; } #navtop>a { padding:2px!important; } #navtop>a, #navtop>span { display:inline!important; line-height:20px; } " + (SS.conf["Pages Position"] !== 4 ? (SS.conf["Pages Position"] === 1 ? " select#pagesDrop { left:0; position:absolute; top:0; } " : " .mPagelist.mobile { background:transparent!important; " + (SS.conf["Navigation Bar Position"] === 1 ? "top" : "bottom") + ":0!important; display:block!important; height:21px; line-height:18px; left:0!important; margin:0!important; padding:0 5px; position:fixed!important; width:auto!important; z-index:15; } .mPagelist .pages { display:-webkit-box!important; display:-moz-box!important; display:box!important; height:20px; padding:0!important; text-align:center; -webkit-box-align:center!important; -moz-box-align:center!important; box-align:center!important; } .mPagelist .pages span a { padding:2px 3px; }") : "") + " #delform div.reply.lastmuInfo { background: none !important; border: none !important; padding: 0px !important; padding-top: 0px !important; padding-left: 0px !important; } div.reply.lastmuInfo p { display: inline-block !important; } #lastmuSettingsWindowLink { display: block !important; color: transparent !important; background-repeat: no-repeat !important; float: left !important; opacity: 0.5 !important; background-image: url(\"data:image/svg+xml," + SS.theme.icons.lastmu + "\") !important; font-size: 0px !important; } #lastmuSettingsWindowLink:hover { opacity: 1.0 !important; } #lastmuSettings .pointer { opacity: 0; } #lastmuSettings .panelHeader>span::after { content: 'x'; font-size: 12px; position: relative !important; bottom: 6px; right: 10px; pointer-events: none; } .riceFile, #selectImage { height:22px; line-height:22px; overflow:hidden; position:relative; } .riceFile input[type=file], #selectImage input[type=file] { cursor:pointer!important; position:absolute; top:0; left:0; z-index:1; opacity:0; width:auto!important; -webkit-transform:scale(20) translateX(-30%); -moz-transform:scale(20) translateX(-30%); -o-transform:scale(20) translateX(-30%); } .riceFile div { display:inline-block; line-height:20px!important; margin:0!important; padding:0 10px!important; } .riceFile span { display:inline-block; max-width:173px; overflow:hidden; padding:0 5px!important; text-overflow:ellipsis; white-space:nowrap; } ul#Alerts, ul#Alerts a:hover { color:#222!important; } #info a[href='./'], a[href='.././'] { background-image:url(\"data:image/svg+xml," + SS.theme.icons.returnButton + "\")!important; position:fixed!important; text-indent:-9999px; z-index:14; } a[href='.././'] { top:" + (SS.conf["Navigation Bar Position"] === 1 ? 22 : 1) + "px; " + SS.conf["Sidebar Position String"] + ":135px!important; } #boardLinks>a.selectedBoard { " + (SS.conf["Bitmap Font"] ? " text-decoration:underline" : " font-weight:700") + "!important; } #qr { height:auto!important; margin:0 0 " + (SS.conf["Navigation Bar Position"] === 1 ? 0 : 21) + "px!important; padding:0 3px 3px!important; position:fixed!important; " + (SS.conf["Post Form"] !== 4 ? " border:0!important; bottom:0!important; border-top:1px solid " + SS.theme.brderColor.hex + "!important; top:auto!important; overflow:visible!important; " + (SS.conf["Sidebar Position"] <= 3 ? " border-" + SS.conf["Sidebar Position oString"] + ":1px solid " + SS.theme.brderColor.hex + "!important; z-index:11!important; width:262px!important;" : " max-width:261px!important; min-width:261px!important; z-index:5!important; width:261px!important;") + " } #file-n-submit { height: auto !important; } #qr-filename-container { width: 100% !important; max-width: 100% !important; min-width: 0 !important; } #qr.autohide { " + (SS.conf["Post Form"] === 1 ? " bottom:-249px!important; -webkit-transition:bottom .2s ease-in-out 1s; -moz-transition:bottom .2s ease-in-out 1s; -o-transition:bottom .2s ease-in-out 1s;" : (SS.conf["Post Form"] === 2 ? " opacity:.2; -webkit-transition:opacity .2s ease-in-out 1s; -moz-transition:opacity .2s ease-in-out 1s; -o-transition:opacity .2s ease-in-out 1s;" : "")) + " } " + (SS.conf["Post Form"] === 1 ? " #qr.autohide.dump:not(.focus):not(:hover) { bottom:-349px!important; }" : "") + " #qr:hover, #qr.focus { bottom:0!important; z-index:11!important; " + (SS.conf["Post Form"] === 1 ? " -webkit-transition:bottom .2s ease-in-out; -moz-transition:bottom .2s ease-in-out; -o-transition:bottom .2s ease-in-out;" : (SS.conf["Post Form"] === 2 ? " opacity:1!important; -webkit-transition:opacity .2s ease-in-out; -moz-transition:opacity .2s ease-in-out; -o-transition:opacity .2s ease-in-out;" : "")) + " } #qr.autohide>form { display:block!important; }" : " margin-bottom:20px!important; width:263px!important; z-index:11!important; } #qr .move { margin-bottom:1px!important; } #qr.autohide:not(:hover):not(.focus) { padding:0 3px!important; } #qr.focus>form { display:block!important; }") + " " + (SS.conf["Post Form"] === 1 ? " #delform[action='https://sys.4chan.org/f/up.php'] ~ #qr { bottom: 0px !important; } " : "") + " #qr>form>.captchaimg>img { height:48px!important; max-width:300px; opacity:.75; width:100%; } #qr textarea { min-height:120px; position:relative; " + SS.conf["Sidebar Position String"] + ":0; resize:none; width:255px; z-index:1; -webkit-transition:background .2s,box-shadow .2s,width .2s ease-in-out, " + SS.conf["Sidebar Position String"] + " .2s ease-in-out!important; -moz-transition:background .2s,box-shadow .2s,width .2s ease-in-out, " + SS.conf["Sidebar Position String"] + " .2s ease-in-out!important; -o-transition:background .2s,box-shadow .2s,width .2s ease-in-out, " + SS.conf["Sidebar Position String"] + " .2s ease-in-out!important; } #qr>.move { height:" + (SS.conf["Navigation Bar Position"] === 1 ? 23 : 22) + "px!important; line-height:18px!important; min-width:0!important; padding:2px 0 0 3px!important; text-align:left!important; } #qr>.move * { text-transform:none; } #qr>.move select { height:19px!important; vertical-align:top; } #qr>form>div { position:relative; } #qr>form>div:first-child #dump, #qr>form>.captchaimg>img, #qr>form input[type=submit], #qr>form input[type=file], #qr>form .riceFile { margin-top:0!important; } #qr>form .riceFile, #qr>form input[type=file] { float:right; width:100%; } #qr>form>div:first-child { position:relative; } #qr>form>div:first-child #dump { float:left; height:22px!important; width:25px!important; } #qr>form>div:first-child .field:not(#dump)+span { color:rgba(" + SS.theme.textColor.rgb + ",0)!important; font-size:0!important; position:absolute; right:265px; top:4px; white-space:nowrap; z-index:-1; } #qr>form>div:first-child .field[name=sub] { margin-right:0!important; } #qr>form>div:first-child+div, #qr>form>div#replies+div, #qr>form>.captchaimg { clear:both; } #qr>form .field, #qr>form>.captchaimg { margin-top:0!important; margin-bottom:1px!important; } #qr>form>.captchaimg { background:none!important; outline:none!important; } #qr>form>.captchaimg+div { float:left; margin-right:1px; position:relative; z-index:1; } #qr>form>.captchaimg+div input { height:22px; width:190px!important; } #qr>form input[type=submit] { width:65px!important; } #qr>form input[type=file]+input[type=submit] { position:absolute; right:0; top:0; } #qr>form #spoilerLabel { bottom:4px; position:absolute; right:8px; z-index:2; } #qr>form #spoilerLabel::after, .preview>label::after { content:'SPOILER'; line-height:18px; } .preview>label { background:rgba(0,0,0,.75)!important; color:#fff!important; } #addReply { font-size:3.5em!important; } #qr .warning:not(:empty) { overflow:hidden; padding: 1px 2px; text-align:center; text-overflow:ellipsis; white-space:nowrap; background:rgba(" + SS.theme.mainColor.rgb + ",.9)!important; z-index: 2; } " + (SS.conf["Post Form"] === 1 ? " #qr.autohide:not(.captcha):not(:focus):not(:hover) { bottom:-233px!important; } #qr.autohide.dump:not(.captcha):not(:focus):not(:hover) { bottom:-333px!important; }" : "") + " #qr:not(.captcha)>form input[type=submit] { width:100%!important; } #qr:not(.captcha) #replies+div { height:160px!important; } #menu, .subMenu { margin:0 2px; z-index:15; box-shadow:rgba(0,0,0,.4) 0 1px 2px; } .hasSubMenu::after { font-size:14px!important; } #menu .focused.entry { background:rgba(" + SS.theme.mainColor.shiftRGB(16, true) + ", .5)!important; } input[name=name].tripping:not(:hover):not(:focus) { color:transparent!important; } a.useremail:last-of-type::" + SS.conf["Emoji Position"] + " { line-height:0; vertical-align:top; } form[name=delform][action$='/f/up.php'] { margin:0!important; margin-" + SS.conf["Sidebar Position String"] + ":265px!important; padding-top:2em!important; } form[name=delform][action$='/f/up.php']>center { background:rgba(" + SS.theme.mainColor.rgb + ", .9)!important; display:block!important; border-radius:3px!important; } form[name=delform][action$='/f/up.php']>center>table { width:100%!important; } form[name=delform][action$='/f/up.php'] tr { display:table-row!important; } .ys_playerContainer { position:fixed!important; bottom:" + (SS.conf["Navigation Bar Position"] === 1 ? 262 : 287) + "px!important; margin:0!important; width:262px!important; " + SS.conf["Sidebar Position String"] + ":0!important; z-index:3!important; } .ys_playerContainer audio { width:100%!important; } pre.prettyprint { background:rgb(" + SS.theme.mainColor.shiftRGB(-16) + "); border:1px solid rgb(" + SS.theme.brderColor.shiftRGB(16) + ")!important; vertical-align:middle; } .prettyprint * { font-family:monospace!important; font-size:medium!important; } .prettyprint .pln { color:" + SS.theme.textColor.hex + "; } " + (!SS.theme.mainColor.isLight ? " .prettyprint .com { color:" + SS.ppDark.com + "; } .prettyprint .kwd { color:" + SS.ppDark.kwd + "; } .prettyprint .typ { color:" + SS.ppDark.typ + "; } .prettyprint .str { color:" + SS.ppDark.str + "; } .prettyprint .pun { color:" + SS.ppDark.pun + "; } .prettyprint .lit { color:" + SS.ppDark.lit + "; }" : "") + (SS.conf["Pages Position"] === 3 ? " .pages { bottom:auto; " + (SS.conf["Sidebar Position"] === 2 || SS.conf["Sidebar Position"] === 5 ? " left:262px; right:auto;" : " left:auto; right:74px;") + " margin:0!important; opacity:.75; padding:0!important; position:fixed; top:25%; width:auto!important; -webkit-transform:rotate(90deg); -webkit-transform-origin:top left; -moz-transform:rotate(90deg); -moz-transform-origin:top left; } .mPagelist.mobile { top:0; z-index:6!important; } " : "") + (SS.conf["Expanding Form Inputs"] ? " .field:focus::-webkit-input-placeholder { color:transparent!important; } .field:focus:-moz-placeholder { color:transparent!important; } .field:focus::-moz-placeholder { color:transparent!important; } #qr>form>div:first-child .field:not(#dump):focus+span { color:rgba(" + SS.theme.textColor.rgb + (",.4)!important; -webkit-transition:color .3s ease-in-out; -moz-transition:color .3s ease-in-out; -o-transition:color .3s ease-in-out; } #qr textarea:focus, #qr>form>div:first-child .field:not(#dump):focus { -webkit-transition:box-shadow .2s,width .2s ease-in-out,max-width .2s ease-in-out,min-width .2s ease-in-out!important; -moz-transition:box-shadow .2s,width .2s ease-in-out,max-width .2s ease-in-out,min-width .2s ease-in-out!important; -o-transition:box-shadow .2s,width .2s ease-in-out,max-width .2s ease-in-out,min-width .2s ease-in-out!important; } #qr #replies+div { height:128px!important; margin-bottom:1px!important; } #qr textarea { height:100%; float: " + SS.conf["Sidebar Position String"] + "; } #qr textarea:focus { width:415px!important; }") : "") + (!SS.conf["Show Logo"] ? " .boardBanner { top:" + (SS.conf["Navigation Bar Position"] === 1 ? 0 : -20) + "px; } .boardBanner img { display:none!important; }" : "") + (SS.conf["Style Scrollbars"] ? "::-webkit-scrollbar { width:8px; height:8px; } ::-webkit-scrollbar-track-piece, ::-webkit-scrollbar-track { background:" + SS.theme.brderColor.hex + "; } ::-webkit-scrollbar-corner, ::-webkit-scrollbar-resizer { background:" + SS.theme.brderColor.hex + "; } ::-webkit-scrollbar-thumb { background:rgb(" + SS.theme.brderColor.shiftRGB(32, true) + "); border:2px solid " + SS.theme.brderColor.hex + "; border-radius:5px; } ::-webkit-scrollbar-thumb:hover, ::-webkit-scrollbar-thumb:active { background:rgb(" + SS.theme.brderColor.shiftRGB(64, true) + "); } .reply ::-webkit-scrollbar-track, .reply ::-webkit-scrollbar-track-piece { border-radius:5px; } " : "") + (SS.conf["Style Post Info"] ? " .reply .postInfo { background: rgba(" + SS.theme.mainColor.shiftRGB(-16) + ",.2); border-bottom:1px solid rgb(" + SS.theme.mainColor.shiftRGB(4) + "); " + (SS.conf["Rounded Edges"] ? "border-radius: 3px 3px 0 0;" : "") + " margin:0!important; box-shadow: inset rgba(0,0,0,.15) 0 0 3px; } #qp, .inline, .inline div.post.reply { padding:0!important; } .menu_button { top:4px!important; }" : "") + (SS.conf["Emoji Icons"] ? " a.useremail[href*='madotsuki']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='Madotsuki']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='MADOTSUKI']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url('data:image/gif;base64,R0lGODlhFAAPALMAABwHHHIAABEREZhtjZt1ckUYNHkYJrdyhreKilYtO2tFTOe+pYZFTFY+Qf///wAAACH5BAEAAA4ALAAAAAAUAA8AAARr0MkpmWU0Zzb4xRrFHN8XVp/CqIp6smsrt2HTzHd+K5qt+0BeppGwIRrHI7FIaTiWiEVDKkUkmImnwZmILr7ghdWRMGSJxnDYei1QioCFQPCdIwAJdwjgBSMIACcTAAEIhgQBgYKDAY2JIREAOw=='); } a.useremail[href*='neko']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='Neko']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='NEKO']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAARCAMAAAAIRmf1AAACoFBMVEUAAABnUFZoUVddU1T6+PvFwLzn4eFXVlT/+vZpZGCgm5dKU1Cfnpz//flbWljr5uLp5OCalpNZWFb//f3r6+n28ff9+PRaVVH59Pr//vr38vj57/Dp7eyjn5zq8O5aVVJbYV9nVFhjUFRiWFlZVlFgZGOboJzm5uZhamfz9/bt8fDw6+drb26bl5j/8/lkX1z06uldWFS5r61UT0tfWlbDwr3Ew76moqNRTU7Mx8P75OpeY19pWl1XW1qzr6x5eHaLiojv7+1UT0xIU0uzqadVS0nV0MxkZGT5+PPk497///ra29Xq5eFtY2H28e2hnJignJlUUE1dXV2vrqxkY2FkYF/m3d5vZmfDuruhl5aZlJHx8O75+PZWVVP29vT/9fTj3trv6ubh5eRdXFqTkpBOTUtqZmX88/RMQ0T78vPEvr7HwcHDwsDq6ef///3Gx8H++fXEv7tZWVedmZZXXVudnJp0c3FZU1f79fnb1dlXUVVjXWFrZmy8t7359/qLj455e3q4s69vamZjX1zy4+avpaReWFz/+f1NR0vu6Ozp4+f48/lnYmi8ur3Iw7/69fHz7+xbV1SZmJZVUk1ZV1zq5ez++f/c196uqbDn4uj9+P7z7vRVVVXt6ORiXl/OycXHw8CPi4ihoJ5aWF3/+v/k3+axrLOsp67LzMZYU1m2sq9dWF5WUU1WUk/Au7eYlJGqpqObmphYVV749f7p5Or38fPu6OpiXFz38fH79vLz7urv6+hhYF5cWWKal6D//f/Z09Xg29exraqbl5RqaW6kpKTq5uPv7Of/+PDj29D//vP18Ozs5+OloJymoZ1ZVVJZWVlkYF2hnpmblIyspJmVjYKQi4enop5STUlRTUpcWUhqY1BgWT9ZUjhcV1NiXVkkhke3AAAABHRSTlMA5vjapJ+a9wAAAP9JREFUGBk9wA1EAwEAhuHv3dTQAkLiUlJFJWF0QDLFYDRXIMkomBgxNIYxhOk4wwCqQhQjxgxSGIsALFA5BiYbMZHajz1oJlx51sBJpf6Gd3zONcrqm/r1W8ByK0r+XV1LXyOLLnjW6hMGpu0u1IzPSdO17DgrGC6AadrVodGcDQYbhguP6wAvAaC0BRZQalkUQ8UQDz5tAof0XbejOFcV5xiUoCfjj3O/nf0ZbqAMPYmzU18KSDaRQ08qnfw+B2JNdAEQt2O5vctUGjhoIBU4ygPsj2Vh5zYopDK73hsirdkPTwGCbSHpiYFwYVVC/17pCFSBeUmoqwYQuZtWxx+BVEz0LeVKIQAAAABJRU5ErkJggg=='); } a.useremail[href*='sega']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='Sega']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='SEGA']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAALBAMAAAD2A3K8AAAAMFBMVEUAAACMjpOChImytLmdnqMrKzDIyM55dnkODQ94foQ7PkXm5Olsb3VUUVVhZmw8Sl6klHLxAAAAAXRSTlMAQObYZgAAANFJREFUGJVjYIACRiUlJUUGDHBk4syTkxQwhO3/rQ/4ZYsuymi3YEFUqAhC4LCJZJGIi1uimKKjk3KysbOxsaMnAwNLyqoopaXhttf2it1anrJqke1pr1DlBAZhicLnM5YXZ4RWlIYoezx0zrjYqG6czCDsYRzxIko6Q/qFaKy0690Ij0MxN8K2MIhJXF+hsfxJxuwdpYGVaUU3Mm5bqgKFOZOFit3Vp23J3pgsqLxFUXpLtlD5bgcGBs45794dn6mkOVFQUOjNmXPPz8ysOcAAANw6SHLtrqolAAAAAElFTkSuQmCC'); vertical-align:baseline; } a.useremail[href*='Sakamoto']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='sakamoto']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='SAKAMOTO']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAQCAYAAADwMZRfAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAAxVJREFUOE+Nk19IU1EYwK+GQQTVQ39egh6ibKlzw91z7rn3bvfOmddNszl1bjKXc5rJJGmBUr7Yg9qTD0IalFgRBEYg6EDQQB+GovQyQgiaUZsoLcgHMcr069w7MgcGXfi453zn+37fv3MYZt/n99e76tzVj4JN/hP79fvXnV3hnNabwUBjoOHcgTYOu/JQspgTzsqKgn9BfD4vkWTzur287PqLVy+zM+yePB7KsRXLywTjnSpnZctBkPCdW8ccDuU55vBO8RXbkC/oP5ph19V5+7LIky0OY1BKbZEbLcFSt7u6pN7jLmltCVrr3DV5jY3+KovFEsccB1KJNVpefe10BqS2tqqO4/AuphBB4L/LkrRqNgtJs1lMypLls1kU38mytMLz/E8VIlutqVqX6/weZG52OttRXjbE0cP/FYLRlpVjDXuQ/r77x2XZPKkCHA4HBAIBkCQpAygIAvh8Pu2MZgO0Lz+QSa/sQfwN9RfpVN66XC6Ynp6GhYUFGBwczAC1t7fD0tISxONx6O7upgHILmsqvLcHodOggfiV/v5+SCaT4HQ6IRaLgdfr1bIRRREmJyfBZrNBNBqF+fl5sNsdgE2GiAbp6bmbdbXC7qWQbxMTE7C2tgY6nQ5SqRSEw2ENopaoZpCXlwdTU1NaoECgCbgiU6y8QH+ECYWaTymK7TWdys7MzIwGaWtrg42NDejo6AB1WjU1NZo+FArB2NgYrK6uQrAlCASxn2z6wkuMp87VIAhkE2MEAwMDkEgkYHx8HBYXF0HtkQpRy1BLiEQisLy8rPVNKSsFjEzrXH4+z1hlS4xDhKadNu7t7YPR0VHweDzAEVWfHru6HxkZgeHhYVAURYNjkylVWKArZjjMzqmdVi+QCsLUkQiEjvDvncEkvU7/qQ0Vgukeo48Go87IiCJnZNmipxiz7wXEbVDnbUxQOgM12h9n6qTq6NvapRdtkwaP0XK8RmPuYSbxYfaQ/sJJhjfknuFRURUi7AMOozcCwl94hLZp5F+EioDQVwqYI6jomZU1NFtM+rOSxZjVazcyvwHr/p/Kws1jegAAAABJRU5ErkJggg=='); } a.useremail[href*='baka']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='Baka']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='BAKA']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAA0pJREFUOE91k3tI01EUx39JOpA0H4jNx0pbD3XTalISWf8YFlEgldqDsBLLyqjEKBCiLLWiggh6/KEV1WZ7OaelLZvDdDafNW1JFraWe/32+01FrUZ9uy4ylLpw4Z5z7/nc77n3HIqaMRIjZJyEcNX+uFCFeGmI/GZciEIsCFJUTvoAzDz+1y7K76MSwhX5hXl6z+WSbrzU2KB8YEGDwgrTaxZ3b7xHcaHhR3xw7Z5/UviB1ReP5XSg3+TAqYJOxMzWISFIC0GQDomhTVA9skCnsaAwp/vnMq66dBokNuBR9uFd7T9Z1zCunjci0qcRJUVdoJ3DYOhRnC/qBZ+jQbfeCc+37yjY2UEg0iwvJE0k9l8Z+8xqHmTgot0QLdQgTaQFQ2AsOzlHvOu1S5pwOLsHHo8HjHMCq2MazNvTlByKHyrJLDvdR25jMWRxYx5HjeMH2r1BDOOeguRua4OI14jx8a8YH5tA+al3EHKlW6mYOapb2oZBOOwMbEMseAE12L+jjUh3w+VipyAZ65oxn1NP/GMYGR6Ftn4Qsf7qa9S82Y/l/X122G0uL2TbxmZEz1WhXW8mUol8moXu+SCi/OoQ6VsDh3UUwyQ1k9GOaI5MTkX4yWTGHutvgI1F28sviAlRgxeoRm62HvsyW8En9pZ1TYgi6TntoyQtFm86rVgUoJZRvDnKMmXVAGxWmkAYOBwudBqGcHCvHulrGpGT2Uy+z4yT+QYsCXtCUpp8GxbKhx8gDK0ro+KjJGvzdjfDZnN6VdisLD5/JjArQ2zW66PJOj2lEZtStaBphkwah7K6kMJ/GEulp1bMWhAmMbTozOQRaWRtfoZVgjo4iRra4SYgGi26TwjxVeDKhR7Y7U606ixICq9tr7hd7+OthRWL7yUnJ1WPmXotqLhpRICPHCePtuFV6xdUPTAhcWEtRHEqfHpPyto4hPXLXnzflSEJnFaN3OCKDcsFsrEntR9RUmxARLAUgT5iBPuJsXWDBj0dZjRU9yNV+PTbpjTp9OA/pOSk24nRkXf1J462oPxcJ65f6ULlHSMulepRerYDgvj7A0cKpNz/tyTZqbzXO4t0ZZGQJ34RH11lFHIlA8LIqreCCMUZRY3cd2bwL/5/RmjNSXqtAAAAAElFTkSuQmCC'); } a.useremail[href*='PONYO']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='ponyo']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='Ponyo']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAAuNJREFUOE+Nk3tI01EUx39BTytConQTt1am07m5abi5KT5S8z2dj1yOEMUC7aUgIoimlmUEWX9kBZGWaamEmE6U1BI1XNPNGTrnHs33IwuSXrL4NgcJ0mNdOHDh3PPhnPP9XoKwcroJYvMQiRSicHCQKCgUyZC9/T5rNet5KUFs0zCZbZMsFmZ9fTEjEEBDp4/KSSSb/4JoGIyWaTYbiykpWEhOxhSHAzWD0aqkUGhWAcVkW58xlvuPhfh4zItEmOHxYDR3MhcdDaNAsKJydAz5IySKRNjEUmy88vjOVaU8F0iPCqCNjEBHkC/UYaGYFwqxmJoKLYOhkxPElg0QsbNtTlmox9yjRD9UCbnoOR+J/lwRWtOCcdXfDc2BPpg0d7CQlIQZPh9KKlVkAQjJ2x2zmOSsQu7hpzUJfBhLjsNQmADjxcT10Bcl4rE4EHc5LjBEhEPn7f1WTqXSLQB/s1Tp7vslsoIkyPPiMJAbi86McBguiaHKjoEqR4jJy2K0nAxApzMN5iUGrclrKVaz2fUvuF4tRbxDKA90w5VjTFyLZKHpTBSq4/1QnxGB2qxoVIZx0JopRCPHFSNOThfWZzfrXDcZEowH4iA05ATg68hDtBaL0HAuCm3lJ9Bfcx2fFNUoi/DCjRgfNHHd1wCZA2TyXjNkE6F0cBDpPFiojeNi8EkJdFoN3vXch0nbBJOhDd907dANv8JITxNqziag3ZsJbUDAwLin50Q9QWwl1qSYoNOVvUcOoqOqAAa9Fu9H2/F9+B5WZLcwOyxFX18flLI+VASyMGVeoJHD+Tzq5BS1PoaKRrNT8127P74swsq4FCa9FKvqBqwaOiz3hdEuLKueYSyECT2LNW0eIfo3E/WmEbvnG1MUJnWdpWhDGDvxQXZHo+RR0uW2tnv+auPX+TvtJm7zKpaen/4y2yjBUlcxlvtvmvT16ZWDpQeoVv3/60F/NrHjTf4ugazIXtJ8ivjnz/sJ+yGQRjcqUdIAAAAASUVORK5CYII='); } a.useremail[href*='RABITE']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='rabite']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='Rabite']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAQCAYAAAAbBi9cAAAACXBIWXMAAAsTAAALEwEAmpwYAAAKTWlDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVN3WJP3Fj7f92UPVkLY8LGXbIEAIiOsCMgQWaIQkgBhhBASQMWFiApWFBURnEhVxILVCkidiOKgKLhnQYqIWotVXDjuH9yntX167+3t+9f7vOec5/zOec8PgBESJpHmomoAOVKFPDrYH49PSMTJvYACFUjgBCAQ5svCZwXFAADwA3l4fnSwP/wBr28AAgBw1S4kEsfh/4O6UCZXACCRAOAiEucLAZBSAMguVMgUAMgYALBTs2QKAJQAAGx5fEIiAKoNAOz0ST4FANipk9wXANiiHKkIAI0BAJkoRyQCQLsAYFWBUiwCwMIAoKxAIi4EwK4BgFm2MkcCgL0FAHaOWJAPQGAAgJlCLMwAIDgCAEMeE80DIEwDoDDSv+CpX3CFuEgBAMDLlc2XS9IzFLiV0Bp38vDg4iHiwmyxQmEXKRBmCeQinJebIxNI5wNMzgwAABr50cH+OD+Q5+bk4eZm52zv9MWi/mvwbyI+IfHf/ryMAgQAEE7P79pf5eXWA3DHAbB1v2upWwDaVgBo3/ldM9sJoFoK0Hr5i3k4/EAenqFQyDwdHAoLC+0lYqG9MOOLPv8z4W/gi372/EAe/tt68ABxmkCZrcCjg/1xYW52rlKO58sEQjFu9+cj/seFf/2OKdHiNLFcLBWK8ViJuFAiTcd5uVKRRCHJleIS6X8y8R+W/QmTdw0ArIZPwE62B7XLbMB+7gECiw5Y0nYAQH7zLYwaC5EAEGc0Mnn3AACTv/mPQCsBAM2XpOMAALzoGFyolBdMxggAAESggSqwQQcMwRSswA6cwR28wBcCYQZEQAwkwDwQQgbkgBwKoRiWQRlUwDrYBLWwAxqgEZrhELTBMTgN5+ASXIHrcBcGYBiewhi8hgkEQcgIE2EhOogRYo7YIs4IF5mOBCJhSDSSgKQg6YgUUSLFyHKkAqlCapFdSCPyLXIUOY1cQPqQ28ggMor8irxHMZSBslED1AJ1QLmoHxqKxqBz0XQ0D12AlqJr0Rq0Hj2AtqKn0UvodXQAfYqOY4DRMQ5mjNlhXIyHRWCJWBomxxZj5Vg1Vo81Yx1YN3YVG8CeYe8IJAKLgBPsCF6EEMJsgpCQR1hMWEOoJewjtBK6CFcJg4Qxwicik6hPtCV6EvnEeGI6sZBYRqwm7iEeIZ4lXicOE1+TSCQOyZLkTgohJZAySQtJa0jbSC2kU6Q+0hBpnEwm65Btyd7kCLKArCCXkbeQD5BPkvvJw+S3FDrFiOJMCaIkUqSUEko1ZT/lBKWfMkKZoKpRzame1AiqiDqfWkltoHZQL1OHqRM0dZolzZsWQ8ukLaPV0JppZ2n3aC/pdLoJ3YMeRZfQl9Jr6Afp5+mD9HcMDYYNg8dIYigZaxl7GacYtxkvmUymBdOXmchUMNcyG5lnmA+Yb1VYKvYqfBWRyhKVOpVWlX6V56pUVXNVP9V5qgtUq1UPq15WfaZGVbNQ46kJ1Bar1akdVbupNq7OUndSj1DPUV+jvl/9gvpjDbKGhUaghkijVGO3xhmNIRbGMmXxWELWclYD6yxrmE1iW7L57Ex2Bfsbdi97TFNDc6pmrGaRZp3mcc0BDsax4PA52ZxKziHODc57LQMtPy2x1mqtZq1+rTfaetq+2mLtcu0W7eva73VwnUCdLJ31Om0693UJuja6UbqFutt1z+o+02PreekJ9cr1Dund0Uf1bfSj9Rfq79bv0R83MDQINpAZbDE4Y/DMkGPoa5hpuNHwhOGoEctoupHEaKPRSaMnuCbuh2fjNXgXPmasbxxirDTeZdxrPGFiaTLbpMSkxeS+Kc2Ua5pmutG003TMzMgs3KzYrMnsjjnVnGueYb7ZvNv8jYWlRZzFSos2i8eW2pZ8ywWWTZb3rJhWPlZ5VvVW16xJ1lzrLOtt1ldsUBtXmwybOpvLtqitm63Edptt3xTiFI8p0in1U27aMez87ArsmuwG7Tn2YfYl9m32zx3MHBId1jt0O3xydHXMdmxwvOuk4TTDqcSpw+lXZxtnoXOd8zUXpkuQyxKXdpcXU22niqdun3rLleUa7rrStdP1o5u7m9yt2W3U3cw9xX2r+00umxvJXcM970H08PdY4nHM452nm6fC85DnL152Xlle+70eT7OcJp7WMG3I28Rb4L3Le2A6Pj1l+s7pAz7GPgKfep+Hvqa+It89viN+1n6Zfgf8nvs7+sv9j/i/4XnyFvFOBWABwQHlAb2BGoGzA2sDHwSZBKUHNQWNBbsGLww+FUIMCQ1ZH3KTb8AX8hv5YzPcZyya0RXKCJ0VWhv6MMwmTB7WEY6GzwjfEH5vpvlM6cy2CIjgR2yIuB9pGZkX+X0UKSoyqi7qUbRTdHF09yzWrORZ+2e9jvGPqYy5O9tqtnJ2Z6xqbFJsY+ybuIC4qriBeIf4RfGXEnQTJAntieTE2MQ9ieNzAudsmjOc5JpUlnRjruXcorkX5unOy553PFk1WZB8OIWYEpeyP+WDIEJQLxhP5aduTR0T8oSbhU9FvqKNolGxt7hKPJLmnVaV9jjdO31D+miGT0Z1xjMJT1IreZEZkrkj801WRNberM/ZcdktOZSclJyjUg1plrQr1zC3KLdPZisrkw3keeZtyhuTh8r35CP5c/PbFWyFTNGjtFKuUA4WTC+oK3hbGFt4uEi9SFrUM99m/ur5IwuCFny9kLBQuLCz2Lh4WfHgIr9FuxYji1MXdy4xXVK6ZHhp8NJ9y2jLspb9UOJYUlXyannc8o5Sg9KlpUMrglc0lamUycturvRauWMVYZVkVe9ql9VbVn8qF5VfrHCsqK74sEa45uJXTl/VfPV5bdra3kq3yu3rSOuk626s91m/r0q9akHV0IbwDa0b8Y3lG19tSt50oXpq9Y7NtM3KzQM1YTXtW8y2rNvyoTaj9nqdf13LVv2tq7e+2Sba1r/dd3vzDoMdFTve75TsvLUreFdrvUV99W7S7oLdjxpiG7q/5n7duEd3T8Wej3ulewf2Re/ranRvbNyvv7+yCW1SNo0eSDpw5ZuAb9qb7Zp3tXBaKg7CQeXBJ9+mfHvjUOihzsPcw83fmX+39QjrSHkr0jq/dawto22gPaG97+iMo50dXh1Hvrf/fu8x42N1xzWPV56gnSg98fnkgpPjp2Snnp1OPz3Umdx590z8mWtdUV29Z0PPnj8XdO5Mt1/3yfPe549d8Lxw9CL3Ytslt0utPa49R35w/eFIr1tv62X3y+1XPK509E3rO9Hv03/6asDVc9f41y5dn3m978bsG7duJt0cuCW69fh29u0XdwruTNxdeo94r/y+2v3qB/oP6n+0/rFlwG3g+GDAYM/DWQ/vDgmHnv6U/9OH4dJHzEfVI0YjjY+dHx8bDRq98mTOk+GnsqcTz8p+Vv9563Or59/94vtLz1j82PAL+YvPv655qfNy76uprzrHI8cfvM55PfGm/K3O233vuO+638e9H5ko/ED+UPPR+mPHp9BP9z7nfP78L/eE8/sl0p8zAAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAPxSURBVHjaXMzbT1t1AAfw7+93Ts9pT1ugpaUXYFS2Ueqq3MKcbCZqFCdmaNA3fViiLktMfPBF33wz8W3xwRd9mNHo1Gg0ZnMsxmUbwjLYoOAG3ZxcChR6O+1pe9pz/fnkyz5/wId8/+XH71pMOSK6Hv+gL95nLy3Nw+X0IF+QEQyE0XcoirJcQ65YhsfpwvHxV0AoBWMMguDE/M2rx+RSNsez0sxrExM9E7e39zyK0n2Go5wNMDyKEIJmQ0Vu5x5cbgmEUORzxY5i/qcrBdk4T71ur1X4o4TBJ+tvq82Z3yvlmpdQHo9mBASWaUFV6/C1e+B2u6AZ85+OJYPeXr/QTb2R5L02M4js5Q08e1Ia7z2weV0pyz0MPEDI/wtAAEIJFEWFqYt4uDpz9uBh5TTNCJA4t0Sp1HuxHvWjfSuG9YurGD/pHxxNrM0bta0pTWcgVICm2WioOgydQTcobs38fDIg3ThH9jXQjICCWt0ny/NzMLLf3uirJU5kUxlUehYQH4/BJBJ+/LV2JRYJp0MhY8imrEWtmeXUUtbocO6cGHs+IRqXDLT1BvH1Rvo02dtMI7uzeozLnL8W104I27MrWGtm4B7mMDCZhCsQgOh2gzGAEAZT01Da3MT0F3fwjB2CMiSu3ZJHRrinh4dRku3thbs7/zSav53yd4h8f58X3Ud98PYnMJfK4pfLuxjq7wBgg+cFXPgrj1g8ipX1JfuB+cSb4QOJNHUQER6XAGdb/4UUezU5Vy9ue0ZqEONxgIi4uryDD3+Yxs2lDfAOAaAUK5t5fHb9Pg6Pj9qBUDzX2RkCH2wPwOV3Qwr6AC1/sKO20EVDCTSpE5pcwtmpESQPRTFwJIxyTkFVBj56fQBVEzjQxng1t3yGt9zvUZsAhczuC3q6+NXWje8+j3VysBxuMMagKWUE2lyYPBpBKf0vHv5dQKP+HPIZilhIhEOS0NJqjm2uV8Hvb6RfTpjeS13dT2Gx2gQYA6kWwPEOSJEoTMMCIzyiyUPo5jkU9q6h0y+BcBTEwcEX9kZmb697eV5tvBT0uqEpD6EbJppKFcyRg0gITL0JJrWCiBIIBzAwBLtcYDZgmyZ4qMht7e3eXq5UecNoNO29u7D0FbBiKx60FNAvFCFIEhymAVavwPL4AIcIWAZgW+AsHdRuoJTJYnnZ+cnxY6PgpqYm8y26+VaIhxDh2rCYamBRrmRdZgW8VRWdTgbOqII2y6B6DVSV0SyWcH9Nrvx5J/x+b3Lim2g0At4b7EqtOZwvzi3OvSPqTNzn/en22Klz0+mUr6uIN4y5tUEHp/ksy6prxGGBD8tF1T/L+J6L4ehjSqSrG6Zp4L8BALwS0lFaQxwUAAAAAElFTkSuQmCC'); } a.useremail[href*='Arch']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='ARCH']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='arch']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABCFBMVEUAAAAA//8rqtVAqtUQj88tpdIYks46otwVldUbktEaldMjldM2qNcXk9IWktQZkdIYlc8mnNUXlNEZktEZlNIYktIWlNMXktE7o9klmdMXktFHqdkXk9EWk9EYk9IlmtQXlNEXktAWk9AWlNEYlNFDptkZldMYk9E4otg/p9kXktEXk9AXlNA4otclmdQXk9IYktEXlNEwn9YXk9IXk9FFp9o3otgXk9FPrdwXk9E2otdCptkXk9E/ptkcldIXk9Edl9IXk9EjmdUXk9EXk9EXk9EbldIcldIjmdMmmtQsndUvntYyn9YyoNYzoNc0odc1odc2odc6pNg7pNg9pdlDp9pJqttOrdzlYlFbAAAARXRSTlMAAQYMEBEVFhgcHR0mLS8zNTY3PT4/RU1kdXp6e3+Cg4WIiYqMjZGXl5mbnqSnrbS3zMzV3OPk7Ozv8fT29vf4+fz8/f7SyXIjAAAAmUlEQVR4XlXI1WLCUBQF0YM3SHB3a1B3l7Bx1///E6ANkDtva0jKbCW2XIH1z2hiZEZ4uUgxo7JedTQye/KN/Sb5tbJ+7V9OXd1n+O+38257TL+tah3mADAwSMM7wzQWF4Hff6ubQIZIAIb6vxEF4CZyATXhZa4HwEnEA+2QgoiyQDnIEWkjVSBBZBqXbCRlKYo8+Rwkyx54AOYfFe7HhFa7AAAAAElFTkSuQmCC); } a.useremail[href*='Centos']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='CENTOS']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='centos']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAB5lBMVEUAAADy8tng4Ovs9tnk5O3c7bX44LLduNO1tdDh7r/eutj43q2kocX23az07N+qqsvUqcmXl7331ZXJj7r40o/Pn8T42qP63KjNw9n21p3Y387Ml7732JzR55z05MSxtMLGn8TC4Hx8eqt8e62Af6/B4HnG4oPC4HzH44fBf7LCgbOkoMTcsrmtn8PWqcfFtKrj4Jvs2ZOz2FnMqLXT3KfY5p60Z6NUU5XRuqHzwWSywqDn3JaiiLWahrWhkry5zJjRmqm1Z6P1wmb1y319fK632mK5cKi5nH+73Gu73Gy73W283W+9eK17e6y1yZS3aqRZWJdcW5ldXJplXZppaKBwb6VwcKV5eKswL306OYNPTpGkfK+m0kGpUJWq1EnEqIuXK3+Xh7ahP4qhkryMfK6BgK+CdpGMaKKMa6O9ea2+eq6+oYW/eq+NbqWVlL2Wlr7AjanA4HnA4HrBkqbBlafB33rCgbLCmKjCxIzC1mSs1UytV5mtxIWt1lCuz2evWpuvXJywxYzHjrvH4oXIjrrN2HXO5pTO5pXUlYnUlYvVl5Hb0G7e0XTg03rhr5fpzHPpzXTp0Hvtz3/wrDHytknyt0zyuE3yuVHzvVr0wGP1x3T1yHf1yXe0ZaL2zYP30o730pD31ZeRIcF5AAAAQ3RSTlMAFBkbHEhJS0xMTk5UWWBsd4SEiIiPkJCVlZaam6CjpK29wMPDxMTFxcnK193e3+Dg4uTn5+fo6e/v8/P4+fn7/P7+J4XBAAAAAOBJREFUeF5Vj1OvAwEYBb/yGlu717atLW0b17Zt2/6nze42TTpvMw8nOZCAmwUpiIY6c5IiLi9tPX64GairqszHQ4X2VB64v1Cs6PxMPJSdHM777s6/jyaMRGiRLyyrb88OpjZ3CzAXrm1sqzSNNeN7kVBPNgB7cG51abE5l9cXDces7emQ1uadHhutFUg6gpPKkSIqQGavwz7r7O/+/3t/rSdjI9XDM3qz4fr3B/3iA0aJTG9x71+9oR/PLDwUe2wm19bly+fTIxHyEETatbPewGEw6Mk/tKZCEqSQQUlIHB/QNBEjjVN1AAAAAElFTkSuQmCC); } a.useremail[href*='Debian']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='DEBIAN']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='debian']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAAQCAYAAADNo/U5AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAAZ5JREFUOE+Nkk0oBHEYxv8fu5GQj3JwcaDkIAc5IpR87M7MKnIVJVKclaIQ5Sy5OLkgR7n5OigcSNpmd2c2Vyfl4KT8/muWiVU79TTv+7zv837NCBF6PG1X+NpZyEYSD9mIc+tHnBPe23B9xKrCuTmbQA/JKfABrhBswa1hH4A38IwfOxPdX1qcjiCQxO5NyrjKV70TnSbeRPwJvGN3i4yyqnEucPY8ZZX9GSEgGK+RvFfyjk2VKZxzBNG8wJWWgh/xtDOeUXZ7Slr6TrSLYL9N4SMgYTTcwdc2ArvJcElhSVcM6mCNSV8n9hA59yTU5UWMG6HIbLhIWlglgWiC2L4Z79qTdo40D6ISuOWwKCWHyk9Fv8ldpUHOuGTuynwSBUynddPdlbEosVpP9Eu4FnOsRzUYNTsdmZN/d5LDiqM0w+2CMdAFFsFGWgfXxZnheqe/z+0puwEM0HHYV3Z9Sgz8TEz7GkQvpuJ/36ggj2AaHLrSlkULWV5x+h2E8xkZL16YVjGNaAUscfZ/f6c/k9ywLKI2MMcRWl0RLy007idmRbQJ7RIfDAAAAABJRU5ErkJggg==); } a.useremail[href*='Fedora']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='FEDORA']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='fedora']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABPlBMVEUAAAApQXIpQXIpQXIqQ3UpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIpQXIqQ3QpQXIpQXIqRHYpQXIpQXIqQ3QqRHYpQXI8brT///8uTYMpQnM5Zqg5ZqnS1+I4ZaY4ZactSn8uRnYrQ3MrRXgsRHUsR3s8bbM8brMtSX4wUosxVI01XZw2X50vUIguToQvR3c6X5o6aKs6aq08Un8qQnM9VIFDWINJXohKcKlXapEqQ3UvUIc2X55bhcBdcJVgcpdhfapmd5tuk8dxgqJ1hKR5jbB6iah/m8Shudq3v9C4wNG/x9bFy9nFzNnFzNrIz9zK0NzK0t/O2+3P1eA2YaDU2eTb3+jb4Oje4urj6fHm6e/s7/Tz9fj3+fz7/P38/f3+/v83YaEa/NNxAAAAHnRSTlMABAoVGyY1SVlpeIuQsLfDzdHW4+3y8/b39/n6+vr4+ns8AAAAyklEQVR4XiWN5XrDMAxF75KOknYdZJS0klNmHjMzMzO9/wvMcH7I37mSJShsJ+5NjMT6umDoHyXDcI/2qJadh++P3cle1de+9yPe3/bTY92wzfzr7wGtP3JrAI72BZGVtcAdQlwHy+JS1pDbBE9qamZF3BYrjQxPEXwKc6dC8bXFm0QIpmt8kn0Rn093q82UCtK8oXZckwFJzuulV8bHkajPyXdbnJnARfDHs0trz+JQ+5AFvzp/L0+cL2qPAINUPrq5OC6p/64F/AMnrST+Dq/r7QAAAABJRU5ErkJggg==); } a.useremail[href*='Freebsd']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='FREEBSD']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='freebsd']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAABIAAAASABGyWs+AAAABmJLR0QA/wD/AP+gvaeTAAADXklEQVQYGQXBS2wUZQDA8f83j33M9rF9d7u4loaWklaDpkSo9KDGaIKUaGxshD2YSPRiuDVeTDyhBxosJCoa40ktpAkPDcUqAYVIpUSUPrAulEdD2bbb7e7ObGcfM/P5+4kwKDvq6yJ1FYYcvb+YAkqAHo/HQ7FYrFIoCiurq9ZXJ06YSOkA+kBzfX06bys3zHxS9EL0tXDVyZfefacqV+X/ZSJx5+qLbx98LhaL9RiGEZWlEsWC/Thd9q6Pf3vs2u6Orc83rFsvTwwfLf5obgywT1Vjh2Hh+rbNsnTssJdNLedK5aIrpSuldKVXKsnH4+Pyn6FDXn5tMef9O+3NvdkvP1V4+EYw2AoQ+KSx8dRYS6NXXnwovaItXduSrrkinWxGOmZWJi9OyOK9m1LmsjIz9IH8QUMOd3WfAQwNKCy2tJwbHB5+XasPaxIHmc4g7WWEZ1MquBiRFlJTf1E7+Tl/H/8asavPzTY1nWd2ZkMDRPeBeHPz5ojwsilEQCBvTSKunCF3M8FSNkBGVTHDYYrLj8jVNhDZ2SMa2zo3MTamaIC/u6Ojr3DtrOrvP0BpdATnyBeIhTxpR5ABUlKSUlXS1dWstbVxdz6hPL0l1quGqkLaKwNvVcjEXNRd/4mit4Z19DjefBEPyCKxgQJQcF28dBrHNDGTSZSezsjeff0hraa2Vs2vrvit81O4vj9xLJcC4ADrQA7YAGqBGsAql/EtLdFQE/L7dF1XZmdnSrbPMJfXoLDmolQK8gJyQBowgQhQDRQBD+hsraVhd4e5MH+/oExfvWLJ9q3/3S7qMpNH2hsS40kFS4EUUAMA2IANRIBXv4uzuO67c2PykqkA5YmZ6bN18YPi0Yoknxc4AsJPCMLVAk2BLKDosCWqs/PZaulkuxk9fekcUBAAQGDks5FT0W++3NuYuC0DVUL4DIEdlIQDAj0IRkigaMjArkFx0tf523sffrQHyKsAgHPhwoXLL+yP9/kePNhk5ExUTyKFkJVAUAiCFZrQup4Rv9ftuLV/6ONBYBVABQAArMvJ5MXW7duD6P62sD8UrPAFRU1TpeCpCnGvPZr7WW///v0jpw+VC9ZdAAABAAAAAMLo7drWrmQyPWG/r8tnaGIjaM05ujr16x/ZBFh5AACA/wGZnIuw4Z4A3AAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAxMi0wNy0wNFQxMDowOTo0OS0wNDowMOPVpFwAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMTItMDctMDRUMTA6MDk6NDktMDQ6MDCSiBzgAAAAAElFTkSuQmCC); } a.useremail[href*='Gentoo']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='GENTOO']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='gentoo']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAB9VBMVEUAAAD///+AgICqqv+AgIC/v9+Ojqqii9GAgKptYZKQkOmPj/ddUYBgW4eVjeCTgfiWjO5wbJaZkvPBvepkXomYkNldV4Bzbpl6dJ+Uj7ynoO6Vi+1qZI63se2mnudjXYjOy+GCfaqZjvWlm/Pc2e+Oh7NeWIOWjfeXjeW1sd+gl+diXIfp5/KHgKnn5/F2cZx6c6ZgWoXc2e6dltrAvNu0scrX1eTOyujCvup4c5qpovVpY43///+6uPPJyPXq6fvm5vrz8/z8/P7+/v/d3PixqvmxrPSyrfe0sPO0sfS3tMve2/3r6vy6ufPz8/3d3fi3tM63tPO4tsu5tsu5tvO6tfe6t/Vva5KRjKy7tvW7t/W9vPO/vM+/vvPCwfPEw/TFwvTFxOfGxfTGxvTHxvTIx/TJx/aTiOrNzPXNzfXQzfnRzuHS0fbS0vbT0uHU0e/U0uTU0/bW0+zW1ffX1vfY1/jZ2Pjb2/jc2uSTiemVkLSlnvbe3PTe3vng3fzg3f3g4Pnh4Pnh4fri4enj4/nk5Prl5Prm4/ymn/bn5vro5/rp6O/p6funoPWsqs3t7Pvt7fXv7vzv7v3w7/nx7/3y8f3y8v3z8vytqPWuqPX09P319P319P719f339v739/34+P35+f37+/+uqev9/f6vqvSwrPQAR0dcAAAAPHRSTlMAAQIDBAgJCwwVFyAsNUFHSVBneH+Bh4mVmZmanKCxsrK2tr3ExtDW19rb4ODl5u3t7u/w8/T6+/z9/f4MkNJ1AAAA8ElEQVR4XjXNw5aDURSE0YrRtm3b54+dtm3btm3bz9k3Wek9+2pSYFwT8ibzE93hwAtdJqK3nZo4J9hFXbP+vFHOthV6gnGzstZq94wdCs4UCCDymQ2v7X0LdYoSQ0MIENRYzJbRlPTTHu73ZNAL8vivmVui98PpzuqffX0mIPHJGtOQenukteJ+aS3b9htNpDnT9TeZH1bHAwBRMhGpd6e6uNrLoRgxBKmsX47nBlp678ojpEA40fejcmW4e/No0V8IIPfj6eKgbEJ3ZUnzgE1OqWp9Q3VeWRAsg51f1dZ8c31RmAsc+N5JGbG+zvj3BzDCPrzMDC9SAAAAAElFTkSuQmCC); } a.useremail[href*='Mint']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='MINT']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='mint']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAACVVBMVEUAAADh4eEAAAAAAAAAAAAAAAAAAAAsLCyXl5dgYGCnp6eTk5N3d3fBwcGqqqq8vLzNzc3Ozs7Ozs7Pz8/Pz9DQ0NHR0dLS0tLS0tPT09Pf3t/Pz8/i4eLb29vZ2drZ2tna2dra2trf3t/u7O/u7e/u7O/r6+vt7O/w7/Lw8PDy8fTz8fXz8fbx8fHz8/P19fb49/j49/n6+vuPxlmWyGOx437h9NDr9eD6/fj////+/v75/vTA5Jv6/fb7/fnL5bDL5q+AxjeDxUCEzTyGxUaGzjyHxkiHzz6J0D+Kxk6K0kCLyE2M00WNy06P00mSz1OUyF+W2FGX1FiY0F6Z02CZ21ac0Wiez2yfz2+f2mOh4GCi4GOi4WKi4mOk12+k3Wul32um1Hin0nun4G6n5Gin5Wmo23Op2Huq1n+q43Cr526s4Hit23+v6XSw34Cw34Gw6nWx4IKy4IOy44Cy63ez146z34az4IWz4YW03Y217nu38H2625e645G74pK83pu98Iq984W+4ZjA4px0tzDA5ZrB8ZDC5p7D55/E947F6KHF+JHH4qvH6qTI46/K5LLL5LN1tzLL5bN1uTDL57DM5bPM6qzM66/N5rTP6LbP6bTR6rfS573T67vT7LrV7r3X68XX7MHX773Y77/Y9rvZ8cHa7cjd88bi88/j8tTk8djk9tHm8trn89vo89zo9N3p9N3p9d7p9tvq9d/s+93s/dzy+erz+O73+vT4/PX5/fT5/fX5/vN1uzB3vTD6/ff6/fh5uTj8/fv9/vr9/vx8wjV/xDmrMRH0AAAAOXRSTlMAAAECAwQJDzk/RUlNU3F0kpSVlpeYmpucnaKjpKWqqqqtu8LExMTEzdTU1NXY4evy8vP+/v7+/v6LaR1mAAABD0lEQVR4XiXI03bEABAA0KltW9kaW3eSZW3btm3btm3b/q4mp/fxgqKOtpamhrqaqoqykrQYABh+PVMU9fjE5Xp8o54kgPHN0EBHU2N5YXZykiua0HHd2759VF2Sk5IYE5GGsmCEWLV1kVWwt5O+3x/qpgsy8k4ja+cJl2/v5C22tlgCAHtw9TQSa4s+AzfPSm0BRNl9SydhWJzLC567KrNhgrNwHIJ5qTz/2f9w7Jw/DNqIjVr04exW0AEOXcN3Ab7enr9eDW2VTJgehONyc2Z8XP5YdD0Tcuhcc4/r45OjGX51TEjYPbh8THRPvbz+CHusgSZlT7rP8PkCwfQKaQUi9Igr6JsRBMFiWZgb/AHKElRzKopZJQAAAABJRU5ErkJggg==); } a.useremail[href*='OSX']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='osx']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABrVBMVEUAAAD///////+qqqr///+ZmZn///+qqqqAgID///////+tra339/eAgICoqKjx8fGMjIzm5ubh4eGPj4/g4ODIyMiAgICSkpKLi4vS1tbPz8+Xl5eMjIypqanIyMjW1tZ2dnbR0dGamprFxcV3d3d+fn60tbV3d3dcXFx3d3epqal7fHxxcXF+foCnp6hYWFhyc3Ojo6SMjI5fX196enp+fn6Li4xERERqamqgoKFpaWmFhoeen6A/Pz9QUFCWlpeSk5SUlZWUlZaOjo+Tk5RHR0cuLi5YWFgwMDAeHh40NDQ3Nzc6OjpcXF1rbG0XFxdSU1NVVVVXV1dZWVlbW1tnZ2lwcHABAQEEBAQXFxchISI+P0BISUpaW1xHR0kNDg4qKyszNDU1NTY9Pj8NDQ1cXF4XFxhSU1QSEhIDAwMrKywtLS4uLi4wMDFHSElISEggISE0NDVJSktNTU1FRUVWVlhGRkYEBAVBQUE0NTZQUVJQUVMFBQUqKitWV1lXV1daWlpaWlw+Pj8bGxtcXV9dXV1fX19fYGFgYGBkZGRlZmhpaWlsbGxwcHB2dna844Y9AAAAV3RSTlMAAQIDAwUFBggMDhkeICMkKCgqMDIzPj9ERFBib4CCg4iMjZCcnp+jqamrw83W1tvb3ePl6Ojp6+vs7u7v8PHy9PT09PT3+vr7/f39/f39/v7+/v7+/v50ou7NAAAA30lEQVR4XkXIY3vDYABG4SepMdq2bRSz/capzdm2fvOuDO397Rw0Ly4tz2QAQPbcxuZ2E/STJwfxPhWgG355fRrVAIVb1zeP9UDLfiSwkAcADe8fn7tFxWuEXFRDoer/OgoMTRBCumj8yJwPBo8Zhpk14U856/HI8n0ZUtpZ1udrSzfVneA4roNKjdrwpcMRilb8d8G60+lKnrpWcn9bO+B23w2O8Tzfq4aiNSZJqzn5O4Kw16h06fPZ+VUlUHfo97+VAEb7rSh2UgDd4/U+TBlQY7FMj5gBIGvcarVVfQPVPTG94D0j9QAAAABJRU5ErkJggg==); } a.useremail[href*='Rhel']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='RHEL']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='rhel']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABj1BMVEUAAAD///////8AAAD///////8AAAD///8AAAD///////8AAAD///8AAAD+/v4AAAAAAAAAAAArKysAAAD///////8AAAAAAAAAAAAAAAD///8AAAAAAAAAAAD///8AAAD///8AAAAAAAAAAAAAAAB5eXn+/v5JSUnKysrS0tJ5eXmqqqqxsrL+/v4ZCgknJyeHh4eIiIjo6OgZCAdOTk7t7e3///8GCwwPAAArKyv19fX29vb9/f0EAAD////+/v4AAAAGBgYHAAAJAAAMAAANAQAPAQAVAQFyCQV9fX2pIRzmEQjn5+cBAAAFAAAAAADnEQjvEgn////uEQjyEgnsEQjzEgnxEgljBwPaEAj9EwnwEglHBQJHBQNNBQIBAAB3CQR5CQSHCgWLCgWRCgWTCwadDAWmDAapDAa/DgfKDwjWEAgGAADh4eHiEQjmEQjmEQkKAADoEQgLAQDtEQgMAQDuEQnvEQjvEQkPAQAfAgEuAwEvAwE8BAL1Egn3Egn4Egn6Egk+BAL+/v5CBQJrB0muAAAAT3RSTlMAAAMEBAkYGhsbMTRLUmpvcHeIjLe6vcHCxM3P0NbW3Ojp6u/w9ff5+fn6+vr6+/v7+/v8/Pz9/f39/f39/f7+/v7+/v7+/v7+/v7+/v7+Q8UoNAAAAO5JREFUeF4tiwVPA0EYRL9SXIsWl+LuxfcOd2Z3764quLu788NZNrxkksmbDP2R7vH6GioLs+iffEzNXd4+TqPErUUpVqMOvwgdzMPn1rv5vPsVeufBTaBK/bH2FPvkEUuIG5jIIc+sHYn/HJ3dC/Hxuo4y8s44dzwBbFkisHN8bVIdXs6jb+H97aCwbHEIqgcml64CD7YllNkAVQC940MLYe5YzvIeQAXNrd19Roc5MdzfdQLUUKaUYyuG9I8y1g4gj6hIak4X5cBIT2MquZJrJdOqpY11ZpAiqVwbY/C7KY1cRCrZxX4pWXVuiuq/hs49kg4OyP4AAAAASUVORK5CYII=); } a.useremail[href*='Sabayon']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='SABAYON']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='sabayon']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABvFBMVEUAAAAcUaYdVKwAAAAAAAUABAwWRY4YSZYhZtIhaNYHDx0KCgoFDBcKCgoRMmYSNm0fXL0fXb8AAAAYS5gaTp8fXLwgXsEGBgYFBQUZSpgZTZ4JFSgODg4IEiIOJkwOKVIkW7EnXbQLGzUTExMKGC8LHjwMIkITExMiIiIPEBEPJ00QEhMXOXAaPncOJEgoXbApXbEcHBwwMDAEAgAfHRgQDgo3NC8AAAAHBwcKCgoLCwsJCQkaGhofHx8lJSUwMDA0NDQ4ODiRkZEICQocHBweHh4GBgYHCg8mJiYnJycpKSkrKystLS0uLi4ICAgODg43NzcRERF1dXUUFBSjo6O1tbUbGxsEBAMLGS8MDA0iIiIjIyMkJCQNDQ0NHTYKCQkoKCgPDw8QEBArMDkKCgkRERIREhMxMTEyMjISIz00Njk1NTU2NjYCAgIVFRU5OTo5P0c8PD0+Pj4/QURAQEBHR0dKSkpMTExSUlJiYmJlZWVnZ2cWFhZ2dnZ4eHh8fHx9fX2FhYUXFxeVlZWXl5eYmJiZmZmcnJwZGRmlpaWrq6usrKyvr68KFiq/v7/FxcXY2Nji4uLn5+ft7e0yif9uAAAAN3RSTlMAAAApKSkqKioqg4OEhISEhoa1tra3t7y9vr7S09PT09TU+Pj5+fn5+/v7+/v7+/v7/v7+/v7+70RY/wAAAPpJREFUeF4dyWNjw2AUBeC7dfYyorM6rx1exKltzLZt2/rDa/J8OgBVVlFDX39jcTZoUqCse251a2dvu6ccUtWlanLQ4Vpel+ThlWq1l3wEz58tx4dOt1dMlAJk9A5gMjG75LHwo46hzkwosGOMbejumoRvubC9EOrMviT0E0Us9fvN9dA6zxJCNv6+ECGsb6oNWsgmpZT9/UTUZo3Em6AW34guTL4jiAudiCM1kLcw8/SmHERfT1/eueBiDqR1GK1n9w+K8nglxYxd6QAML4ztXoQuj8YFgWcgqdJp8qzty26vaboCNIxBCshyQDKov0aXr29v1ufq1PwPx5Q7bCoh6eoAAAAASUVORK5CYII=); } a.useremail[href*='Slackware']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='SLACKWARE']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='slackware']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3AcEDi0qZWWDgAAAAx1JREFUOMt9kktoXHUchb/ffc1M7rySSdJMOknFPMRitLgoNKKI8ZHGKkgrjU8SitidimSh2UkXoQmoO1dGQSxJjdvOtqSaqlR0USEGSjVJGxuSmWR6M3fu4/93YX0g4rc9HA6cc4Q7DI+fpzz7PA8++2mxvZAeBZ4xhHtFcJRmXWsWvb36/OLcyxf5B/KHeYHy7DmGx1+YSDjmWTdlobTGMAStQGkNoLXS4tXDq7u7tUcWz49tA8jR8QUuzB5n5NTCV13F9JEo1JJwTLKuzU61QiOMcd0UDb+BncwQK3Rl15eNja3ui/Njq8aF2eMcO/XlBz0H8oO2ZUkum6A13WB99TtyzXlaCi24SaFa+ZFCzsG2DNnfkdbFjsI1APPhk+d6ujqznycdCxFozadYWvyMpx47wa+bPkGksKwUNnsk3TaCGASRXDZh5LpHXPPg4Rcni+3uYBxrtBbQghlscOVKmYHeEm0ZIZ9xyLffw41ND6VAa43SmjiMByzHYtjzwr9arfshxf5jOKlvKZfn8es77N2uks24PPfSFD/9Uvt7AtPKWmEU9d645eHYJo5tcKi/FX/zG+zmQxQH+rANk862DOW5N/hhaY64cJSa5xNFCgDDILZACMKYWAmh73HmzFsMlBQJ06LeiMinE1S3KzRCm5rXIIoUIoKIYCVM36urZFbEoiBLNMIhAE6/NsSB7h6SKZdL8xsUOnpx9j1KbTdARACIowArYe1ergfNT2i0mIbJys0GI6PT3N1/hJvrPxOFdRJNBQIy/FapI4Bpgohgcjuw+jq8jy8tV55MNBWI4ohS802CpizKv8q+FgALZAfYgSyAZtNro1oLaU1VvxCA029Oraxs7u/tKnXiNjn8HyKwur6lI++6vPK4V7IA7u+1Dyu1tr183ddNbkHuXP8/zEIYeFqiLRl6YO/p0bHJdflT/PD9qZa1W+ry99fcvlAlcZwUpuUAglIRYVgnDEIOlna4q0M/NPnuO1/PzMwg/045O/XeibUt5/Xangx6viSVFpK2jtMpvdyWCz+5ryf10clX3/amp6eZmJjgd441URWWJY8BAAAAAElFTkSuQmCC); } a.useremail[href*='Trisquel']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='TRISQUEL']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='trisquel']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABjFBMVEX///8AAAAAAAAAAAAAADMAAGYAAAAAHFUAGWYAF10AImYAIGAAHloAHGMAKGsAGmYAJmYAJGEAKnUAJ1gAMXYAJnEAJGQAI2EAK28AK3cAGTEAMHgALXEALXgALG0AFUAAI2oAK3EAMngANoYALXMANIAAM4IANIIAL3gANIcANokANoQANYQAOY0ANIYANooAN4kAN40AOY0APZMANIUAOY0AO5AAPZUAPJAAP5MAPpQAQJUAOYsAPpYANoUAPpoAPpUAM4AAQJkAPZIAPJEAQpgAN4cAPpQAPZUAPJEAO4oAOosAOo8AQJoAOYsAO44AQpsAO48AQp0AP5UAQpoARJwAQ58ARaAAQZgAQ54AQ50AQpgARaIARqMARaMARaIAR6QARaIARaEASakARKEAR6MASqsARKEASKcAR6MARqYAR6UATbEATa8ARqUARKAAR6oARqMASKgATK8AR6QATbIATbAASq0AR6cASKgASqwAR6UASKcATa8ASqoASqwAS6wASKoAS60ATbHn4CTpAAAAhHRSTlMAAQIFBQUGCQoLDxAREhMUFBUYGhobHB0eHh8gIiIjJCQkJCYoLC0xMTE0NDo6Oz1BQUNHSUxOVFVVVldaWl5iY2RkZWZoamtsb3FycnR1ent9f4KDhIiJioyNkJGYm5+foqOkpqamqKmqrKytsLKzs7e4uLy8v8TFxcXGx8rO0NXY2eZc4XYcAAAA00lEQVR4XkWN1VoCUQAG/3NWtwh7CTsQJOyk7BaDxuxA6bbrxf32gt25m7kZqDRYxziooDV7+1AalMUavQh2AsEZoWvzigLun+T17/c8QiJZ7qu2QKiNmyZthdcR1/as353jIeU1GxMHo5XHdqPFeX8IaDMdHPYN6dRN7LR4qQewdTa35HWkyh+fbxERAMjwlAWJv3CPSKDQ+H7XvHdkV4Pua3Gtm4sPKIF/WV8dop4VKBw/NU33B3x1JbTt+XwhkJQoqRfWvHOy28uqH8JIdomR/R+s9yR3Cso77AAAAABJRU5ErkJggg==); } a.useremail[href*='Ubuntu']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='UBUNTU']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='ubuntu']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABKVBMVEX////ojFzplGf1zbnqnHLvs5P10b3yuZv1xKrytZXvtJXys5LysI32waT0n3HxiVHwg0jxhk31kFn0h0zxf0P0hUrveTv2iU3yfkD1hEfyejv5eDLybSX0aR7zZxvyayH6ZxnxZBj4YhH7XAb5WALlUQLeTwHgUAHeTgHfTwD65NzdTQDdTQHdTgD31MfcTgLcTADcTQD////xt5/31Mf54dfmfE/dUAbeVQ/jcUDcTgHeWBnnflHohFvpjGbqkGztnX342Mz53dLgXiP65d399PHdUgrtoYLyu6Xzvaf76eLfXB/rkm/fWhvupojwrpTeVhTgYSfgYynzwa30xbL1ybnngFT31snngljhZS3539XhZzDiajbibDn77OX88Ovrl3X99vTjbz1fisGCAAAAMHRSTlMABgYGBwcHJiorMDA1NXGHjY2Nl5mZmZyfn6O5u8XHzc3X193j9fj4+vr6/f39/f08OUojAAAAx0lEQVR4Xi3HZVbDYBhGwQctWqzFPXiQ+36pu+LubvtfBKcN82/UEhld2vWXxyL6F92gbTPabse8hU/uHMx1SZoyyJWPTwq1Rs7GpYE9+Cg+OJcs1MHvU9y4fnrN31yUm18vMCIPjtw3QMndw4rs8ieVzAAcBlewpe1KM3uaBuD3Dda1BhWXAsi6AFY1a2SqifxZ+rnxWYcJDRkUS3fO1R5vwe+XZgw4D4L3RAJiknoXCVX3WeiUpJ5pIxTvVmg45pl5k4Ot/AGV2iqZBWgJJAAAAABJRU5ErkJggg==); } a.useremail[href*='Windows']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='WINDOWS']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='windows']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAQCAYAAAAbBi9cAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAA+pJREFUOE+F0n84FHYcB3CWSsL9ojo/6ik64c6PnTjmSS0limmrpBm2G002y++xzXRz6zE0R4nbw+RnTj/WD4sbanLkkAe55ccYlyNme4SrO9u9d13PI3/saZ+/vs/3831ez+f9eb5aWsuqy2mjRYeNUa7YmtjfTico7jNJ8z0eG24NB9vvnDrvufzpq89Npnr8VjMddNmuRh9rDfp36mFg91oM7qPIc5JdbDJq3An/JfCu7Hl53W2lpS220pP2OuniN299jAYbYizSENIoAgbCTdrTKtxOJVdvGo8psUwKy7Vxe4ez1YEVudGP8YEZzyveInFJ6mZRHHqYazDspw/pJwTIuERM5JIwmUdGdyo9K7/BszGzzg6fXzZHGJ8KvzQqXKOpoIeZLjofWR++BPWyCEnPY4xFGEKWQcLjMjKmr1MwfcMYwmz/Y4KOgNki0V5k1dkjUWCK93Kp2PMFFawos8cm1gZ2GqjLXktL4mbQPHLQ4B9ZDFE5+S356fQlyuJMqzH++HnTo6ui2OO1ko9Ul+4fxfd3d4F7k4YTReqpuFS88bGZUE2QNNDobuIq8Q5CduHb7lFJaTnvnym9ergjMWD/FG8zf+aKS3G9JO5C01Asah6wUXrvALKEDoitMMHhDKrKJdg8RU2s0EB2EWWur8dd7PDPFv6dUC0Gv3kAN36VPRGP/5k5NS6lljWxG0TDiSr1VKhoPwhevRMSqkwRxDObc/DavGtpP6zoi8XOyZfhnyNEvKANBU0P8VPfI/wyNCGXSn7wlEmyA9KrgmOKGth3eDVvPfyywq2dnUEv2R9qG2rLsH7xJXziKnWcI8tlTvEC7Mu8hROlImTU9aKqcwQ1vWOihWFu+sJknmph5CvxQh87c7bNh/NXo03hrMCosyvLmMNgMF7TQL6J1dsZIUVwjKqEO+cajp5vxPN439U/gKBt8PTcYHzL/BgHCyOf4unAISj6mFC2bYC82kB5Ls460NHRUVsDeYSXpGw7UgC7sAtwShDgzdM38W7BbURXtqpqhfmB8sEQuXwoCM/6faGQuGCxyxyKWhIm+PrSD495WL3cT0hhi8Whc3NbAs9KaOyCTvrJ8qkdX19XBeTUDU00+55USFzVU2yHstcaix0mUAjJkJeuRU868Ucmk0lcguiBnMAVxjbbdHV1yeq8+u4Hgo22huSG+iQXp83ftaxW3lsPZcs6KG5T8OwaAfJiPcxlrVRVRhvF02i0F/t5VbHZ7JWDfErKTLnhE3mFPuRFepg/uxqz6TqLv6euGj3ut87t/4ylvre3t3ZehOWWO1zjSFEqMVP4GfGb/DBykJcjmaZOoLsc+hcVY/LaAgcTQAAAAABJRU5ErkJggg==); } a.useremail[href*='OpenBSD']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='OPENBSD']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='openbsd']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAFo9M/3AAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3AoYAykIPu64pQAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmUHAAADTklEQVQ4y32RXUxTdxjGn3N6eujoKT3SUkuk3VoBGfVjgFXAsZ7WkipyYXQbuu3CzUXZmGRbssnFEseFkWzgcGzGXky9MWL8TsC4IeFgtK4oAqOnG5vMVl1pCMVWQD7b/y5M6jLdflfvxfPked/nBQA0NDSChqnGVrLuGkES742NhJAdhAKAuk9yyUs5Gry7RQMZAARCWgivpQiPe71P5DUfH0xaqTL7m/iiLkJmphawa+e4SM2PvUyC4yUIBu8CnAQKAK53rCA5OUtQtStVpJ4Gw/FOBddZVKhCfq4MP4n6+at+DUsJm/e0G9JZzYEvI2tHwlEYjDxomkZ+3nG8WroRtHihZVOhVlorDQzh0okhcByDP4ZGcf+X9XAsvY5/RsBa7Kq5H/CqLctKyl/g08S2i6fq8W/MS3P34T9wNDVYSeDX1eTD9xhiLXbtB/Akwmmv6Kr+ICFkLpGhtNSM3qsSstS3oX8lSsmsxS6ZVn3j6PvVVqhUcvC8AtPxVPxwygVKvngN89WOjgVprggGA4eenjB4nsXsTASpC63I0wVTZYPR11FoKRB8Ax54PCFk6BhMTk5CPR3GSbHouGzknr/bYFq9EAvfc9Tu1sLjHcXNKxLuTOTgzOlOe7IHBc/beAXWpWmXlz8a84nhcLQ+ecVzsAEQrMWuMX+f9HZF2YPZ28FVSNfoPWqOzMUmqYMAJm7+/OOzXQFwHGpyEV+vi+yvtxBC9pDmpgJC4tvI3mo9GTitIxvW24nT7ug67HY/3eDs2bbyrVsrY2day70rV6kRfDAHk5lDLJqAmmeRiD9GJDKHvwb74R8G0mkTPjrQTTG122xkTTbwaV2b1H4u16JQKXGr7yG2b8/H1MQ09IsTSEmRwzf4CCwzD+dmE1re8CI7wwi5XNlFf9vaTXX4dWJg4LLl7h05fpNGwNAMWpp9CIVYNO/tRCzGwpDFQaVMQTS2CKY0BWr3GVGWNSXKACDDaA4Mh976pq9f5Sy09GgKlmeAMIBKzUKpU+BFoxJecRhUfAbMxDi4eADfHVmE79v7q575gvvYeVvjZ58LD5mwsKUyX0hnf0feslnQCWD4zxnc6reKisxsfH2oscqcmTmK/+Ow252cna7K52r+Bky6PqmoT5HBAAAAAElFTkSuQmCC); } a.useremail[href*='Gnu']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='GNU']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='gnu']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAFo9M/3AAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3AoYAywUV5gQrwAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmUHAAADcElEQVQ4y43Tb0jjBRzH8c9v+7nNMebcUW21Cc78g/wcuhByIScoMRwoTBmFlZCmIJ14axqkgoYIkXIqKIVBEuJNUBEUPRlpqDC3Q2Ex0nTezun2YOaPLXNIv7Vvj7zgiOj1+PPk/eADjuNEuHN6ekqMw+H4IzMz8xChUCjV1NT0JbO7uxtfXFy8NZvNr21tbd0AAEQikY6I0m1tbQbx2NjYZiqV+vn29jY+PDw8xhYWFj45PDzcb25uhlQqfSTief6X0dFRpqKigvF4PPPipaWlY7lcXhCLxXJnZmY+ZTY2NnzX19ePGxsbHw0MDLivrq5mc3Jy2pPJZLVWq/2cdbvdDSzLholoNJ1OMy6Xq0Ymk5HNZktOTU29qMgA8HYqlaKDgwNKp9M0PT09BgAM/iGuqqoimUx2yPP8U5/P9wEAMB0dHRUKheJHiUTyeGhoqAUAnE7nR0qlsjcQCLwjlsvlz+bm5mQWi0VSWlr6bXV1tU6hUMj6+/vfN5lMN0xxcfG1zWZ7SETTSqWSGhoamPHxcajV6s+8Xu9Xou7u7t9VKtW00+mkSCTC6PV6aDQa8Dw/Wl9fP8UAQCgUosvLSyovL2eWl5dRUFBw7Ha7v9vc3By5K3g1EAg8FQSBiIguLi4IgBwA2LtEjuPuJxKJ62AwKFpdXf0eQBIvYVmW/cLlchEAWK1WAADT09NzX6PR/OTz+eKVlZUzKpVqTyqVvsnzfLCkpGSrtrb2t97eXnFeXl5ZKpWyZ2RkPPP7/UUnJyefGI3GU+zt7aU4jotOTk7mAUBfX1+b1Wq9kcvlBIAcDgctLCyQxWKhoqIi6uzs/BoAVlZW3qqpqbllZmdnf1hfX//Q4/HEzWbzX+3t7fcMBgMFg0EYjUYmEolAEAREo1Hk5+fT+fk5Mzg4GD86OpJ0dXXJGQBoaWl5Ra/XP6yrq3tQVlam2N7ehslkAsuySCaTUKvVSCQS2NnZSXAcJxYEQTEyMvKeIAhLDADY7fZ7BoPhm6ysLFpbWzuan5//WKvVvsHzPEWjUSYSiSA3N5d0Oh0TjUaf+/1+S2Nj46/4FwYAr7e2tnbF4/E/iYjC4TCFw+F0LBaj/f19mpiYeID/IAagAyABYLXb7cLZ2Rml02nyer3POY6rwv8hEr34u0IkEk1mZ2cTgGMA7768/RtL5JKsGzrLIgAAAABJRU5ErkJggg==); } a.useremail[href*='Plan']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='PLAN']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='plan']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAPCAYAAAGn5h7fAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3AoYAzE15J1s7QAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmUHAAACAElEQVQoz3WSz4sSARTHvzMjygpqYg3+KIhkE83DKtKlf0C9SrTRuZNEx0VowU6CuSeJNlwwpEO2kJ6SQBiIUAzFjRDF4wrjKosnGx3HmdehFDfpe/2+z/s++D5gU7IsEwRByICIiAEAIiIAYAFAXsjYVr/fLxMRNVvN+prJ5/OA3+/XERFNf02JyeVyDx0OxyvLNQsnimLKfcf9KRQKXQAAnE6nlf5qMpnQycnbP/kAoKoqsSwLAJhOp+AAwOv1otvtpqxWq73dbt/r9XqvEQ6HUalUEvF4XLd5IpvNZqlerzd5nlf6/f6tTCZjBACk0+nb+XxeW4UrikLJZPImAGA0Gq0NIqJyuSyyANDr9Q5Wu1utFvR6/SULAI1G4+vK8Pv90DTtGwsAJpPpaGUYDAZ0Op3PHAAEg8H3tVqtbrtu21sqyxuRSOQJk0ql9IvF4r7b7f7pcrlejkaj57IsH58Pzp8dvjhc/lsBk0gkbLFYrFqtVvd27+4qOk733ePxPDCbzVBVFfP5fCiK4rvhxfDN/qP9wSasGwwGMv1HiqJQsVg8ZlfTHMepkiR1t05gGJBGmM/nMBqNj9nN9kql0lNN064ARISzH2cQBAGz2ewLu2na7XYLwzBbvxYIBBCNRrFj3BmsAZ/PZ+J5/kOhUIAkSVeA8XiMZqt5efrx9OA3GfcgvyVno9cAAAAASUVORK5CYII=); } a.useremail[href*='Crunch']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='CRUNCH']:last-of-type::" + SS.conf["Emoji Position"] + ", a.useremail[href*='crunch']:last-of-type::" + SS.conf["Emoji Position"] + " { content:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAQCAYAAAAS7Y8mAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEwMPRyoQAAANxJREFUOE+tVEEKwzAM67bDYJfBch17S/7/lEAgP+jiUme2bLMWEsihUazaiuxlESvnvOLu8IeuBNiIduJ+zATKRd8dfTKxgylixvc4nU1rbcRjFkjMeGd/yKSY+IKZqrT/fOwkd4/4NYF4ewNXijNZelqHxKxXpCMGSv3xcYfGHbjRDlxBmCk1pUTHhF0jYraMesRa6+ZpBt1SoQeUxkctFUkR/niGI7zOVNqddYaUqpO/5XiYRmxmhTw4YjW6A1YbQ8o0CGtUSrHdA1ZjYlW2Y8dw7KHVTKnAjPgXdnI1iOi+J0IAAAAASUVORK5CYII=); } " : "") + (SS.location.board === "f" ? " #qr #autohide, #qr #autohide+.riceCheck { display:none; } #qr .riceFile { float:left!important; margin-right:1px!important; width:189px!important; } " : "") + (SS.location.sub === "sys" ? " body { margin:0!important; padding:0!important; } body>form[method='POST'] { background:rgba(" + SS.theme.mainColor.rgb + ",.9); margin:5px auto; max-width:625px!important; padding:5px; border-radius:5px; } body>form[action='']>table { display:table!important; } body>form[action='']>table fieldset { text-align:left!important; } body>form[action=''], body>form[action='']>table fieldset, body>form[action='']>table #recaptcha_response_field { border:1px solid " + SS.theme.brderColor.hex + "!important; } body>form[action='']>table, body>form[action='']>table td[width]+td { text-align:center; } body>form[action='']~.rules { display:block!important; margin:0 auto; } body>form[action='']>table td[width='240px'] { display:none!important; } " : "") + " #post-preview { margin:0!important; position:absolute!important; } #content #threads .thread { background:" + SS.theme.bgColor.hex + "!important; } " + SS.theme.customCSS;
      if (reload) {
        return $("#ch4SS").text(css);
      } else {
        return $(d.head).append($("<style type='text/css' id=ch4SS>").text(css));
      }
    },
    DOMLoaded: function(reload) {
      var MutationObserver, observer;
      if (SS.location.sub === "sys") {
        d.head.innerHTML = d.head.innerHTML;
      }
      if (reload !== true) {
        MutationObserver = window.MutationObserver || window.WebKitMutationObserver;
        SS.options.init();
        $(d).bind("QRDialogCreation", SS.QRDialogCreationHandler).bind("QRPostSuccessful", function() {
          return $(".riceFile>span", $("#qr")).text("");
        }).bind("WatcherThreadAdded", function() {
          return $("#watcher").addClass("show");
        }).delay((function() {
          return $(this).removeClass("show");
        }), 2000);
        observer = new MutationObserver(function(mutations) {
          var node, nodes, _i, _j, _len, _len1, _results;
          _results = [];
          for (_i = 0, _len = mutations.length; _i < _len; _i++) {
            nodes = mutations[_i];
            nodes = mutations[i].addedNodes;
            for (_j = 0, _len1 = nodes.length; _j < _len1; _j++) {
              node = nodes[_j];
              $("input[type=checkbox]", node).riceCheck();
            }
            observer.observe(d, {
              childList: true,
              subtree: true
            });
            _results.push($(d).bind('4chanXInitFinished', function() {
              var div;
              if (!SS.QRhandled && (div = $("#qr")).exists()) {
                SS.QRDialogCreationHandler({
                  target: div
                });
                div.bind("change", function() {
                  if ((div = $("#imageType+label")).exists()) {
                    return $(this).toggleClass("imgExpanded");
                  }
                });
                if ((div = $("#updater")).exists()) {
                  return $("input[type=checkbox]", div).riceCheck();
                }
              }
            }));
          }
          return _results;
        });
      }
      SS.pages.init();
      SS.menuEntries.init();
      SS.riceInputs.init();
      return SS.logoReflect.init();
    },
    QRDialogCreationHandler: function(e) {
      var qr;
      qr = e.target;
      return $("input[type=file]").riceFile().bind("click", function(e) {
        if (e.shiftKey) {
          return $(this).nextSibling("span").text("");
        }
        $(".move", qr).bind("click", function() {
          if (SS.conf["Post Form"] !== 4) {
            return $("form :focus", qr).blur();
          }
        });
        $("#dump~input", qr).each(function() {
          if (SS.conf["Expanding Form Inputs"]) {
            return $(this).after($("<span>" + ($(this).attr('placeholder'))));
          }
        });
        $("input,textarea,select", qr).bind("focus", function() {
          return $("#qr").addClass("focus");
        }).bind("blur", function() {
          return $("#qr").removeClass("focus");
        });
        if (SS.conf["Smart Tripcode Hider"]) {
          $("input[name=name]").each(function() {
            SS.tripHider.init($(this));
            SS.tripHider.handle(this);
            if (!SS.browser.webkit) {
              return $("input[type=checkbox]", qr).riceCheck();
            }
          });
        }
        return SS.QRhandled = true;
      });
    },
    Config: {
      hasGM: typeof GM_deleteValue !== "undefined" && GM_deleteValue !== null,
      init: function() {
        var key, parseVal;
        parseVal = function(key, val) {
          var value;
          if (/^(Selected|Hidden)+\s(Mascots|Themes?)+$/.test(key)) {
            if (key === "Selected Theme") {
              return parseInt(val);
            }
            if (key === "Selected Mascots" && val === 0) {
              return 0;
            }
            return (function() {
              var _i, _len, _results;
              _results = [];
              for (_i = 0, _len = val.length; _i < _len; _i++) {
                value = val[_i];
                _results.push(parseInt(value));
              }
              return _results;
            })();
          }
          return (Array.isArray(val) && typeof val[0] !== "object" ? val[0] : val);
        };
        SS.conf = [];
        for (key in defaultConfig) {
          SS.conf[key] = parseVal(key, this.get(key));
          SS.conf["Small Font Size"] = SS.conf["Font Size"] > 11 && !SS.conf["Bitmap Font"] ? 12 : SS.conf["Font Size"];
          SS.conf["Sidebar Position String"] = SS.conf["Sidebar Position"] !== 2 && SS.conf["Sidebar Position"] !== 5 ? "right" : "left";
          SS.conf["Sidebar Position oString"] = SS.conf["Sidebar Position String"] === "right" ? "left" : "right";
        }
      },
      get: function(name) {
        var val;
        val = this.hasGM ? GM_getValue(NAMESPACE + name) : localStorage.getItem(NAMESPACE + name);
        if (val != null) {
          return JSON.parse(val);
        }
        return defaultConfig[name];
      },
      set: function(name, val) {
        name = NAMESPACE + name;
        if (typeof val !== "number") {
          val = JSON.stringify(val);
        }
        return (this.hasGM ? GM_setValue(name, val) : localStorage.setItem(name, val));
      }
    },
    options: {
      saveAndClose: true,
      init: function() {
        var fn;
        fn = function() {
          $(d).unbind('4chanXInitFinished', fn);
          return d.dispatchEvent(new CustomEvent('AddMenuEntry', {
            detail: {
              el: $('<span>').append($("<a id=themeoptionsLink title='4chan SS Options'>Style Script").bind("click", SS.options.show)).elems[0],
              type: 'header',
              order: 999
            }
          }));
        };
        if ($("#header-bar").exists()) {
          return fn();
        } else {
          return $(d).bind('4chanXInitFinished', fn);
        }
      },
      show: function() {
        var bindNavLinks, cFonts, des, i, id, key, link, links, name, option, optionsHTML, opts, overlay, pVal, tOptions, text, val, value, _i, _j, _len, _len1, _ref, _results;
        if ($("#overlay").exists()) {
          SS.options.close();
        } else {
          overlay = $("<div id=overlay>").bind("click", SS.options.close);
          tOptions = $("<div id=themeoptions class=reply>").bind("click", function(e) {
            return e.stopPropagation();
          });
          optionsHTML = ["<ul id=toNav>", "<li><label class=selected for=tcbMain>Main</label></li>", "<li><label for=tcbThemes>Themes</label></li>", "<li><label for=tcbMascots>Mascots</label></li>", "<li><label for=tcbNavLinks>Nav Links</label></li>", "</ul><div id=toWrapper><input type=radio name=toTab id=tcbMain hidden checked><div id=tMain>", "<p><a class=trbtn name=loadSysFonts title='Reqiures flash'>" + (SS.fontList ? 'System Fonts Loaded!' : 'Load System Fonts') + "</a></p>"];
          bindNavLinks = function(el) {
            $(".handle", el).bind("dragstart", function(e) {
              $(this.parentNode).addClass("moving");
              e.dataTransfer.effectAllowed = "move";
              return e.dataTransfer.setData("text/plain", this.parentNode.id);
            }).bind("dragend", function(e) {
              return $(this.parentNode).delay((function() {
                return $(this).removeClass("moving");
              }), 1);
            }).bind("dragenter", function(e) {
              return $(this.parentNode).addClass("over");
            }).bind("dragleave", function(e) {
              return $(this.parentNode).removeClass("over");
            });
            $(el).bind("drop", function(e) {
              var node;
              node = $("#tNavLinks>#" + (e.dataTransfer.getData('text/plain')));
              if (e.dataTransfer.getData("text/plain") !== this.id) {
                if ($(this).nextSibling(node).exists()) {
                  $(this).before(node);
                } else {
                  $(this).after(node);
                }
              }
              $(this).removeClass("over");
              return e.preventDefault();
            }).bind("dragover", function(e) {
              e.preventDefault();
              return e.dataTransfer.dropEffect = "move";
            });
            return $("a[name=delLink]", el).bind("click", function() {
              return $(this).parent().remove();
            });
          };
        }
        _results = [];
        for (key in defaultConfig) {
          if ((key === "Style Scrollbars" && !SS.browser.webkit) || key === "Nav Link Delimiter" || /^(Selected|Hidden)+\s(Mascots|Themes?)+$/.test(key)) {
            continue;
          }
          val = SS.conf[key];
          des = defaultConfig[key][1];
          if (defaultConfig[key][4] === true) {
            pVal = SS.conf[defaultConfig[key][2]];
            id = defaultConfig[key][2].replace(/\s/g, "_") + defaultConfig[key][3];
            _results.push(Array.prototype.push.apply(optionsHTML, ["<label class='mOption subOption " + id + "' title=\"" + des + "\"", (pVal === defaultConfig[key][3] ? "" : "hidden") + "><span>" + key, "</span><input" + (val ? " checked" : "") + " name='" + key + "' type=checkbox></label>"]));
          } else if (Array.isArray(defaultConfig[key][2])) {
            opts = key === "Font" ? SS.fontList || defaultConfig[key][2] : defaultConfig[key][2];
            cFonts = [];
            Array.prototype.push.apply(optionsHTML, ["<span class=mOption title=\"" + des + "\"><span>" + key + "</span>", "<select name='" + key + "'" + (defaultConfig[key][3] === true ? ' hasSub' : '') + ">"]);
            for (_i = 0, _len = opts.length; _i < _len; _i++) {
              option = opts[_i];
              if (typeof option === "object") {
                name = option.name, value = option.value;
              } else {
                name = value = option;
              }
              if (key === "Font") {
                cFonts.push(value);
              }
              Array.prototype.push.apply(optionsHTML, ["<option" + (key === "Font" ? " style=\"font-family:" + SS.formatFont(value) + "!important\"" : ""), " value='" + value + "'" + (value === val ? " selected" : "") + ">" + name + "</option>"]);
            }
            if (key === "Font" && cFonts.indexOf(SS.conf["Font"] === -1)) {
              optionsHTML.push("<option style=\"font-family:" + SS.formatFont(SS.conf["Font"]) + "!important\" value='" + SS.conf["Font"] + "' selected>" + SS.conf["Font"] + "</option>");
            }
            _results.push(optionsHTML.push("</select></span>"));
          } else if (key === "Font Size") {
            _results.push(Array.prototype.push.apply(optionsHTML, ["<span class=mOption title=\"" + des + "\"><span>" + key + "</span>", "<input type=text name='Font Size' value=" + SS.conf["Font Size"] + "px></span>"]));
          } else if (key === "Themes") {
            _results.push(optionsHTML.push("</div><input type=radio name=toTab id=tcbThemes hidden><div id=tThemes>"));
          } else if (key === "Mascots") {
            _results.push(optionsHTML.push("</div><input type=radio name=toTab id=tcbMascots hidden><div id=tMascot>"));
          } else if (key === "Nav Links") {
            links = SS.conf["Nav Links"];
            Array.prototype.push.apply(optionsHTML, ["</div><input type=radio name=toTab id=tcbNavLinks hidden><div id=tNavLinks>", "<p><a class=trbtn name=addLink>add</a>", "<label>Delimiter: ", "<input type=text name='Nav Link Delimiter' value='" + SS.conf["Nav Link Delimiter"], "' style='width:40px' title='" + defaultConfig["Nav Link Delimiter"][1] + "'></p>"]);
            if (links != null) {
              for (i = _j = 0, _len1 = links.length; _j < _len1; i = ++_j) {
                _ref = links[i], link = _ref.link, text = _ref.text;
                Array.prototype.push.apply(optionsHTML, ["<div id=navlink" + i + " class=navlink><label>Text: <input type=text value='" + text + "'></label>", "<label>Link: <input type=text value='" + link + "'></label>", "<a class=trbtn name=delLink>remove</a><div class=handle draggable=true></div></div>"]);
              }
            } else {
              Array.prototype.push.apply(optionsHTML, ["<label class=mOption title=\"" + des + "\"><span>" + key + "</span><input" + (val ? " checked" : ""), " name='" + key + "' " + (defaultConfig[key][3] === true ? " hasSub" : "") + " type=checkbox></label>"]);
            }
            Array.prototype.push.apply(optionsHTML, ["</div></div><div><span id=SSVersion>4chan SS v" + VERSION + "</span>", "<a class=trbtn name=save title='Hold any modifier to prevent window from closing'>save</a><a class=trbtn name=cancel>cancel</a></div>"]);
            tOptions.html(optionsHTML.join(""));
            overlay.append(tOptions);
            $("#toNav li label", tOptions).bind("click", function(e) {
              if ($(this).hasClass("selected")) {
                return;
              }
              $("#toNav li label.selected").removeClass("selected");
              return $(this).addClass("selected");
            });
            $("[hasSub]", tOptions).bind("change", function() {
              var sub;
              id = this.name.replace(/\s/g, "_") + $(this).val();
              sub = $("." + id);
              if (sub.exists()) {
                return sub.each(function() {
                  return $(this).show();
                });
              } else {
                return $("[class*='" + this.name.replace(/\s/g, "_") + "']").each(function() {
                  return $(this).hide();
                });
              }
            });
            $("a[name=save]", tOptions).bind("click", SS.options.save);
            $("a[name=cancel]", tOptions).bind("click", SS.options.close);
            $(d).bind("keydown", SS.options.keydown).bind("keyup", SS.options.keyup);
            $("input[name='Font Size']", tOptions).bind("keydown", function(e) {
              var bitmap;
              val = parseInt($(this).val());
              bitmap = $(this).parent().nextSibling().children("input[name='Bitmap Font']").val();
              if (e.keyCode === 38 && val < MAX_FONT_SIZE || bitmap) {
                return $(this).val("" + (++val) + "px");
              } else if (e.keyCode === 40 && val > MIN_FONT_SIZE || bitmap) {
                return $(this).val("" + (--val) + "px");
              }
            });
            if (!SS.fontList) {
              $("a[name=loadSysFonts]", tOptions).bind("click", SS.options.loadSystemFonts);
            }
            SS.options.createThemesTab(tOptions);
            SS.options.createMascotsTab(tOptions);
            $("a[name=addLink]", tOptions).bind("click", function() {
              var el;
              el = $("<div id=navlink" + $("#tNavLinks>.navlink").length() + " class=navlink>").html("<label>Text: <input type=text></label>" + "<label>Link: <input type=text value='boards.4chan.org/'></label>" + "<a class=trbtn name=delLink>remove</a><div class=handle draggable=true></div>");
              bindNavLinks(el);
              return $("#tNavLinks").append(el);
            });
            $("#tNavLinks .navlink", tOptions).each(function() {
              return bindNavLinks(this);
            });
            _results.push($(d.body).append(overlay));
          } else {
            _results.push(void 0);
          }
        }
        return _results;
      },
      createThemesTab: function(tOptions) {
        var i, max, p, reader, themes;
        themes = $("#tThemes", tOptions).html("");
        p = $("<p style='bottom:8px!important'>");
        reader = function() {
          var div, err, file, index, theme;
          file = this.files[0];
          reader = new FileReader();
          reader.onload = function(e) {
            var errmessage;
            return errmessage = function() {
              return alert("Invalid theme file!");
            };
          };
          try {
            theme = JSON.parse(e.target.result);
          } catch (_error) {
            err = _error;
            return errmessage();
          }
          if (theme.bgColor == null) {
            return errmessage();
          }
          index = SS.conf["Themes"].push(theme);
          theme = new SS.Theme(--index);
          div = theme.preview();
          $("#overlay #tThemes").append(div);
          div.fire("click").scrollIntoView(true);
          return reader.readAsText(file);
        };
        p.append($("<a class=trbtn name=addTheme>add", tOptions).bind("click", SS.options.showTheme));
        p.append($("<div id=selectImage>").append($("<input type=file riced=true>").bind("change", reader)).append($("<span class=trbtn>Import")));
        p.append($("<a class=trbtn name=restoreThemes title='Restore hidden default themes'>restore", tOptions).bind("click", function() {
          SS.conf["Hidden Themes"] = [];
          return $("#tThemes>div[hidden]").show();
        }));
        if (SS.conf["Hidden Themes"].length === 0) {
          $("a[name=restoreThemes]", p).hide();
        }
        themes.append(p);
        max = SS.conf["Themes"].length;
        i = 0;
        while (i < max) {
          themes.append((new SS.Theme(i++)).preview());
        }
      },
      createMascotsTab: function(tOptions) {
        var i, mascots, max, p, _results;
        mascots = $("#tMascot", tOptions).html("");
        p = $("<p>");
        p.append($("<a class=trbtn name=addMascot>add", tOptions).bind("click", SS.options.showMascot));
        p.append($("<a class=trbtn name=restoreMascots title='Restore hidden default mascots'>restore", tOptions).bind("click", function() {
          SS.conf["Hidden Mascots"] = [];
          return $("#tMascot>div[hidden]").show();
        }));
        if (SS.conf["Hidden Mascots"].length === 0) {
          $("a[name=restoreMascots]", p).hide();
        }
        p.append($("<a class=trbtn name=selectAll>select all", tOptions).bind("click", function() {
          return $("#tMascot>div:not([hidden])").each(function() {
            return $(this).addClass("selected");
          });
        }));
        p.append($("<a class=trbtn name=selectNone>select none", tOptions).bind("click", function() {
          return $("#tMascot>div").each(function() {
            return $(this).removeClass("selected");
          });
        }));
        mascots.append(p);
        max = SS.conf["Mascots"].length;
        i = i;
        _results = [];
        while (i < max) {
          _results.push(mascots.append((new SS.Mascot(i++)).preview()));
        }
        return _results;
      },
      close: function() {
        $(d).unbind("keydown", SS.options.keydown).unbind("keyup", SS.options.keydown);
        return $("#overlay").remove();
      },
      keydown: function(e) {
        if (e.keyCode >= 16 && e.keyCode <= 18) {
          SS.options.saveAndClose = false;
          return $("a[name=save]").text("apply");
        }
      },
      keyup: function(e) {
        if (!SS.options.saveAndClose) {
          SS.options.saveAndClose = true;
          return $("a[name=save]").text("save");
        }
      },
      loadSystemFonts: function(e) {
        var getFontMessage, loadFontBTN;
        loadFontBTN = $(e.target);
        getFontMessage = function(e) {
          var fontSelect, name, value, _i, _len, _ref, _ref1, _results;
          SS.fontList = e.data;
          fontSelect = $("<select name=Font>");
          _ref = SS.fontList;
          _results = [];
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            _ref1 = _ref[_i], name = _ref1.name, value = _ref1.value;
            fontSelect.append($("<option" + " style=\"font-family:" + SS.formatFont(value) + "!important\"" + " value='" + value + "'" + (value === SS.conf["Font"] ? " selected=true" : "") + ">" + name));
            $("select[name=Font]").before(fontSelect).remove();
            $("#fontListSWF").remove();
            window.removeEventListener("message", getFontMessage);
            _results.push(loadFontBTN.text("System Fonts Loaded!").unbind("click", SS.options.loadSystemFonts));
          }
          return _results;
        };
        $(d.head).append($("<script type=\"text/javascript\">\n  function populateFontList(fontArr) {\n    var fontList = []\n    for (var key in fontArr)\n      fontList.push(fontArr[key])\n      window.postMessage(fontList, '*')\n    }\n</script>"));
        window.addEventListener("message", getFontMessage, false);
        $(d.body).append($("<div id=fontListSWF hidden><object type='application/x-shockwave-flash'" + " data='" + fontListSWF + "'><param name=allowScriptAccess value=always></object>"));
        return loadFontBTN.text("Loading...");
      },
      save: function() {
        var div, links, mascots, selMascots, themes;
        div = $("#themeoptions");
        themes = [];
        mascots = [];
        links = [];
        selMascots = [];
        $("#themeoptions input[name]:not([name=toTab]), #themeoptions select").each(function() {
          var name, val;
          name = $(this).attr("name");
          val = $(this).val();
          if (name === "Font Size") {
            val = parseInt(val);
            if (!$("input[name='Bitmap Font']", div).val()) {
              val = val > MAX_FONT_SIZE ? MAX_FONT_SIZE : val < MIN_FONT_SIZE ? MIN_FONT_SIZE : val;
            } else if (name === "Nav Link Delimiter") {
              val = val.replace(/\s/g, "&nbsp;");
            }
            return SS.Config.set($(this).attr("name"), val);
          }
        });
        $("#themeoptions #tThemes>div").each(function(index) {
          var oldIndex, selTheme;
          oldIndex = parseInt(this.id.substr(5));
          if (!SS.conf["Themes"][oldIndex]["default"]) {
            themes.push(SS.conf["Themes"][oldIndex]);
          }
          return selTheme = (selTheme = $("#themeoptions #tThemes>div.selected").exists()) ? parseInt(selTheme.attr("id").substr(5)) : 0;
        });
        SS.Config.set("Themes", themes);
        SS.Config.set((SS.conf["SFW/NSFW Themes"] && SS.location.nsfw ? "NSFW Theme" : "Selected Theme"), selTheme);
        SS.Config.set("Hidden Themes", SS.conf["Hidden Themes"]);
        return $("#themeoptions #tMascot>div").each(function(index) {
          var oldIndex;
          oldIndex = parseInt(this.id.substr(6));
          if ($(this).hasClass("selected")) {
            selMascots.push(index);
          }
          mascots.push(SS.conf["Mascots"][oldIndex](unlessSS.conf["Mascots"][oldIndex]["default"]));
          SS.Config.set("Mascots", mascots);
          SS.Config.set("Selected Mascots", selMascots);
          SS.Config.set("Hidden Mascots", SS.conf["Hidden Mascots"]);
          $("#themeoptions #tNavLinks>.navlink").each(function() {
            var nLink;
            nLink = {};
            $(this).children("input").each(function(index) {
              if (index === 0) {
                return nLink.text = $(this).val();
              } else if (index === 1) {
                return nLink.link = $(this).val();
              }
            });
            if (nLink.text !== "" && nLink.link !== "") {
              return links.push(nLink);
            }
          });
          SS.Config.set("Nav Links", links);
          if (SS.options.saveAndClose) {
            SS.options.close();
          }
          return SS.init(true);
        });
      },
      showTheme: function(tIndex) {
        var bEdit, check, dName, div, innerHTML, name, overlay, tEdit, themeA, themePX, themePY, themeR, _i, _len, _ref, _ref1;
        if (typeof tIndex === "number") {
          bEdit = true;
          tEdit = SS.conf["Themes"][tIndex];
          if (tEdit.bgImg && tEdit.bgRPA) {
            _ref = tEdit.bgRPA.split(" "), themeR = _ref[0], themePY = _ref[1], themePX = _ref[2], themeA = _ref[3];
          }
        }
        div = $("<div id=addTheme>");
        check = function(test) {
          return (test ? " selected" : "");
        };
        innerHTML = ["<label>", "<span>Theme Name:</span><input type=text name=name value='" + (bEdit ? tEdit.name : "") + "'>", "</label><label>", "<span>BG Image:</span><input type=text name=bgImg value='", bEdit ? (SS.validImageURL(tEdit.bgImg) ? tEdit.bgImg + "'" : (SS.validBase64(tEdit.bgImg) ? "[Base 64 Encoded Image]' disabled=true" : "'")) : "'", "></label><label>", "<span>BG Repeat:</span><select name=bgR>", "<option" + (check(bEdit && themeR === "no-repeat")) + ">no-repeat</option>", "<option" + (check(bEdit && themeR === "repeat")) + ">repeat</option>", "<option" + (check(bEdit && themeR === "repeat-x")) + ">repeat-x</option>", "<option" + (check(bEdit && themeR === "repeat-y")) + ">repeat-y</option>", "</select></label><label>", "<span>BG Attachment:</span><select name=bgA>", "<option" + (check(bEdit && themeA === "fixed")) + ">fixed</option>", "<option" + (check(bEdit && themeA === "scroll")) + ">scroll</option>", "</select></label><label>", "<span>BG Position-X:</span><select name=bgPX>", "<option" + (check(bEdit && themePX === "left")) + ">left</option>", "<option" + (check(bEdit && themePX === "center")) + ">center</option>", "<option" + (check(bEdit && themePX === "right")) + ">right</option>", "</select></label><label>", "<span>BG Position-Y:</span><select name=bgPY>", "<option" + (check(bEdit && themePY === "top")) + ">top</option>", "<option" + (check(bEdit && themePY === "center")) + ">center</option>", "<option" + (check(bEdit && themePY === "bottom")) + ">bottom</option>", "</select></label>"];
        for (_i = 0, _len = themeInputs.length; _i < _len; _i++) {
          _ref1 = themeInputs[_i], name = _ref1.name, dName = _ref1.dName;
          Array.prototype.push.apply(innerHTML, ["<label><span>" + dName + ":</span>", "<input type=text class=jsColor name=" + name + " value=" + (bEdit ? tEdit[name] : "") + "></label>"]);
        }
        Array.prototype.push.apply(innerHTML, ["<label id=customCSS><span>Custom CSS:</span><textarea name=customCSS>" + (bEdit ? tEdit.customCSS || "" : "") + "</textarea>", "</label><div><div id=selectImage><input type=file riced=true accept='image/GIF,image/JPEG,image/PNG'>", "<span class=trbtn>Select Image</span></div>", bEdit && SS.validBase64(tEdit.bgImg) ? "<input type=hidden name=customIMGB64 value='" + tEdit.bgImg + "'>" : "", "<a class=trbtn name=clearIMG>Clear Image</a>", "<a class=trbtn name=export>Export</a>", "<a class=trbtn name=" + (bEdit ? "edit" : "add") + ">" + (bEdit ? "edit" : "add") + "</a><a class=trbtn name=cancel>cancel</a></div>"]);
        div.html(innerHTML.join(""));
        $(".jsColor", div).jsColor();
        overlay = $("<div id=overlay2>").append(div);
        $("#selectImage>input[type=file]", div).bind("change", SS.options.SelectImage);
        $("a[name=clearIMG]", div).bind("click", SS.options.ClearImage);
        $("a[name=export]", div).bind("click", function() {
          var theme;
          theme = SS.options.addTheme(tIndex, true);
          return window.open("data:application/json," + encodeURIComponent(JSON.stringify(theme)), "Export " + theme.name);
        });
        if (bEdit) {
          $("a[name=edit]", div).bind("click", function() {
            return SS.options.addTheme(tIndex);
          });
        } else {
          $("a[name=add]", div).bind("click", SS.options.addTheme);
        }
        $("a[name=cancel]", div).bind("click", function() {
          return $("#overlay2").remove();
        });
        if (bEdit) {
          $("input,textarea,select", div).bind("change", tEdit.mHandler = function() {
            tEdit.modified = true;
            return $("input,textarea,select", $("#addTheme")).unbind("change", tEdit.mHandler);
          });
        }
        return $(d.body).append(overlay);
      },
      addTheme: function(tIndex, exp) {
        var bEdit, error, makeRPA, overlay, tEdit, tTheme;
        overlay = $("#overlay2");
        tTheme = {};
        makeRPA = function() {
          var RPA;
          return RPA = [$("select[name=bgR]", overlay).val(), $("select[name=bgPY]", overlay).val(), $("select[name=bgPX]", overlay).val(), $("select[name=bgA]", overlay).val()].join(' ');
        };
        bEdit = typeof tIndex === "number";
        tEdit = bEdit ? SS.conf["Themes"][tIndex] : null;
        error = false;
        div;
        if (!exp && bEdit && !tEdit.modified) {
          return overlay.remove();
        }
        return $("input[type=text],textarea", overlay).each(function() {
          var b64, div, val;
          if (this.name === "bgImg") {
            b64 = $("input[name=customIMGB64]", overlay);
            val = b64.exists() ? decodeURIComponent(b64.val()) : this.value;
            if (!(val === "" && SS.validImageURL(val) && SS.validBase64(val))) {
              error = true;
              return alert("Invalid image URL/base64.");
            }
            val = SS.cleanBase64(val);
          } else if (this.name === "name") {
            val = this.value;
            if (bEdit && tEdit["default"] && tEdit.name === val) {
              val += " [Modded]";
            }
          } else {
            val = this.value;
          }
          if (val !== "") {
            tTheme[this.name] = val;
          }
          if (error) {
            return;
          }
          if (tTheme.bgImg) {
            tTheme.bgRPA = makeRPA();
            if (exp) {
              return tTheme;
            }
            if (bEdit && !tEdit["default"]) {
              SS.conf["Themes"][tIndex] = tTheme;
              tTheme = new SS.Theme(tIndex);
              div = $("#theme" + tIndex, $("#overlay"));
              div.replace(tTheme.preview());
            } else {
              tTheme.author = "You";
              tIndex = SS.conf["Themes"].push(tTheme);
              tTheme = new SS.Theme(--tIndex);
              div = tTheme.preview();
            }
            $("#overlay #tThemes").append(div);
            $("#theme" + tIndex, $("#overlay")).fire("click").scrollIntoView(true);
            return overlay.remove();
          }
        });
      },
      deleteTheme: function(tIndex) {
        if (SS.conf["Themes"][tIndex]["default"] && SS.conf["Hidden Themes"].push(tIndex) === 1) {
          $("#tThemes a[name=restoreThemes]").show();
        }
        return (SS.conf["Themes"][tIndex]["default"] ? $("#theme" + tIndex).removeClass("selected").hide() : $("#theme" + tIndex).remove());
      },
      showMascot: function(mIndex) {
        var bEdit, checked, div, mEdit, overlay, selected;
        if (typeof mIndex === "number") {
          bEdit = true;
          mEdit = SS.conf["Mascots"][mIndex];
          selected = function(test) {
            return (test ? " selected" : "");
          };
          checked = function(test) {
            return (test ? " checked" : "");
          };
          div = $("<div id=addMascot>").html(["<label><span>Image:</span><input type=text name=customIMG value='", bEdit ? (SS.validImageURL(mEdit.img) ? mEdit.img + "'" : "[Base 64 Encoded Image]' disabled=true") : "'", "></label>", "<label title='Auto goes according to the post forms position' for=null><span>Alignment/Offset:</span>", "<select name=mPosition>", "<option" + ((selected(bEdit && !mEdit.position)) || !bEdit) + ">Auto</option>", "<option" + (selected(bEdit && mEdit.position === "top")) + ">Top</option>", "<option" + (selected(bEdit && mEdit.position === "center")) + ">Center</option>", "<option" + (selected(bEdit && mEdit.position === "bottom")) + ">Bottom</option>", "</select>", "<input type=text name=mOffset value='" + (bEdit && mEdit.position ? mEdit.offset + "px" : "") + "'></label>", "<label title='Prevent streching with smaller images (Width < 313px)'><span>Prevent stretching:</span>", "<input type=checkbox name=mSmall" + (checked(bEdit && mEdit.small)) + "></label>", "<label title='Horizontally flip the mascot when sidebar is on the left'><span>Flip with sidebar:</span>", "<input type=checkbox name=mFlip" + (checked(!bEdit || (bEdit && (mEdit.flip || (mEdit.flip == null))))) + "></label>", "<label title='Allows the mascot to be shown outside the sidebar, ignores `Prevent stretching` option'>", "<span>Allow overflow:</span><input type=checkbox name=mOverflow" + (checked(bEdit && mEdit.overflow)) + "></label>", "<label title='List of boards to display @ mascot on, seperated by commas. Example: a,c,g,v,jp'><span>Boards:</span>", "<input type=text name=mBoards value='" + (bEdit && mEdit.boards ? mEdit.boards : "") + "'></label>", "<div>", "<div id=selectImage><input type=file riced=true accept='image/GIF,image/JPEG,image/PNG'>", "<span class=trbtn>Select Image</span></div>", "" + (bEdit && SS.validBase64(mEdit.img) ? "<input type=hidden name=customIMGB64 value='" + mEdit.img + "'>" : "") + "", "<a class=trbtn name=clearIMG>Clear Image</a>", "<a class=trbtn name=" + (bEdit ? "edit" : "add") + ">" + (bEdit ? "edit" : "add") + "</a><a class=trbtn name=cancel>cancel</a></div></div>"].join(""));
          overlay = $("<div id=overlay2>").append(div);
          $("#selectImage>input[type=file]", div).bind("change", SS.options.SelectImage);
          $("a[name=clearIMG]", div).bind("click", SS.options.ClearImage);
          if (bEdit) {
            $("a[name=edit]", div).bind("click", function() {
              return SS.options.addMascot(mIndex);
            });
          } else {
            $("a[name=add]", div).bind("click", SS.options.addMascot);
          }
          $("a[name=cancel]", div).bind("click", function() {
            return $("#overlay2").remove();
          });
          return $(d.body).append(overlay);
        }
      },
      addMascot: function(mIndex) {
        var bDefault, bSetPos, cBoards, cFlip, cIMG, cOffset, cOverflow, cPosition, cSmall, overlay, tMascot;
        overlay = $("#overlay2");
        cIMG = decodeURIComponent($("input[name=customIMGB64]", overlay).val() || $("input[name=customIMG]", overlay).val());
        cPosition = $("select[name=mPosition]", overlay).val().toLowerCase();
        cOffset = parseInt($("input[name=mOffset]", overlay).val()) || 0;
        cSmall = $("input[name=mSmall]", overlay).val();
        cFlip = $("input[name=mFlip]", overlay).val();
        cOverflow = $("input[name=mOverflow]", overlay).val();
        cBoards = $("input[name=mBoards]", overlay).val();
        bSetPos = cPosition !== "auto";
        if (!(SS.validImageURL(cIMG) && SS.validBase64(cIMG))) {
          return alert("Invalid image URL/base64.");
        }
        cIMG = SS.cleanBase64(cIMG);
        bDefault = SS.conf["Mascots"][mIndex] !== void 0 && SS.conf["Mascots"][mIndex]["default"];
        if (typeof mIndex === "number" && !bDefault) {
          SS.conf["Mascots"][mIndex].img = cIMG;
          SS.conf["Mascots"][mIndex].small = cSmall;
          SS.conf["Mascots"][mIndex].flip = cFlip;
          SS.conf["Mascots"][mIndex].overflow = cOverflow;
          if (cBoards !== "") {
            SS.conf["Mascots"][mIndex].boards = cBoards;
          } else {
            delete SS.conf["Mascots"][mIndex].boards;
          }
          if (bSetPos) {
            SS.conf["Mascots"][mIndex].position = cPosition;
            SS.conf["Mascots"][mIndex].offset = cOffset;
          } else {
            delete SS.conf["Mascots"][mIndex].position;
            delete SS.conf["Mascots"][mIndex].offset;
          }
          tMascot = new SS.Image(cIMG);
          $("#mascot" + mIndex).attr("style", "background:" + tMascot.get());
        } else {
          tMascot = {
            img: cIMG,
            small: cSmall,
            flip: cFlip,
            overflow: void 0,
            cOverflow: void 0,
            boards: (cBoards === "" ? void 0 : cBoards)
          };
          if (bSetPos) {
            tMascot.position = cPosition;
            tMascot.offset = cOffset;
            if (bDefault) {
              SS.options.deleteMascot(mIndex);
              mIndex = SS.conf["Mascots"].push(tMascot);
              tMascot = new SS.Mascot(--mIndex).preview();
              $("#tMascot").append(tMascot);
              tMascot.fire("click").scrollIntoView(true);
            }
          }
        }
        return overlay.remove();
      },
      deleteMascot: function(mIndex) {
        if (SS.conf["Mascots"][mIndex]["default"] && SS.conf["Hidden Mascots"].push(mIndex) === 1) {
          $("#tMascot a[name=restoreMascots]").show();
        }
        return (SS.conf["Mascots"][mIndex]["default"] ? $("#mascot" + mIndex).removeClass("selected").hide() : $("#mascot" + mIndex).remove());
      },
      SelectImage: function() {
        var b64, div, fileName, image, input, parent, reader, val;
        b64 = val = input = void 0;
        div = $("#overlay2");
        parent = $(this).parent();
        image = this.files[0];
        fileName = image.name.substr(image.name.lastIndexOf("\\") + 1);
        reader = new FileReader();
        reader.onload = function(evt) {
          val = SS.cleanBase64(evt.target.result);
          b64 = $("input[name=customIMGB64]", div);
          if (!b64.exists()) {
            b64 = $("<input type=hidden name=customIMGB64>").val(val);
            parent.after(b64);
          } else {
            b64.val(val);
          }
          input = $("input[name=bgImg]", div);
          if (input.exists()) {
            return input.val(fileName).disabled(true);
          } else {
            return $("input[name=customIMG]", div).val(fileName).disabled(true);
          }
        };
        return reader.readAsDataURL(image);
      },
      ClearImage: function() {
        var div, input;
        div = $("#overlay2");
        $("input[name=customIMGB64]").remove();
        input = $("input[name=bgImg]", div);
        if (input.exists()) {
          return input.val("").disabled(false);
        }
        return $("input[name=customIMG]", div).val("").disabled(false);
      }
    },
    Themes: {
      defaults: [
        {
          name: "Dark Flat",
          "default": true,
          bgImg: "R0lGODlhAwADAIAAAB0dHRkZGSH5BADoAwAALAAAAAADAAMAAAIDDG5YADs=",
          bgRPA: "repeat top left fixed",
          bgColor: "202020",
          mainColor: "232425",
          brderColor: "292a2b",
          inputColor: "18191a",
          inputbColor: "121314",
          blinkColor: "6f99b4",
          jlinkColor: "ac9bb0",
          linkColor: "ac9bb0",
          linkHColor: "6f99b4",
          nameColor: "a8c6d9",
          quoteColor: "b3c45e",
          textColor: "dddddd",
          sageColor: "c99090",
          tripColor: "d4c095",
          titleColor: "9390c9",
          timeColor: "dddddd"
        }, {
          name: "Photon",
          "default": true,
          bgImg: false,
          bgColor: "eeeeee",
          mainColor: "dddddd",
          brderColor: "cccccc",
          inputColor: "cccccc",
          inputbColor: "bbbbbb",
          blinkColor: "0066ff",
          jlinkColor: "333333",
          linkColor: "ff6600",
          linkHColor: "0066ff",
          nameColor: "004a99",
          quoteColor: "789922",
          textColor: "333333",
          sageColor: "990000",
          tripColor: "ff3300",
          timeColor: "333333",
          titleColor: "002244"
        }, {
          name: "Tomorrow Night",
          author: "Chris Kempson",
          "default": true,
          bgImg: false,
          bgColor: "1d1f21",
          mainColor: "282a2e",
          brderColor: "373b41",
          inputColor: "282a2e",
          inputbColor: "1d1f21",
          blinkColor: "cc6666",
          jlinkColor: "81a2be",
          linkColor: "81a2be",
          linkHColor: "cc6666",
          nameColor: "81a2be",
          quoteColor: "b5bd68",
          textColor: "c5c8c6",
          sageColor: "cc6666",
          tripColor: "8abeb7",
          titleColor: "b294bb",
          timeColor: "c5c8c6"
        }, {
          name: "Yotsuba",
          "default": true,
          bgImg: "//static.4chan.org/image/fade.png",
          bgRPA: "repeat-x top center scroll",
          bgColor: "ffffee",
          mainColor: "f0e0d6",
          brderColor: "d9bFb7",
          inputColor: "ffffff",
          inputbColor: "aaaaaa",
          blinkColor: "dd0000",
          jlinkColor: "800000",
          linkColor: "0000ee",
          linkHColor: "dd0000",
          nameColor: "117743",
          quoteColor: "789922",
          textColor: "800000",
          sageColor: "cc1111",
          tripColor: "228854",
          titleColor: "cc1105",
          timeColor: "800000",
          customCSS: '#delform,.reply,.hidden_thread,.stub{border-radius:0!important}\n.reply,.hidden_thread,.stub{border-left:0!important;border-top:0!important;"+(SS.conf["Layout"]==1?"border-right:0!important":"")+"}'
        }, {
          name: "Yotsuba B",
          "default": true,
          bgImg: "//static.4chan.org/image/fade-blue.png",
          bgRPA: "repeat-x top center scroll",
          bgColor: "eef2ff",
          mainColor: "d6daf0",
          brderColor: "b7c5d9",
          inputColor: "ffffff",
          inputbColor: "aaaaaa",
          blinkColor: "dd0000",
          jlinkColor: "34345C",
          linkColor: "34345C",
          linkHColor: "dd0000",
          nameColor: "117743",
          quoteColor: "789922",
          textColor: "000000",
          sageColor: "990000",
          tripColor: "228854",
          titleColor: "0f0c5d",
          timeColor: "000000",
          customCSS: '#delform,.reply,.hidden_thread,.stub{border-radius:0!important}\n.reply,.hidden_thread,.stub{border-left:0!important;border-top:0!important;"+(SS.conf["Layout"]==1?"border-right:0!important":"")+"}'
        }, {
          name: "安心院なじみ",
          "default": true,
          bgImg: "http://i.imgur.com/RewHm.png",
          bgRPA: "no-repeat right bottom fixed",
          bgColor: "ffffff",
          mainColor: "efefef",
          brderColor: "d6d6d6",
          inputColor: "cccccc",
          inputbColor: "bbbbbb",
          blinkColor: "f5871f",
          jlinkColor: "bf8040",
          linkColor: "bf8040",
          linkHColor: "bf8040",
          nameColor: "2b80c2",
          quoteColor: "718c00",
          textColor: "4d4d4c",
          sageColor: "c82829",
          tripColor: "3e999f",
          titleColor: "4d4d4d",
          timeColor: "4d4d4c"
        }, {
          name: "Midnight Caek",
          author: "zixaphir",
          "default": true,
          bgImg: false,
          bgColor: "101010",
          mainColor: "1c1c1c",
          brderColor: "1c1c1c",
          inputColor: "1c1c1c",
          inputbColor: "101010",
          blinkColor: "47475b",
          jlinkColor: "57577b",
          linkColor: "57577b",
          linkHColor: "47475b",
          nameColor: "7c2d2d",
          quoteColor: "71793e",
          textColor: "909090",
          sageColor: "7c2d2d",
          tripColor: "3e7157",
          titleColor: "aaaaaa",
          timeColor: "909090"
        }, {
          name: "Solarized",
          author: "Ethan Schoonover",
          "default": true,
          bgImg: false,
          bgColor: "073642",
          mainColor: "032b36",
          brderColor: "133942",
          inputColor: "073642",
          inputbColor: "0d272e",
          blinkColor: "4f5f8f",
          jlinkColor: "696fc0",
          linkColor: "696bba",
          linkHColor: "d33682",
          nameColor: "586e75",
          quoteColor: "859900",
          textColor: "93a1a1",
          sageColor: "cc6666",
          tripColor: "2aa198",
          titleColor: "bec2c4",
          timeColor: "93a1a1",
          customCSS: ".reply{border:0!important}"
        }, {
          name: "4chan Rewired",
          author: "!K.WeEabo0o",
          "default": true,
          bgImg: "http://oi39.tinypic.com/2h51rb4.jpg",
          bgRPA: "no-repeat bottom right fixed",
          bgColor: "f4f4f4",
          mainColor: "efefef",
          brderColor: "d4d4d4",
          inputColor: "e4e4e4",
          inputbColor: "cccccc",
          blinkColor: "bf7f3f",
          jlinkColor: "bf7f3f",
          linkColor: "bf7f3f",
          linkHColor: "d33682",
          nameColor: "4c4c4c",
          quoteColor: "6b7a1e",
          textColor: "4c4c4c",
          sageColor: "cc6666",
          tripColor: "bf7f3f",
          titleColor: "4c4c4c",
          timeColor: "4c4c4c",
          customCSS: '"+(SS.conf["Layout"]===2?".opContainer{display:block!important;border:1px solid "+this.brderColor.hex+"!important;"+(SS.conf["Sidebar Position"]===3?"margin-left:-"+(SS.conf["Side Margin"]+2)+"px!important;padding-left:"+(SS.conf["Side Margin"]+2)+"px!important}.opContainer,":"}"):"")+".post.reply{background:-webkit-linear-gradient(top,rgba(244,244,244,.8),rgba(239,239,239,.8))!important;background:-moz-linear-gradient(top,rgba(244,244,244,.8),rgba(239,239,239,.8))!important;background:-o-linear-gradient(top,rgba(244,244,244,.8),rgba(239,239,239,.8))!important;box-shadow:0 2px 5px rgba(0,0,0,.05)!important}.reply.highlight,.qphl{border-color:rgba("+this.linkHColor.rgb+",.6)!important}'
        }, {
          name: "violaceous",
          author: "!MaSoOdDwDw",
          "default": true,
          bgImg: false,
          bgColor: "121314",
          mainColor: "1b1b1b",
          brderColor: "292a2b",
          inputColor: "18191a",
          inputbColor: "121314",
          blinkColor: "db95e5",
          jlinkColor: "db95e5",
          linkColor: "2a7fa0",
          linkHColor: "3090b5",
          nameColor: "a497b0",
          quoteColor: "00ab3f",
          textColor: "dddddd",
          sageColor: "4f4f4f",
          tripColor: "bd2b83",
          titleColor: "06989a",
          timeColor: "dddddd",
          customCSS: ".reply{border:0!important}"
        }, {
          name: "4chan Dark Upgrade",
          "default": true,
          bgImg: "http://img85.imageshack.us/img85/4162/4chbg.gif",
          bgRPA: "repeat top left fixed",
          bgColor: "242424",
          mainColor: "333333",
          brderColor: "3a3a3a",
          inputColor: "2f2f2f",
          inputbColor: "0f0f0f",
          blinkColor: "cccccc",
          jlinkColor: "cccccc",
          linkColor: "dddddd",
          linkHColor: "eeeeee",
          nameColor: "ffffff",
          quoteColor: "63995b",
          textColor: "ffffff",
          sageColor: "b17385",
          tripColor: "a7dce7",
          titleColor: "999999",
          timeColor: "aaaaaa",
          customCSS: ["#delform{background:rgba(22,22,22,.8)!important;border:0!important;padding:1px!important;box-shadow:rgba(0,0,0,.8) 0 0 10px;}", ".postContainer>.reply{background-image:url(http://img714.imageshack.us/img714/3969/4ch2.gif)!important;", "border-bottom:#1f1f1f!important;border-radius:5px!important}", ".thread:not(.stub){background:0!important}a:not([href=\'javascript:;\']){text-shadow:#0f0f0f 0 1px;}"].join("")
        }, {
          name: "AppChan",
          author: "Zixaphir",
          "default": true,
          bgImg: false,
          bgColor: "2c2c2c",
          mainColor: "333333",
          brderColor: "2c2c2c",
          inputColor: "333333",
          inputbColor: "2c2c2c",
          blinkColor: "4f5f8f",
          jlinkColor: "6688aa",
          linkColor: "6688aa",
          linkHColor: "6688aa",
          nameColor: "aaaaaa",
          quoteColor: "789922",
          textColor: "aaaaaa",
          sageColor: "aaaaaa",
          tripColor: "aaaaaa",
          titleColor: "aaaaaa",
          timeColor: "aaaaaa",
          customCSS: ".reply{border:0!important}"
        }, {
          name: "Vimyanized Dark",
          author: "seaweed",
          "default": true,
          bgImg: false,
          bgColor: "090d0f",
          mainColor: "0d1114",
          brderColor: "0b1316",
          inputColor: "090d0f",
          inputbColor: "0b1316",
          blinkColor: "4797cc",
          jlinkColor: "4270b2",
          linkColor: "53bdb1",
          linkHColor: "3090b5",
          nameColor: "d63e34",
          quoteColor: "96c83b",
          textColor: "f8f8f8",
          sageColor: "4f4f4f",
          tripColor: "d4b63c",
          titleColor: "b88cd1",
          timeColor: "dddddd"
        }, {
          name: "Muted",
          author: "seaweed",
          "default": true,
          bgImg: false,
          bgColor: "ffffff",
          mainColor: "f5f2e9",
          brderColor: "cccccc",
          inputColor: "ffffff",
          inputbColor: "cccccc",
          blinkColor: "111111",
          jlinkColor: "bc312a",
          linkColor: "bc312a",
          linkHColor: "8e2220",
          nameColor: "2c64a0",
          quoteColor: "789922",
          textColor: "393735",
          sageColor: "990000",
          tripColor: "cc6563",
          titleColor: "111111",
          timeColor: "333333",
          customCSS: ".boardTitle{color:#bc312a!important;text-shadow:1px 1px 1px #772e28!important;}.boardSubtitle,.boardBanner .boardSubtitle>a{text-shadow:none!important;}.postNum a{color:#111111!important;}div.reply a.quotelink{color:#bc312a!important;}"
        }, {
          name: "Photons + Odin",
          author: "!Hu6tDS8lls",
          "default": true,
          bgImg: "R0lGODlhAwADAIAAAB0dHRkZGSH5BADoAwAALAAAAAADAAMAAAIDDG5YADs=",
          bgRPA: "repeat top left fixed",
          bgColor: "202020",
          mainColor: "1a1a1a",
          brderColor: "1f1f1f",
          inputColor: "18191a",
          inputbColor: "121314",
          blinkColor: "c72d41",
          jlinkColor: "446a6d",
          linkColor: "737f88",
          linkHColor: "4f585d",
          nameColor: "0099bc",
          quoteColor: "85c600",
          textColor: "dddddd",
          sageColor: "c72d41",
          tripColor: "ff0085",
          titleColor: "ffa600",
          timeColor: "ffffff"
        }
      ],
      init: function() {
        var i, tIndex;
        SS.conf["Themes"] = Array.isArray(SS.conf["Themes"]) ? this.defaults.concat(SS.conf["Themes"]) : this.defaults.slice(0);
        i = SS.conf["SFW/NSFW Themes"] && SS.location.nsfw ? SS.conf["NSFW Theme"] : SS.conf["Selected Theme"];
        tIndex = SS.conf["Themes"][i] ? i : 0;
        return SS.theme = new SS.Theme(tIndex);
      }
    },
    Mascots: {
      defaults: [
        {
          img: "http://i.imgur.com/DL5uR.png",
          overflow: true,
          "default": true
        }, {
          img: "http://i.imgur.com/zhPlM.png",
          "default": true
        }, {
          img: "http://i.imgur.com/b9KmB.png",
          "default": true
        }, {
          img: "http://i.imgur.com/bsLY4.png",
          offset: 0,
          position: "center",
          "default": true
        }, {
          img: "http://i.imgur.com/uO5qZ.png",
          "default": true
        }, {
          img: "http://i.imgur.com/Ht6dr.png",
          offset: -90,
          position: "center",
          small: true,
          "default": true
        }, {
          img: "http://i.imgur.com/56oEl.png",
          "default": true
        }, {
          img: "http://i.imgur.com/ridLc.png",
          overflow: true,
          "default": true
        }, {
          img: "http://i.imgur.com/AfjG9.png",
          offset: 0,
          position: "center",
          flip: false,
          small: true,
          "default": true
        }, {
          img: "http://i.imgur.com/WUIMw.png",
          "default": true
        }, {
          img: "http://i.imgur.com/J1i26.png",
          offset: -90,
          position: "center",
          "default": true
        }, {
          img: "http://i.imgur.com/53yAK.png",
          overflow: true,
          "default": true
        }, {
          img: "http://i.imgur.com/H1pgZ.png",
          offset: 0,
          position: "center",
          flip: false,
          small: true,
          "default": true
        }, {
          img: "http://i.imgur.com/MdE9K.png",
          flip: false,
          overflow: true,
          "default": true
        }, {
          img: "http://i.imgur.com/NaKmF.png",
          offset: 0,
          position: "center",
          "default": true
        }, {
          img: "http://i.imgur.com/WWozC.png",
          overflow: true,
          "default": true
        }, {
          img: "http://i.imgur.com/K1mLx.png",
          flip: false,
          small: true,
          "default": true
        }, {
          img: "http://i.imgur.com/FKDcd.png",
          "default": true
        }, {
          img: "http://i.imgur.com/zu9nY.png",
          "default": true
        }, {
          img: "http://i.imgur.com/haBSN.png",
          "default": true
        }, {
          img: "http://i.imgur.com/xwPrX.png",
          "default": true
        }, {
          img: "http://i.imgur.com/c8Lal.png",
          "default": true
        }
      ],
      init: function() {
        var eMascot, mIndex, mascot, _i, _len, _ref;
        SS.conf["Mascots"] = Array.isArray(SS.conf["Mascots"]) ? this.defaults.concat(SS.conf["Mascots"]) : this.defaults.slice(0);
        eMascot = [];
        if (SS.conf["Selected Mascots"] === 0) {
          eMascot = SS.conf["Mascots"];
          mIndex = Math.floor(Math.random() * eMascot.length);
        } else {
          _ref = SS.conf["Selected Mascots"];
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            mascot = _ref[_i];
            if (!((SS.conf["Mascots"][mascot].boards != null) || mascot.boards.split(",").indexOf(SS.location.board) === -1)) {
              eMascot.push(j);
            }
          }
          if (eMascot.length === 0) {
            return SS.mascot = new SS.Mascot(-1);
          } else {
            mIndex = eMascot[Math.floor(Math.random() * eMascot.length)];
          }
        }
        return SS.mascot = new SS.Mascot(mIndex);
      }
    },
    pages: {
      hasInit: false,
      init: function() {
        var cpage, pages, select;
        if (!this.hasInit && SS.conf["Pages Position"] === 1) {
          if ($("#pagesDrop").exists()) {
            return;
          }
          pages = $(".pagelist .pages>*");
          cpage = $(".pagelist .pages>strong").text();
          select = $("<select id=pagesDrop>");
          if (pages.length() === 0) {
            return;
          }
          pages.each(function() {
            return select.append($("<option value=" + this.textContent.toLowerCase() + (cpage === this.textContent ? " selected=true" : "") + ">Page " + this.textContent));
          });
          select.bind("change", function() {
            return location.href = location.href.replace(/(\.org\/[^\/]+)\/?.*$/, "$1/" + this.value);
          });
          $("#boardNavDesktop").prepend(select);
          return this.hasInit = true;
        } else if (this.hasInit && SS.conf["Pages Position"] !== 1) {
          $("#pagesDrop").remove();
          return this.hasInit = false;
        }
      }
    },
    tripHider: {
      hasInit: false,
      init: function(input) {
        if (this.hasInit && !SS.conf["Smart Tripcode Hider"]) {
          $("input[name=name]").each(function() {
            return $(this).unbind("blur", SS.tripHider.handle).removeClass("tripping");
          });
          return this.hasInit = false;
        } else {
          input.bind("blur", this.handle);
          return this.hasInit = true;
        }
      },
      handle: function(e) {
        var check, that;
        that = this.nodeName ? $(this) : $(e);
        check = /^.*##?.+/.test(that.val());
        if (check && !that.hasClass("tripping")) {
          return that.addClass("tripping");
        } else if (!check && that.hasClass("tripping")) {
          return that.removeClass("tripping");
        }
      }
    },
    menuEntries: {
      hasInit: false,
      init: function() {
        var a, open;
        if (!this.hasInit && SS.conf["Show/Hide Menu Entry"]) {
          a = document.createElement("a");
          a.href = "javascript:;";
          open = function(post) {
            var bIsHidden, onclick, p;
            if (post.isInlined) {
              return false;
            }
            p = $(post.el);
            bIsHidden = (p.attr("hidden") != null) || (p.hasClass("op") && p.parent().previousSibling(".hidden_thread").exists());
            a.textContent = (bIsHidden("Show") ? "Hide" : void 0) + " @post";
            a.removeEventListener("click", onclick);
            onclick = function() {
              var pc;
              pc = $("#pc" + post.ID);
              if (pc.hasClass("opContainer")) {
                return pc.previousSibling().click();
              } else {
                return pc.children(".hide_reply_button:first-child>a").click();
              }
            };
            a.addEventListener("click", onclick);
            return true;
          };
          this.createEntry(a, open);
          return this.hasInit = true;
        }
      },
      createEntry: function(a, fn, type) {
        return d.dispatchEvent(new CustomEvent("AddMenuEntry", {
          detail: {
            el: a,
            open: fn,
            type: type || 'post'
          }
        }));
      }
    },
    riceInputs: {
      hasInit: false,
      init: function() {
        if (!this.hasInit) {
          if (!SS.browser.webkit) {
            if (!SS.conf["Hide Checkboxes"]) {
              $("input[type=checkbox]:not(#imageExpand)").riceCheck();
            } else {
              $("input#prefetch").riceCheck();
            }
          }
          if (SS.location.board === "f") {
            $(".postarea input[type=file]").riceFile();
          }
          return this.hasInit = true;
        } else if (!(SS.browser.webkit && SS.conf["Hide Checkboxes"] && $(".postInfo>.riceCheck").exists())) {
          $("input[type=checkbox]:not(#imageExpand)").riceCheck();
          return this.hasInit = false;
        }
      }
    },
    logoReflect: {
      hasInit: false,
      init: function() {
        var div;
        if (this.hasInit) {
          return;
        }
        div = $("<div id=bBanner>").append($(".boardBanner>img").attr("id", "banner"));
        $(".boardBanner").prepend(div);
        return this.hasInit = true;
      }
    },
    jscolor: {
      css: function() {},
      bind: function(el) {
        if (!el.color) {
          return el.color = new SS.jscolor.color(el);
        }
      },
      fetchElement: function(mixed) {
        if (typeof mixed === "string") {
          return $.id(mixed);
        } else {
          return mixed;
        }
      },
      fireEvent: function(el, event) {
        if (!el) {
          return;
        }
        return $.event(event, null, el);
      },
      getRelMousePos: function(e) {
        var x, y;
        e || (e = window.event);
        x = 0;
        y = 0;
        if (typeof e.offsetX === 'number') {
          x = e.offsetX;
          y = e.offsetY;
        } else if (typeof e.layerX === 'number') {
          x = e.layerX;
          y = e.layerY;
        }
        return {
          x: x,
          y: y
        };
      },
      color: function(target) {
        var HSV_RGB, RGB_HSV, THIS, abortBlur, blurTarget, blurValue, drawPicker, holdPad, holdSld, isPickerOwner, leavePad, leaveSld, leaveStyle, leaveValue, redrawPad, redrawSld, removePicker, setPad, setSld, styleElement, valueElement;
        this.hsv = [0, 0, 1];
        this.rgb = [1, 1, 1];
        this.valueElement = this.styleElement = target;
        abortBlur = holdPad = holdSld = false;
        this.hidePicker = function() {
          if (isPickerOwner()) {
            return removePicker();
          }
        };
        this.showPicker = function() {
          if (!isPickerOwner()) {
            return drawPicker();
          }
        };
        this.importColor = function() {
          if (!valueElement) {
            return this.exportColor();
          } else {
            if (!this.fromString(valueElement.value, leaveValue)) {
              styleElement.style.backgroundColor = styleElement.jscStyle.backgroundColor;
              return this.exportColor(leaveValue | leaveStyle);
            }
          }
        };
        this.exportColor = function(flags) {
          var value;
          if (!(flags & leaveValue) && valueElement) {
            value = '#' + this.toString();
            valueElement.value = value;
            valueElement.previousSibling.value = value;
            editTheme[valueElement.previousSibling.name] = value;
            setTimeout(function() {
              return Style.themeCSS.textContent = Style.theme(editTheme);
            });
          }
          if (!(flags & leaveStyle) && styleElement) {
            styleElement.style.backgroundColor = '#' + this.toString();
          }
          if (!(flags & leavePad) && isPickerOwner()) {
            redrawPad();
          }
          if (!(flags & leaveSld) && isPickerOwner()) {
            return redrawSld();
          }
        };
        this.fromHSV = function(h, s, v, flags) {
          this.hsv = [h = h ? $.minmax(h, 0.0, 6.0) : this.hsv[0], s = s ? $.minmax(s, 0.0, 1.0) : this.hsv[1], v = v ? $.minmax(v, 0.0, 1.0) : this.hsv[2]];
          this.rgb = HSV_RGB(h, s, v);
          return this.exportColor(flags);
        };
        this.fromRGB = function(r, g, b, flags) {
          var hsv;
          r = r != null ? $.minmax(r, 0.0, 1.0) : this.rgb[0];
          g = g != null ? $.minmax(g, 0.0, 1.0) : this.rgb[1];
          b = b != null ? $.minmax(b, 0.0, 1.0) : this.rgb[2];
          hsv = RGB_HSV(r, g, b);
          if (hsv[0] != null) {
            this.hsv[0] = $.minmax(hsv[0], 0.0, 6.0);
          }
          if (hsv[2] !== 0) {
            this.hsv[1] = hsv[1] == null ? null : $.minmax(hsv[1], 0.0, 1.0);
          }
          this.hsv[2] = hsv[2] == null ? null : $.minmax(hsv[2], 0.0, 1.0);
          this.rgb = HSV_RGB(this.hsv[0], this.hsv[1], this.hsv[2]);
          return this.exportColor(flags);
        };
        this.fromString = function(number, flags) {
          var m, val;
          m = number.match(/^\W*([0-9A-F]{3}([0-9A-F]{3})?)\W*$/i);
          if (!m) {
            return false;
          } else {
            if (m[1].length === 6) {
              this.fromRGB(parseInt(m[1].substr(0, 2), 16) / 255, parseInt(m[1].substr(2, 2), 16) / 255, parseInt(m[1].substr(4, 2), 16) / 255, flags);
            } else {
              this.fromRGB(parseInt((val = m[1].charAt(0)) + val, 16) / 255, parseInt((val = m[1].charAt(1)) + val, 16) / 255, parseInt((val = m[1].charAt(2)) + val, 16) / 255, flags);
            }
            return true;
          }
        };
        this.toString = function() {
          return (0x100 | Math.round(255 * this.rgb[0])).toString(16).substr(1) + (0x100 | Math.round(255 * this.rgb[1])).toString(16).substr(1) + (0x100 | Math.round(255 * this.rgb[2])).toString(16).substr(1);
        };
        RGB_HSV = function(r, g, b) {
          var h, m, n, v;
          n = (n = r < g ? r : g) < b ? n : b;
          v = (v = r > g ? r : g) > b ? v : b;
          m = v - n;
          if (m === 0) {
            return [null, 0, v];
          }
          h = r === n ? 3 + (b - g) / m : g === n ? 5 + (r - b) / m : 1 + (g - r) / m;
          return [h === 6 ? 0 : h, m / v, v];
        };
        HSV_RGB = function(h, s, v) {
          var f, i, m, n;
          if (h == null) {
            return [v, v, v];
          }
          i = Math.floor(h);
          f = i % 2 ? h - i : 1 - (h - i);
          m = v * (1 - s);
          n = v * (1 - s * f);
          switch (i) {
            case 6:
            case 0:
              return [v, n, m];
            case 1:
              return [n, v, m];
            case 2:
              return [m, v, n];
            case 3:
              return [m, n, v];
            case 4:
              return [n, m, v];
            case 5:
              return [v, m, n];
          }
        };
        removePicker = function() {
          delete SS.jscolor.picker.owner;
          return $.rm(SS.jscolor.picker.boxB);
        };
        drawPicker = function(x, y) {
          var box, boxB, btn, btnS, child, el, elements, item, p, pad, padB, padM, sld, sldB, sldM, _i, _j, _len, _len1, _ref;
          if (!(p = SS.jscolor.picker)) {
            elements = ['box', 'boxB', 'pad', 'padB', 'padM', 'sld', 'sldB', 'sldM', 'btn'];
            p = {};
            for (_i = 0, _len = elements.length; _i < _len; _i++) {
              item = elements[_i];
              el = p[item] = d.createElement('div');
              el.className = "jsc" + (item.charAt(0).toUpperCase() + item.slice(1));
            }
            p.btnS = $.el('span', {
              className: 'jscBtnS'
            });
            p.btnT = $.tn('Close');
            SS.jscolor.picker = p;
            _ref = [p.sldB, p.sldM, p.padB, p.padM, p.btn];
            for (_j = 0, _len1 = _ref.length; _j < _len1; _j++) {
              child = _ref[_j];
              p.box.appendChild(child);
            }
            p.sldB.appendChild(p.sld);
            p.padB.appendChild(p.pad);
            p.btnS.appendChild(p.btnT);
            p.btn.appendChild(p.btnS);
            p.boxB.appendChild(p.box);
          }
          box = p.box, boxB = p.boxB, btn = p.btn, btnS = p.btnS, pad = p.pad, padB = p.padB, padM = p.padM, sld = p.sld, sldB = p.sldB, sldM = p.sldM;
          box.onmouseup = box.onmouseout = function() {
            return target.focus();
          };
          box.onmousedown = function() {
            return abortBlur = true;
          };
          box.onmousemove = function(e) {
            if (holdPad || holdSld) {
              holdPad && setPad(e);
              holdSld && setSld(e);
              if (d.selection) {
                return d.selection.empty();
              } else if (window.getSelection) {
                return window.getSelection().removeAllRanges();
              }
            }
          };
          padM.onmouseup = padM.onmouseout = function() {
            if (holdPad) {
              holdPad = false;
              return SS.jscolor.fireEvent(valueElement, 'change');
            }
          };
          padM.onmousedown = function(e) {
            if (THIS.hsv[2] === 0) {
              THIS.fromHSV(null, null, 1.0);
            }
            holdPad = true;
            return setPad(e);
          };
          sldM.onmouseup = sldM.onmouseout = function() {
            if (holdSld) {
              holdSld = false;
              return SS.jscolor.fireEvent(valueElement, 'change');
            }
          };
          sldM.onmousedown = function(e) {
            holdSld = true;
            return setSld(e);
          };
          btn.onmousedown = function() {
            return THIS.hidePicker();
          };
          redrawPad();
          redrawSld();
          SS.jscolor.picker.owner = THIS;
          return $.add(ThemeTools.dialog, p.boxB);
        };
        redrawPad = function() {
          var rgb;
          SS.jscolor.picker.padM.style.backgroundPosition = "" + (4 + Math.round((THIS.hsv[0] / 6) * 180)) + "px " + (4 + Math.round((1 - THIS.hsv[1]) * 100)) + "px";
          rgb = HSV_RGB(THIS.hsv[0], THIS.hsv[1], 1);
          SS.jscolor.picker.sld.style.backgroundColor = "rgb(" + (rgb[0] * 100) + "%, " + (rgb[1] * 100) + "%, " + (rgb[2] * 100) + "%)";
        };
        redrawSld = function() {
          return SS.jscolor.picker.sldM.style.backgroundPosition = "0 " + (6 + Math.round((1 - THIS.hsv[2]) * 100)) + "px";
        };
        isPickerOwner = function() {
          return SS.jscolor.picker && SS.jscolor.picker.owner === THIS;
        };
        blurTarget = function() {
          if (valueElement === target) {
            return THIS.importColor();
          }
        };
        blurValue = function() {
          if (valueElement !== target) {
            return THIS.importColor();
          }
        };
        setPad = function(e) {
          var mpos, x, y;
          mpos = SS.jscolor.getRelMousePos(e);
          x = mpos.x - 11;
          y = mpos.y - 11;
          return THIS.fromHSV(x * (1 / 30), 1 - y / 100, null, leaveSld);
        };
        setSld = function(e) {
          var mpos, y;
          mpos = SS.jscolor.getRelMousePos(e);
          y = mpos.y - 9;
          return THIS.fromHSV(null, null, 1 - y / 100, leavePad);
        };
        THIS = this;
        valueElement = SS.jscolor.fetchElement(this.valueElement);
        styleElement = SS.jscolor.fetchElement(this.styleElement);
        leaveValue = 1 << 0;
        leaveStyle = 1 << 1;
        leavePad = 1 << 2;
        leaveSld = 1 << 3;
        $.on(target, 'focus', function() {
          return THIS.showPicker();
        });
        $.on(target, 'blur', function() {
          if (!abortBlur) {
            return window.setTimeout(function() {
              abortBlur || blurTarget();
              return abortBlur = false;
            });
          } else {
            return abortBlur = false;
          }
        });
        if (valueElement) {
          $.on(valueElement, 'keyup input', function() {
            return THIS.fromString(valueElement.value, leaveValue);
          });
          $.on(valueElement, 'blur', blurValue);
          valueElement.setAttribute('autocomplete', 'off');
        }
        if (styleElement) {
          styleElement.jscStyle = {
            backgroundColor: styleElement.style.backgroundColor
          };
        }
        return this.importColor();
      }
    },
    Color: (function() {
      function _Class(value) {
        this.hex = "#" + value;
        this.private_rgb = this.calc_rgb();
        this.isLight = SS.isLight(this.private_rgb);
        this.rgb = this.private_rgb.join(",");
        this.hover = this.shiftRGB(16, true);
      }

      _Class.prototype.calc_rgb = function() {
        var hex;
        hex = parseInt(this.hex, 16);
        return [(hex >> 16) & 0xFF, (hex >> 8) & 0xFF, hex & 0xFF];
      };

      _Class.prototype.shiftRGB = function(shift, smart) {
        var color, minmax, rgb;
        minmax = function(base) {
          if (base < 0) {
            return 0;
          } else if (base > 255) {
            return 255;
          } else {
            return base;
          }
        };
        rgb = __slice.call(this.private_rgb);
        shift = smart ? (this.isLight ? -1 : 1) * Math.abs(shift) : shift;
        return ((function() {
          var _i, _len, _results;
          _results = [];
          for (_i = 0, _len = rgb.length; _i < _len; _i++) {
            color = rgb[_i];
            _results.push(minmax(color + shift));
          }
          return _results;
        })()).join(",");
      };

      return _Class;

    })(),
    Image: (function() {
      function _Class(img, RPA) {
        this.img = img;
        this.RPA = RPA;
        return this;
      }

      _Class.prototype.get = function() {
        return (this.img ? "url('" + (SS.validBase64(this.img) ? 'data:image/' + SS.typeofBase64(this.img) + ';base64,' + this.img : this.img) + "')" + (this.RPA != null ? ' ' + this.RPA : '') : 'none');
      };

      return _Class;

    })(),
    Mascot: (function() {
      function _Class(index) {
        var mascot;
        if (index === -1) {
          this.img = new SS.Image(null);
          this.hidden = true;
          return;
        } else {
          mascot = SS.conf["Mascots"][index];
        }
        this.index = index;
        this.hidden = SS.conf["Hidden Mascots"].indexOf(index) !== -1;
        this["default"] = mascot["default"];
        this.position = mascot.position;
        this.overflow = mascot.overflow;
        this.small = mascot.small || this.overflow;
        this.flip = (typeof mascot.flip === "function" ? mascot.flip(mascot.flip) : void 0) ? void 0 : true;
        this.img = new SS.Image(mascot.img, "no-repeat " + (this.overflow ? SS.conf["Sidebar Position " + (SS.conf["Sidebar Position String"] === "left" && this.flip ? "o" : "") + "String"] : "center") + " " + (this.position || "bottom"));
        this.bOffset = typeof mascot.offset === "number";
        this.offset = this.bOffset ? mascot.offset : SS.conf["Post Form"] !== 1 ? 273 : 23;
        this.boards = mascot.boards;
        this.enabled = SS.conf["Selected Mascots"] === 0 || !SS.conf["Selected Mascots"].indexOf(index) === -1;
      }

      _Class.prototype.preview = function() {
        var div;
        div = $(["<div " + (this.hidden ? "hidden=true " : ""), "id=mascot" + this.index + (this.enabled ? " class=selected" : ""), " style=\"background:" + this.img.get() + "\">"].join('')).html("<a title=Delete>X</a><a title=Edit>E</a>");
        $(div).bind("click", function() {
          return $(this).toggleClass("selected");
        });
        $("a[title=Delete]", div).bind("click", function(e) {
          e.stopPropagation();
          return SS.options.deleteMascot(index);
        });
        $("a[title=Edit]", div).bind("click", function(e) {
          e.stopPropagation();
          return SS.options.showMascot(index);
        });
        return div;
      };

      return _Class;

    })(),
    Theme: (function() {
      function _Class(index) {
        var color, e, key, svg, theme, _i, _len, _ref;
        if ((theme = SS.conf["Themes"][index]) == null) {
          return this.hidden = true;
        }
        this.index = index;
        this.hidden = SS.conf["Hidden Themes"].indexOf(index) !== -1;
        this.name = theme.name;
        this.author = theme.author || "ahodesuka";
        this["default"] = theme["default"];
        this.replyBrder = theme.replyBrder;
        this.bgImg = new SS.Image(theme.bgImg, theme.bgRPA);
        _ref = ['bg', 'main', 'brder', 'input', 'inputb', 'blink', 'jlink', 'link', 'linkH', 'name', 'quote', 'sage', 'text', 'title', 'trip'];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          color = _ref[_i];
          this[key = "" + color + "Color"] = new SS.Color(theme[key]);
        }
        this.timeColor = new SS.Color(theme.timeColor || theme.textColor);
        this.checkMark = new SS.Image(inputImages, "no-repeat center " + (this.inputColor.isLight ? 0 : -8) + "px");
        this.radioCheck = new SS.Image(inputImages, "no-repeat center " + (this.inputColor.isLight ? -16 : -24) + "px");
        svg = function(color, coords, dims) {
          if (dims == null) {
            dims = 16;
          }
          return ["<svg viewBox='0 0 30 30' hpreserveAspectRatio='true' height='", dims, "' width='", dims, "' xmlns='http://www.w3.org/2000/svg'>", "<path fill='rgb(", color, ")' d='", coords, "'/>", "</svg>"].join("");
        };
        this.icons = {
          closeButton: svg(this.sageColor.rgb, 'M24.778,21.419 19.276,15.917 24.777,10.415 21.949,7.585 16.447,13.087 10.945,7.585 8.117,10.415 13.618,15.917 8.116,21.419 10.946,24.248 16.447,18.746 21.948,24.248z'),
          closedThread: svg(this.sageColor.rgb, 'M22.335,12.833V9.999h-0.001C22.333,6.501,19.498,3.666,16,3.666S9.666,6.502,9.666,10h0v2.833H7.375V25h17.25V12.833H22.335zM11.667,10C11.667,10,11.667,10,11.667,10c0-2.39,1.944-4.334,4.333-4.334c2.391,0,4.335,1.944,4.335,4.333c0,0,0,0,0,0v2.834h-8.668V10z'),
          stuckThread: svg(this.tripColor.rgb, 'M16,3.5c-4.142,0-7.5,3.358-7.5,7.5c0,4.143,7.5,18.121,7.5,18.121S23.5,15.143,23.5,11C23.5,6.858,20.143,3.5,16,3.5z M16,14.584c-1.979,0-3.584-1.604-3.584-3.584S14.021,7.416,16,7.416S19.584,9.021,19.584,11S17.979,14.584,16,14.584z'),
          imgExpand: svg(this.textColor.shiftRGB(32, true), 'M25.545,23.328,17.918,15.623,25.534,8.007,27.391,9.864,29.649,1.436,21.222,3.694,23.058,5.53,15.455,13.134,7.942,5.543,9.809,3.696,1.393,1.394,3.608,9.833,5.456,8.005,12.98,15.608,5.465,23.123,3.609,21.268,1.351,29.695,9.779,27.438,7.941,25.6,15.443,18.098,23.057,25.791,21.19,27.638,29.606,29.939,27.393,21.5z', 14, 14),
          imgContract: svg(this.textColor.rgb, 'M25.083,18.895l-8.428-2.259l2.258,8.428l1.838-1.837l7.053,7.053l2.476-2.476l-7.053-7.053L25.083,18.895zM5.542,11.731l8.428,2.258l-2.258-8.428L9.874,7.398L3.196,0.72L0.72,3.196l6.678,6.678L5.542,11.731zM7.589,20.935l-6.87,6.869l2.476,2.476l6.869-6.869l1.858,1.857l2.258-8.428l-8.428,2.258L7.589,20.935zM23.412,10.064l6.867-6.87l-2.476-2.476l-6.868,6.869l-1.856-1.856l-2.258,8.428l8.428-2.259L23.412,10.064z'),
          hideButton: svg('203,77,70', 'M25.979,12.896,5.979,12.896,5.979,19.562,25.979,19.562z'),
          showButton: svg('63,203,73', 'M25.979,12.896 19.312,12.896 19.312,6.229 12.647,6.229 12.647,12.896 5.979,12.896 5.979,19.562 12.647,19.562 12.647,26.229 19.312,26.229 19.312,19.562 25.979,19.562z'),
          returnButton: svg(this.textColor.rgb, 'M12.981,9.073V6.817l-12.106,6.99l12.106,6.99v-2.422c3.285-0.002,9.052,0.28,9.052,2.269c0,2.78-6.023,4.263-6.023,4.263v2.132c0,0,13.53,0.463,13.53-9.823C29.54,9.134,17.952,8.831,12.981,9.073z'),
          notWatched: svg(this.quoteColor.rgb, 'M16,22.375L7.116,28.83l3.396-10.438l-8.883-6.458l10.979,0.002L16.002,1.5l3.391,10.434h10.981l-8.886,6.457l3.396,10.439L16,22.375L16,22.375zM22.979,26.209l-2.664-8.205l6.979-5.062h-8.627L16,4.729l-2.666,8.206H4.708l6.979,5.07l-2.666,8.203L16,21.146L22.979,26.209L22.979,26.209z'),
          watchedIco: svg(this.quoteColor.rgb, 'M16,22.375L7.116,28.83l3.396-10.438l-8.883-6.458l10.979,0.002L16.002,1.5l3.391,10.434h10.981l-8.886,6.457l3.396,10.439L16,22.375L16,22.375z'),
          menuButton: svg(this.jlinkColor.rgb, 'M10.129,22.186 16.316,15.999 10.129,9.812 13.665,6.276 23.389,15.999 13.665,25.725z'),
          _4chanSS: svg(this.textColor.rgb, 'M26.834,14.693c1.816-2.088,2.181-4.938,1.193-7.334l-3.646,4.252l-3.594-0.699L19.596,7.45l3.637-4.242c-2.502-0.63-5.258,0.13-7.066,2.21c-1.907,2.193-2.219,5.229-1.039,7.693L5.624,24.04c-1.011,1.162-0.888,2.924,0.274,3.935c1.162,1.01,2.924,0.888,3.935-0.274l9.493-10.918C21.939,17.625,24.918,16.896,26.834,14.693z'),
          _4chanX: svg(this.textColor.rgb, 'M28.537,9.859c-0.473-0.259-1.127-0.252-1.609-0.523c-0.943-0.534-1.186-1.316-1.226-2.475c-2.059-2.215-5.138-4.176-9.424-4.114c-1.162,0.017-2.256-0.035-3.158,0.435c-0.258,0.354-0.004,0.516,0.288,0.599c-0.29,0.138-0.692,0.147-0.626,0.697c2.72-0.383,7.475,0.624,7.116,2.966c-0.08,0.521-0.735,1.076-1.179,1.563c-1.263,1.382-2.599,2.45-3.761,3.667l0.336,0.336c0.742-0.521,1.446-0.785,2.104-0.785c0.707,0,1.121,0.297,1.276,0.433c0.575-0.618,1.166-1.244,1.839-1.853c0.488-0.444,1.047-1.099,1.566-1.178l0.949-0.101c1.156,0.047,1.937,0.29,2.471,1.232c0.27,0.481,0.262,1.139,0.521,1.613c0.175,0.324,0.937,1.218,1.316,1.228c0.294,0.009,0.603-0.199,0.899-0.49l1.033-1.034c0.291-0.294,0.501-0.6,0.492-0.896C29.754,10.801,28.861,10.035,28.537,9.859zM13.021,15.353l-0.741-0.741c-3.139,2.643-6.52,5.738-9.531,8.589c-0.473,0.443-1.452,1.021-1.506,1.539c-0.083,0.781,0.95,1.465,1.506,2c0.556,0.533,1.212,1.602,1.994,1.51c0.509-0.043,1.095-1.029,1.544-1.502c2.255-2.374,4.664-4.976,6.883-7.509c-0.312-0.371-0.498-0.596-0.498-0.596C12.535,18.451,11.779,17.272,13.021,15.353zM20.64,15.643c-0.366-0.318-1.466,0.143-1.777-0.122c-0.311-0.266,0.171-1.259-0.061-1.455c-0.482-0.406-0.77-0.646-0.77-0.646s-0.862-0.829-2.812,0.928L7.44,6.569C7.045,6.173,7.203,4.746,7.203,4.746L3.517,2.646L2.623,3.541l2.1,3.686c0,0,1.428-0.158,1.824,0.237l7.792,7.793c-1.548,1.831-0.895,2.752-0.895,2.752s0.238,0.288,0.646,0.771c0.196,0.23,1.188-0.249,1.455,0.061c0.264,0.312-0.196,1.41,0.12,1.777c2.666,3.064,6.926,7.736,8.125,7.736c0.892,0,2.021-0.724,2.948-1.64c0.925-0.917,1.639-2.055,1.639-2.947C28.377,22.567,23.704,18.309,20.64,15.643z'),
          _4chanSP: svg(this.textColor.rgb, 'M4.998,12.127v7.896h4.495l6.729,5.526l0.004-18.948l-6.73,5.526H4.998z M18.806,11.219c-0.393-0.389-1.024-0.389-1.415,0.002c-0.39,0.391-0.39,1.024,0.002,1.416v-0.002c0.863,0.864,1.395,2.049,1.395,3.366c0,1.316-0.531,2.497-1.393,3.361c-0.394,0.389-0.394,1.022-0.002,1.415c0.195,0.195,0.451,0.293,0.707,0.293c0.257,0,0.513-0.098,0.708-0.293c1.222-1.22,1.98-2.915,1.979-4.776C20.788,14.136,20.027,12.439,18.806,11.219z M21.101,8.925c-0.393-0.391-1.024-0.391-1.413,0c-0.392,0.391-0.392,1.025,0,1.414c1.45,1.451,2.344,3.447,2.344,5.661c0,2.212-0.894,4.207-2.342,5.659c-0.392,0.39-0.392,1.023,0,1.414c0.195,0.195,0.451,0.293,0.708,0.293c0.256,0,0.512-0.098,0.707-0.293c1.808-1.809,2.929-4.315,2.927-7.073C24.033,13.24,22.912,10.732,21.101,8.925z'),
          search: svg(this.textColor.rgb, 'M29.772,26.433l-7.126-7.126c0.96-1.583,1.523-3.435,1.524-5.421C24.169,8.093,19.478,3.401,13.688,3.399C7.897,3.401,3.204,8.093,3.204,13.885c0,5.789,4.693,10.481,10.484,10.481c1.987,0,3.839-0.563,5.422-1.523l7.128,7.127L29.772,26.433zM7.203,13.885c0.006-3.582,2.903-6.478,6.484-6.486c3.579,0.008,6.478,2.904,6.484,6.486c-0.007,3.58-2.905,6.476-6.484,6.484C10.106,20.361,7.209,17.465,7.203,13.885z'),
          catalog: svg(this.textColor.rgb, 'M25.754,4.626c-0.233-0.161-0.536-0.198-0.802-0.097L12.16,9.409c-0.557,0.213-1.253,0.316-1.968,0.316c-0.997,0.002-2.029-0.202-2.747-0.48C7.188,9.148,6.972,9.04,6.821,8.943c0.056-0.024,0.12-0.05,0.193-0.075L18.648,4.43l1.733,0.654V3.172c0-0.284-0.14-0.554-0.374-0.714c-0.233-0.161-0.538-0.198-0.802-0.097L6.414,7.241c-0.395,0.142-0.732,0.312-1.02,0.564C5.111,8.049,4.868,8.45,4.872,8.896c0,0.012,0.004,0.031,0.004,0.031v17.186c0,0.008-0.003,0.015-0.003,0.021c0,0.006,0.003,0.01,0.003,0.016v0.017h0.002c0.028,0.601,0.371,0.983,0.699,1.255c1.034,0.803,2.769,1.252,4.614,1.274c0.874,0,1.761-0.116,2.583-0.427l12.796-4.881c0.337-0.128,0.558-0.448,0.558-0.809V5.341C26.128,5.057,25.988,4.787,25.754,4.626zM5.672,11.736c0.035,0.086,0.064,0.176,0.069,0.273l0.004,0.054c0.016,0.264,0.13,0.406,0.363,0.611c0.783,0.626,2.382,1.08,4.083,1.093c0.669,0,1.326-0.083,1.931-0.264v1.791c-0.647,0.143-1.301,0.206-1.942,0.206c-1.674-0.026-3.266-0.353-4.509-1.053V11.736zM10.181,24.588c-1.674-0.028-3.266-0.354-4.508-1.055v-2.712c0.035,0.086,0.065,0.176,0.07,0.275l0.002,0.053c0.018,0.267,0.13,0.408,0.364,0.613c0.783,0.625,2.381,1.079,4.083,1.091c0.67,0,1.327-0.082,1.932-0.262v1.789C11.476,24.525,10.821,24.588,10.181,24.588z'),
          announcement: svg(this.textColor.rgb, 'M16,4.938c-7.732,0-14,4.701-14,10.5c0,1.981,0.741,3.833,2.016,5.414L2,25.272l5.613-1.44c2.339,1.316,5.237,2.106,8.387,2.106c7.732,0,14-4.701,14-10.5S23.732,4.938,16,4.938zM16.868,21.375h-1.969v-1.889h1.969V21.375zM16.772,18.094h-1.777l-0.176-8.083h2.113L16.772,18.094z'),
          lastmu: svg(this.textColor.rgb, 'M12.751,8.042v6.041v9.862c-0.677-0.45-1.636-0.736-2.708-0.736c-2.048,0-3.708,1.025-3.708,2.292c0,1.265,1.66,2.291,3.708,2.291s3.708-1.026,3.708-2.291V13.786l10.915-3.24v9.565c-0.678-0.45-1.635-0.736-2.708-0.736c-2.048,0-3.708,1.025-3.708,2.292c0,1.265,1.66,2.291,3.708,2.291s3.708-1.026,3.708-2.291V10.249V4.208L12.751,8.042z', 18, 18)
        };
        if (theme.customCSS) {
          try {
            if (theme.customCSS[0] === "(") {
              theme.customCSS = "\"+".concat(theme.customCSS);
            }
            if (theme.customCSS[theme.customCSS.length - 1] === ")") {
              theme.customCSS += "+\"";
            }
            this.customCSS = eval(SS.trimLineBreaks(new String('"' + theme.customCSS + '"')));
          } catch (_error) {
            e = _error;
            alert("Error evaluating " + this.name + "'s theme.customCSS!\n" + e.message);
            this.customCSS = theme.customCSS;
          }
        } else {
          this.customCSS = "";
        }
      }

      _Class.prototype.preview = function() {
        var div, sTheme;
        sTheme = SS.conf["SFW/NSFW Themes"] && SS.location.nsfw ? SS.conf["NSFW Theme"] : SS.conf["Selected Theme"];
        div = $(["<div ", this.hidden ? "hidden=true " : "", " id=theme" + this.index, this.index === sTheme ? " class=selected>" : ">"].join('')).html(["<div class=reply ", "style='background-color:", this.mainColor.hex, "!important;border:1px solid ", this.brderColor.hex, "!important;color:", this.textColor.hex, "!important'>", "<div class=riceCheck style='background-color:", this.inputColor.hex, "!important;border:1px solid ", this.inputbColor.hex, "!important;box-shadow:rgba(", this.mainColor.shiftRGB(64), ",.3) 0 1px;'></div>", "<span style='color:", this.titleColor.hex, "!important'>", this.name, "</span> ", "<span style='color:", this.nameColor.hex, "!important'>", this.author, "</span>", "<span style='color:", this.sageColor.hex, "!important'> (SAGE)</span>", "<span style='color:", this.tripColor.hex, "!important'>!.pC/AHOKAg</span>", "<time style='color:", this.timeColor.hex, "'> 20XX.01.01 12:00 </time>", "<a href='javascript:;' style='color:", this.linkColor.hex, "!important' ", "onmouseover='@setAttribute(\"style\",\"color:", this.linkHColor.hex, "!important\")' ", "onmouseout='@setAttribute(\"style\",\"color:", this.linkColor.hex, "!important\")'>No.22772469</a>", "<br><blockquote class=postMessage>Post content is right here.</blockquote>", "<p><a title=Edit style='background-color:", this.inputColor.hex, "!important;border:1px solid ", this.inputbColor.hex, "!important;color:", this.textColor.hex, "!important'>Edit</a>", "<a title=Delete style='background-color:", this.inputColor.hex, "!important;border:1px solid ", this.inputbColor.hex, "!important;color:", this.textColor.hex, "!important'>Delete</a></p>", "<h3>SELECTED</h3>", "</div>"].join(''));
        $(div).bind("click", function() {
          var that;
          that = $(this);
          if (that.hasClass("selected")) {
            return;
          }
          that.parent().children(".selected").removeClass("selected");
          return that.addClass("selected");
        });
        $("a[title=Delete]", div).bind("click", function(e) {
          e.stopPropagation();
          return SS.options.deleteTheme(index);
        });
        $("a[title=Edit]", div).bind("click", function(e) {
          e.stopPropagation();
          return SS.options.showTheme(index);
        });
        return div;
      };

      return _Class;

    })(),
    formatFont: function(font) {
      return (font === "sans-serif" || font === "monospace" ? font : "'" + font + "'");
    },
    RGBFromHex: function(hex) {
      var rgb;
      hex = parseInt(hex, 16);
      return rgb = [(hex >> 16) & 0xFF, (hex >> 8) & 0xFF, hex & 0xFF];
    },
    isLight: function(rgb) {
      return (rgb[0] * 0.299 + rgb[1] * 0.587 + rgb[2] * 0.114) > 125;
    },
    trimLineBreaks: function(str) {
      return str.replace(/(\r\n|\r|\n)/gm, "");
    },
    cleanBase64: function(b64) {
      return b64.replace(/^(data:image\/(?:gif|jpe?g|png);base64,)(\r\n|\r|\n)?/gmi, "");
    },
    validBase64: function(b64) {
      return /^(?:data:image\/(?:gif|jpe?g|png);base64,)?(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$/i.test(b64);
    },
    validImageURL: function(img) {
      return /^https?:\/\/.+$/i.test(img);
    },
    typeofBase64: function(b64) {
      switch (b64.substr(0, 8)) {
        case "PD94bWwg":
          return "svg+xml";
        case "R0lGODlh":
          return "gif";
        case "/9j/4AAQ":
        case "/9j/4QAY":
          return "jpeg";
        default:
          return "png";
      }
    },
    getLocation: function(url) {
      var o, obj, pathname;
      if (typeof url === "string") {
        obj = document.createElement("a");
        obj.href = "" + location.protocol + "//" + url;
      } else {
        obj = window.location;
      }
      pathname = obj.pathname.substr(1).split("/");
      return o = {
        sub: obj.hostname.split(".")[0],
        board: pathname[0],
        nsfw: /^(b|d|e|f|gif|h|hr|r|s|t|u|wg|i|ic|r9k|y|pol|soc)$/.test(pathname[0]),
        reply: pathname[1] === "res",
        catalog: pathname[1] === "catalog"
      };
    }
  };

  SS.init();

}).call(this);
