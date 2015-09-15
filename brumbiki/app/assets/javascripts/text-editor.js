$(document).ready(function(){
  $('textarea').jqte({bodytext: [
        {body:"Font Size"},
        {body:"Select Color"},
        {body:"Bold",hotkey:"B"},
        {body:"Italic",hotkey:"I"},
        {body:"Underline",hotkey:"U"},
        {body:"Ordered List",hotkey:"."},
        {body:"Unordered List",hotkey:","},
        {body:"Subscript",hotkey:"down arrow"},
        {body:"Superscript",hotkey:"up arrow"},
        {body:"Outdent",hotkey:"left arrow"},
        {body:"Indent",hotkey:"right arrow"},
        {body:"Justify Left"},
        {body:"Justify Center"},
        {body:"Justify Right"},
        {body:"Strike Through",hotkey:"K"},
        {body:"Add Link",hotkey:"L"},
        {body:"Remove Link",hotkey:""},
        {body:"Cleaner Style",hotkey:"Delete"},
        {body:"Horizontal Rule",hotkey:"H"},
        {body:"Source",hotkey:""}
    ]});
});
