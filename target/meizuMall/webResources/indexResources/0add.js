var require, define; (function(c) {
    if (require) {
        return
    }
    var h = document.getElementsByTagName("head")[0],
        d = {},
        g = {},
        i = {},
        j = {},
        e = {},
        f = {};
    function b(m, k) {
        if (m in j) {
            return
        }
        j[m] = true;
        var l = document.createElement("script");
        if (k) {
            var o = setTimeout(k, require.timeout);
            l.onerror = function() {
                clearTimeout(o);
                k()
            };
            function n() {
                clearTimeout(o)
            }
            if ("onload" in l) {
                l.onload = n
            } else {
                l.onreadystatechange = function() {
                    if (this.readyState == "loaded" || this.readyState == "complete") {
                        n()
                    }
                }
            }
        }
        l.type = "text/javascript";
        l.src = m;
        h.appendChild(l);
        return l
    }
    function a(q, p, l) {
        var k = d[q] || (d[q] = []);
        k.push(p);
        var o = e[q] || e[q + ".js"] || {};
        var n = o.pkg;
        var m;
        if (n) {
            m = f[n].url
        } else {
            m = o.url || q
        }
        b(m, l &&
            function() {
                l(q)
            })
    }
    define = function(p, l) {
        p = p.replace(/.js$/i, "");
        g[p] = l;
        var k = d[p];
        if (k) {
            for (var m = 0,
                     o = k.length; m < o; m++) {
                k[m]()
            }
            delete d[p]
        }
    };
    require = function(n) {
        if (n && n.splice) {
            return require.async.apply(this, arguments)
        }
        n = require.alias(n);
        var m = i[n];
        if (m) {
            return m.exports
        }
        var k = g[n];
        if (!k) {
            throw "[ModJS] Cannot find module "
        }
        m = i[n] = {
            exports: {}
        };
        var l = (typeof k == "function") ? k.apply(m, [require, m.exports, m]) : k;
        if (l) {
            m.exports = l
        }
        return m.exports
    };
    require.async = function(p, o, k) {
        if (typeof p == "string") {
            p = [p]
        }
        var n = {};
        var q = 0;
        function m(r) {
            for (var s = 0,
                     v = r.length; s < v; s++) {
                var t = require.alias(r[s]);
                if (t in g) {
                    var u = e[t] || e[t + ".js"];
                    if (u && "deps" in u) {
                        m(u.deps)
                    }
                    continue
                }
                if (t in n) {
                    continue
                }
                n[t] = true;
                q++;
                a(t, l, k);
                var u = e[t] || e[t + ".js"];
                if (u && "deps" in u) {
                    m(u.deps)
                }
            }
        }
        function l() {
            if (0 == q--) {
                var r = [];
                for (var s = 0,
                         t = p.length; s < t; s++) {
                    r[s] = require(p[s])
                }
                o && o.apply(c, r)
            }
        }
        m(p);
        l()
    };
    require.resourceMap = function(n) {
        var l, m;
        m = n.res;
        for (l in m) {
            if (m.hasOwnProperty(l)) {
                e[l] = m[l]
            }
        }
        m = n.pkg;
        for (l in m) {
            if (m.hasOwnProperty(l)) {
                f[l] = m[l]
            }
        }
    };
    require.loadJs = function(k) {
        b(k)
    };
    require.loadCss = function(k) {
        if (k.content) {
            var l = document.createElement("style");
            l.type = "text/css";
            if (l.styleSheet) {
                l.styleSheet.cssText = k.content
            } else {
                l.innerHTML = k.content
            }
            h.appendChild(l)
        } else {
            if (k.url) {
                var m = document.createElement("link");
                m.href = k.url;
                m.rel = "stylesheet";
                m.type = "text/css";
                h.appendChild(m)
            }
        }
    };
    require.alias = function(k) {
        return k.replace(/.js$/i, "")
    };
    require.timeout = 5000
})(this);
