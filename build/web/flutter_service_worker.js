'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "edb0fc05a369835eedb866cbc6d3bcda",
"assets/assets/fonts/Montserrat-Black.ttf": "55e37a35525c63e130e76d588f2f5e8d",
"assets/assets/fonts/Montserrat-BlackItalic.ttf": "39833eed48300f751547827bd709ddc5",
"assets/assets/fonts/Montserrat-Bold.ttf": "d14ad1035ae6da4e5a71eca362a8d696",
"assets/assets/fonts/Montserrat-BoldItalic.ttf": "616c74c716c5c55f333bb8f91af216fb",
"assets/assets/fonts/Montserrat-ExtraBold.ttf": "dc2f156b60f53c591fc0d2b98cbf01bf",
"assets/assets/fonts/Montserrat-ExtraBoldItalic.ttf": "67e72285fcfc55467364a1493004cb9e",
"assets/assets/fonts/Montserrat-ExtraLight.ttf": "d88fa2ca46d05df6986d2eaeafee2225",
"assets/assets/fonts/Montserrat-ExtraLightItalic.ttf": "7cc3c8b2cf1436f14f94e4788f131454",
"assets/assets/fonts/Montserrat-Italic.ttf": "df17124cad6f4767f3bf115f961a14b4",
"assets/assets/fonts/Montserrat-Light.ttf": "a17f43cc60643d965636985afc00a221",
"assets/assets/fonts/Montserrat-LightItalic.ttf": "471a0493b1695aa975532d42ea7c0d84",
"assets/assets/fonts/Montserrat-Medium.ttf": "aca6287f22eef510c1e622c97bb1e1e1",
"assets/assets/fonts/Montserrat-MediumItalic.ttf": "3ebc1a21c12a3051dcdd80e7605eb630",
"assets/assets/fonts/Montserrat-Regular.ttf": "34de1239b12123b85ff1a68b58835a1f",
"assets/assets/fonts/Montserrat-SemiBold.ttf": "7ffeec2b4edb434d393875ffbe633c30",
"assets/assets/fonts/Montserrat-SemiBoldItalic.ttf": "a8802bc3d04c500037fff80756ec3da7",
"assets/assets/fonts/Montserrat-Thin.ttf": "426a4b74bf1d6920508384899bfb695b",
"assets/assets/fonts/Montserrat-ThinItalic.ttf": "13cf2c4a5e253cf43b82a7d3f8485c88",
"assets/assets/icons/c-icon.png": "a6c22ab43582b79982ec5329d5801a45",
"assets/assets/icons/colab-icon.png": "dcdfe44908d75e590b145bcc54f7ead7",
"assets/assets/icons/csharp-icon.png": "e05f6aae7ed12ff069c4e494d2a293a3",
"assets/assets/icons/dart-icon.png": "bee2948ed9e9c7121c900ffc340d0c21",
"assets/assets/icons/flutter-icon.png": "023350440992ed7824e773882888f366",
"assets/assets/icons/git-icon.png": "728ff5a8e44d74cd0f2359ef0a9ec88a",
"assets/assets/icons/github-icon.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/icons/java-icon.png": "74e943d82452f81f6a0bb0b51ac6785d",
"assets/assets/icons/javascript-icon.png": "5b76477abf63e82c7387bf26d232cb77",
"assets/assets/icons/python-icon.png": "0ade24a0ddc3b4df92d1c32c1633c0f6",
"assets/assets/icons/spyder-icon.png": "f2efef37190b4b56bf056029230323f9",
"assets/assets/icons/vscode-icon.png": "11c4184e0e255d6cfce3deb95142bc59",
"assets/assets/svgs/full_logo.svg": "c6ee4b5bbdb32be5570a490f6fad5079",
"assets/assets/svgs/simple_logo.svg": "37373f52f07c5a9c85ed1ae34dd378a3",
"assets/FontManifest.json": "a78b1dd83f1cf01be0dde8f3ac18b125",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "77565fb97de0a70743b0ea7d8ff42717",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/android-icon-144x144.png": "b4da75a356f3dd05a4886a76de6231ad",
"icons/android-icon-192x192.png": "611cc552534c06cf28532096c22bc600",
"icons/android-icon-36x36.png": "b0a3d7ca3e96601a114cc0c6fb82b0f2",
"icons/android-icon-48x48.png": "53cd05cebc8c25fa62084c18b0b6085c",
"icons/android-icon-72x72.png": "88a9da896e3922709fa73db3a488972c",
"icons/android-icon-96x96.png": "c2d240ecafccb8035b2bf9a042e36338",
"icons/apple-icon-114x114.png": "ec94f4da83c9f9382d6e8bc28e400aec",
"icons/apple-icon-120x120.png": "63dc9952555078b7f25f21f144bc761c",
"icons/apple-icon-144x144.png": "b4da75a356f3dd05a4886a76de6231ad",
"icons/apple-icon-152x152.png": "cdcb8ed2b5c1999b54c4c9fc259db003",
"icons/apple-icon-180x180.png": "9a01f825915c6c664dc34f48b364d498",
"icons/apple-icon-57x57.png": "a3653ecb3b616523ae4c0bb2107a68cd",
"icons/apple-icon-60x60.png": "027f9298b38e9fe3c50c3235badef5a6",
"icons/apple-icon-72x72.png": "88a9da896e3922709fa73db3a488972c",
"icons/apple-icon-76x76.png": "357c0316f815c3a318a6a08b3c76bac3",
"icons/apple-icon-precomposed.png": "88fb073bc3fee4017c219e609b2b63dc",
"icons/apple-icon.png": "88fb073bc3fee4017c219e609b2b63dc",
"icons/browserconfig.xml": "97775b1fd3b6e6c13fc719c2c7dd0ffe",
"icons/favicon-16x16.png": "da7bdc49e2122237e7742a9c3c122d1f",
"icons/favicon-32x32.png": "4c9f88b2369040e68cb80050a3b80662",
"icons/favicon-96x96.png": "c2d240ecafccb8035b2bf9a042e36338",
"icons/favicon.ico": "78eef9ccd313f35b30a30a6e576e540c",
"icons/manifest.json": "e50e6a1c9ed6452635d3211f39501e0d",
"icons/ms-icon-144x144.png": "b4da75a356f3dd05a4886a76de6231ad",
"icons/ms-icon-150x150.png": "193a6eb9b5303d805bce79a8fec4714f",
"icons/ms-icon-310x310.png": "14e9a4ad7f7d74bef959b4542d44821d",
"icons/ms-icon-70x70.png": "f9baff69067640fb964282572c44d724",
"index.html": "bf238eec173940a765040656663d1cdb",
"/": "bf238eec173940a765040656663d1cdb",
"main.dart.js": "947ffad5160e9fbf4545e8a06282f330",
"manifest.json": "efa9d48a75d5efe840d86cfa6099ec75",
"version.json": "dde1818fa44f8d331f75f324e1c43687"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
