requirejs.config
  baseUrl: "/assets"

  shim:
    "qunit":
      deps: ["jquery"]
      exports: "QUnit"

  urlArgs: "burst=" +  (new Date()).getTime()

require ["qunit"], (QUnit) ->
  QUnit.start()
