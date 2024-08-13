'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "c420e205d8eac4ccea99913b4a50bfa7",
"index.html": "e47187069360e4813d7abba3dba32998",
"/": "e47187069360e4813d7abba3dba32998",
"main.dart.js": "8dd4c60c5acc2e938520757d8fd98a4f",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"_redirects": "ec5c809ab4b77e96308e512c6a5f8210",
"favicon.png": "fd8a75a368357b96c94a13aec611241c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "4d2a074e955647542596586cbde41715",
"assets/AssetManifest.json": "4723b34770cdb6d52cbcfdc2f4a26e73",
"assets/NOTICES": "e7c5a7e44eb90282268646279feb9666",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin.json": "e4a5805dc79e2261dc6061c35333c5b4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "82a6c110601f0a8ea41cd8723f9ed7fe",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "8d829af8130447be281ebddc29bb3801",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "9dc4e491a2a4ecb2d2d138ca896ca7f0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "42155c2d68bc20003e35f3e17d674078",
"assets/fonts/MaterialIcons-Regular.otf": "b4210d852c0bfa9a4937e983058bbc8a",
"assets/assets/images/savak.png": "97fdb04c0c879dc2f9bb6c29919b2d90",
"assets/assets/images/travel.png": "73dda2112681e5ba60e7c19ff84ea4ba",
"assets/assets/images/projects.png": "3e98d8a21742c5f76ab222ab8d245dac",
"assets/assets/images/oldhomepage.png": "28931b364fe97b0832f255a071bfddd3",
"assets/assets/images/py1.png": "085b8f4b73d3a3a7d21e226f6372e560",
"assets/assets/images/bulls.png": "c467436a8dd8533749b2f1300c0f5911",
"assets/assets/images/cbweb.png": "3f532d3ff76edf5aa18786e0218ec5cb",
"assets/assets/images/py3.png": "79ead95094a56f34340f5cc88817098c",
"assets/assets/images/py2.png": "4ebbc0c62806f6e2d341e4339de1156a",
"assets/assets/images/todo.png": "84cda57d3f25705a15031d4efe254f79",
"assets/assets/images/150px.png": "a851819460bc763f9b7647aa99763b8d",
"assets/assets/images/weather.png": "7daee669d56137d108ab8d7ddb2d8666",
"assets/assets/images/50px.png": "bcd5cf631888f385dacb38eb4af9445d",
"assets/assets/images/bkt.png": "bb43ef5d8abce6d268b40a4c7a8b3461",
"assets/assets/images/logo3.png": "6dd6065924b36b7af37e38b30e71e55f",
"assets/assets/images/logo.png": "3c9b416c637d7152784418ddceb8d68c",
"assets/assets/images/logo2.png": "6dd6065924b36b7af37e38b30e71e55f",
"assets/assets/images/ouo.png": "607c79bff13798f887e7967601101609",
"assets/assets/images/est.png": "c75a295ace53e6545936b15b191d78e0",
"assets/assets/images/koma.png": "f43118286a50b6359a5fd2658d6deb3a",
"assets/assets/images/profile1.png": "fcf9fb7d1b05908ec34a146a2b4bbd04",
"assets/assets/images/countries.png": "8759d74cc964a0865c7500ff8a3d1b76",
"assets/assets/images/savakweb.png": "5f0145b8f3906c48a6976494f7a6db88",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
