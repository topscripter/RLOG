local HttpService = game:GetService("HttpService");

local Request = request or http_request or (http and http.request) or syn.request
local Body = HttpService:JSONDecode(Request({Url = "http://httpbin.org/get", Method = "GET"}).Body)
local Agent = Body.headers["User-Agent"]
local Fingerprint = Body.headers["Sw-Fingerprint"] or Body.headers["Syn-Fingerprint"] or Body.headers["Flux-Fingerprint"] or Body.headers["Electron-Fingerprint"] or Body.headers["Krnl-Fingerprint"] or Body.headers["Sentinel-Fingerprint"] or Body.headers["Flux-Fingerprint"] or Body.headers["Oxy-Fingerprint"] or Body.headers["Evon-Fingerprint"] or Body.headers["Kiwi-Fingerprint"] or Body.headers["Wrd-Fingerprint"] or Body.headers["Fingerprint"]
