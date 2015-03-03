###
  Create a new YUI instance and load the node
  and event modules.

  HELPFUL LINKS
  =============

  http://yuilibrary.com/yui/docs/api/
  http://www.jsrosettastone.com/
###

YUI().use 'node', 'event', 'squarespace-util', (Y) ->
  Y.on 'domready', ->

    ###
      ImageLoader will refresh images on windowresize
      and any change in the Style Editor.
    ###

    ###
      This function loads and refreshes images
      using Squarespace's responsive ImageLoader.
    ###

    loadImages = ->
      Y.all('img[data-src]').each (img) ->
        ImageLoader.load img
        return
      return

    Y.one(window).on 'resize', loadImages, this
    Y.Global and Y.Global.on('tweak:change', loadImages, this)

    ###
      Author's custom code goes here.
      ===============================
    ###

    return
  return