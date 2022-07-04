# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'trix'
pin '@rails/actiontext', to: 'actiontext.js'
pin 'local-time' # @2.1.0
pin "ninja-keys", to: "https://ga.jspm.io/npm:ninja-keys@1.2.2/dist/ninja-keys.js"
pin "@lit/reactive-element", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/reactive-element.js"
pin "@lit/reactive-element/decorators/custom-element.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/custom-element.js"
pin "@lit/reactive-element/decorators/event-options.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/event-options.js"
pin "@lit/reactive-element/decorators/property.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/property.js"
pin "@lit/reactive-element/decorators/query-all.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/query-all.js"
pin "@lit/reactive-element/decorators/query-assigned-elements.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/query-assigned-elements.js"
pin "@lit/reactive-element/decorators/query-assigned-nodes.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/query-assigned-nodes.js"
pin "@lit/reactive-element/decorators/query-async.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/query-async.js"
pin "@lit/reactive-element/decorators/query.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/query.js"
pin "@lit/reactive-element/decorators/state.js", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.3.3/decorators/state.js"
pin "@material/mwc-icon", to: "https://ga.jspm.io/npm:@material/mwc-icon@0.25.3/mwc-icon.js"
pin "hotkeys-js", to: "https://ga.jspm.io/npm:hotkeys-js@3.8.7/dist/hotkeys.esm.js"
pin "lit", to: "https://ga.jspm.io/npm:lit@2.2.6/index.js"
pin "lit-element/lit-element.js", to: "https://ga.jspm.io/npm:lit-element@3.2.1/lit-element.js"
pin "lit-html", to: "https://ga.jspm.io/npm:lit-html@2.2.6/lit-html.js"
pin "lit-html/directives/class-map.js", to: "https://ga.jspm.io/npm:lit-html@2.2.6/directives/class-map.js"
pin "lit-html/directives/join.js", to: "https://ga.jspm.io/npm:lit-html@2.2.6/directives/join.js"
pin "lit-html/directives/live.js", to: "https://ga.jspm.io/npm:lit-html@2.2.6/directives/live.js"
pin "lit-html/directives/ref.js", to: "https://ga.jspm.io/npm:lit-html@2.2.6/directives/ref.js"
pin "lit-html/directives/repeat.js", to: "https://ga.jspm.io/npm:lit-html@2.2.6/directives/repeat.js"
pin "lit-html/directives/unsafe-html.js", to: "https://ga.jspm.io/npm:lit-html@2.2.6/directives/unsafe-html.js"
pin "lit/decorators.js", to: "https://ga.jspm.io/npm:lit@2.2.6/decorators.js"
pin "lit/directives/class-map.js", to: "https://ga.jspm.io/npm:lit@2.2.6/directives/class-map.js"
pin "lit/directives/join.js", to: "https://ga.jspm.io/npm:lit@2.2.6/directives/join.js"
pin "lit/directives/live.js", to: "https://ga.jspm.io/npm:lit@2.2.6/directives/live.js"
pin "lit/directives/ref.js", to: "https://ga.jspm.io/npm:lit@2.2.6/directives/ref.js"
pin "lit/directives/repeat.js", to: "https://ga.jspm.io/npm:lit@2.2.6/directives/repeat.js"
pin "lit/directives/unsafe-html.js", to: "https://ga.jspm.io/npm:lit@2.2.6/directives/unsafe-html.js"
pin "tslib", to: "https://ga.jspm.io/npm:tslib@2.4.0/tslib.es6.js"
