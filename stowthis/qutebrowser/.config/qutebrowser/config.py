config.load_autoconfig()
c.url.default_page = "https://ecosia.org"
c.url.start_pages = ["https://ecosia.org"]
c.url.searchengines = {"DEFAULT": "https://ecosia.org/search?q={}"}
c.content.javascript.enabled = False

with config.pattern("*://ecosia.org/") as p:
    p.content.javascript.enabled = True

config.bind('m', 'spawn mpv {url}')
