'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "e238e1e59dfdc93887445f552f3617b7",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "5010ba70c9806f0c376692d388cbc700",
"/": "5010ba70c9806f0c376692d388cbc700",
"main.dart.js": "82812d9f870e75c4c55652a1ee6a2ebd",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"favicon.png": "1e475c0394696e810b95655369af6c84",
"icons/Icon-192.png": "1e475c0394696e810b95655369af6c84",
"icons/Icon-maskable-192.png": "8f64a51f97f5bdf20ade917566d0943a",
"icons/Icon-maskable-512.png": "b0ffc892be391a05d9e10af48ccf8a97",
"icons/Icon-512.png": "0c78a51f56fb40f1e9486696815b1d63",
"manifest.json": "e7b23422081696c52f5687976ce113cc",
"assets/AssetManifest.json": "84587b473906a03a419bf9cf8ef72e03",
"assets/NOTICES": "759e1f78fb79c566d61b886d7830aa72",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "cb88c1f57f55053f06576826f2eea50f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "0da3412445647e33c57262ef88c8ba1a",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/assets/jira_logo.svg": "66d49bde516b50fc82257a9be411d1b2",
"assets/assets/figma_logo.svg": "09d9770bcc58cf7df961f7f5dc323b51",
"assets/assets/you_placeholder.png": "b342862cded554fd1a23225191d46c81",
"assets/assets/github_logo.svg": "c7f4f8cd4e1d67c295179575eab41e59",
"assets/assets/xcode_logo.svg": "7333bec1d029d4a1f504aa9725d18ca1",
"assets/assets/vs_code_logo.svg": "22a4f46ec506bfc4d5d318b02198921c",
"assets/assets/github.svg": "75245d3ecd6275ffbe955902f0ce2eaf",
"assets/assets/web_app_logo.svg": "7525798455fb998e755dc9b721b796e4",
"assets/assets/skills_lottie.json": "188fa29840f968c9bd40ed7f50cc6055",
"assets/assets/android_studio_logo.svg": "f45824a5ae74092cba63532b26c45518",
"assets/assets/instagram.svg": "e877317d8af90c12137d35b3ee58d0cf",
"assets/assets/apple_logo.svg": "6be4fb582341ec0c5a75b707161246f1",
"assets/assets/website.svg": "547b77cb9af16dcd677a3e35954cc5ef",
"assets/assets/trello_logo.svg": "0c55235e96f8ebe925d8cc24f333538c",
"assets/assets/flutter_logo.svg": "f2e3fb32c6ba7935f07f050f1782afd6",
"assets/assets/email.svg": "04d093120a3c0c64d02f910e69e29044",
"assets/assets/app_icons/dignity_transportation.webp": "1e8717e117e5680f6617c6ff46177fd8",
"assets/assets/app_icons/forecaddie.webp": "5b812ad95cb46d5e3772921328101610",
"assets/assets/app_icons/plateaway.png": "bc8a4f65fb9bf959d90c989ba4119c1b",
"assets/assets/app_icons/instrucko.webp": "2c4d6af94abb5112682367c42a20f46e",
"assets/assets/app_icons/foretees.webp": "b0e9337828fe31108cd9cd5970df735d",
"assets/assets/app_icons/find_a_pro.webp": "2187347fae48075e961afdc233e48b52",
"assets/assets/send.svg": "1f6048f799346c0aa535ffc58e3f36ee",
"assets/assets/app_store.svg": "09f05055c35f7b7e080df05f43947f65",
"assets/assets/whatsApp.svg": "3b6c99cc2444f3efc06be8a56e7ef315",
"assets/assets/android_logo.svg": "ce7300bdf8dcfc0c1bfaa453021e5349",
"assets/assets/background_animation.json": "84ff5a36485fab211c6265eb36858196",
"assets/assets/adobe_xd_logo.svg": "940cad71d6f2ee228975efa29e9eda77",
"assets/assets/postman_logo.svg": "2d8a14354da83b38092418e214ba8c5e",
"assets/assets/play_store.svg": "7cdfff25b8e3388fdac17bb1d6ccdfb9",
"assets/assets/linkedIn.svg": "28e2ef01a93e5e50042781dbd5548c04",
"assets/assets/firebase_logo.svg": "36353394f2fe8848562fb0f4943d089d",
"assets/assets/cursor_logo.svg": "083e9948ca718b51fcb310cc1d6d2e17",
"assets/assets/bitbucket_logo.svg": "e1e24f89acde06f7d1ccd158ea169e6a",
"assets/assets/display_picture.JPG": "0e3291b410b02da89e80facef6eba564",
"assets/assets/dart_logo.svg": "98a80c34cfe3631fbf0fbb82345ca1e0",
"assets/assets/hello_animation.json": "0780096a9ff1ff3132160d002a6cefaf",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
