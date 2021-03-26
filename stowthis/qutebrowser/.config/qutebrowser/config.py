config.load_autoconfig()
c.url.default_page = "https://lite.duckduckgo.com"
c.url.start_pages = ["https://lite.duckduckgo.com"]
c.url.searchengines = {"DEFAULT": "https://lite.duckduckgo.com/lite?q={}"}
c.content.javascript.enabled = False

with config.pattern("*://ecosia.org/") as p:
    p.content.javascript.enabled = True

config.bind('m', 'spawn mpv {url}')
