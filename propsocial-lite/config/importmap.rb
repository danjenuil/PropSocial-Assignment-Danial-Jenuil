# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.1.3/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.5/lib/index.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "simple-datatables", to: "https://ga.jspm.io/npm:simple-datatables@3.2.0/src/index.js"
pin "dayjs", to: "https://ga.jspm.io/npm:dayjs@1.11.3/dayjs.min.js"
pin "dayjs/plugin/customParseFormat", to: "https://ga.jspm.io/npm:dayjs@1.11.3/plugin/customParseFormat.js"
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "swiper", to: "https://ga.jspm.io/npm:swiper@8.3.1/swiper.esm.js"
pin "dom7", to: "https://ga.jspm.io/npm:dom7@4.0.4/dom7.esm.js"
pin "ssr-window", to: "https://ga.jspm.io/npm:ssr-window@4.0.2/ssr-window.esm.js"
pin "amortize", to: "https://ga.jspm.io/npm:amortize@1.1.0/index.js"
