/*---------------------------------------------------------
  Configuration
---------------------------------------------------------*/

// Set culture to display localized messages
var culture = 'es';

// Set default view mode : 'grid' or 'list'
var defaultViewMode = 'grid';

// Autoload text in GUI - If set to false, set values manually into the HTML file
var autoload = true;

// Display full path - default : false
var showFullPath = false;

// Browse only - default : false
var browseOnly = false;

// Action Confirmation after running - default : true
var showConfirmation = true

// Set this to the server side language you wish to use
var lang = 'ashx'; // options: php, jsp, lasso, asp, cfm, ashx, asp, pl // we are looking for contributors for lasso, python connectors (partially developed)

var am = document.location.pathname.substring(1, document.location.pathname.lastIndexOf('/') + 1);

// Set this to the directory you wish to manage.
var fileRoot = '/' + am + 'Upload/';

//Path to the manage directory on the HTTP server
var relPath = window.location.protocol + '//' + window.location.host;

// Show image previews in grid views?
var showThumbs = true;

//Security policy : take value "ALLOW_ALL" / "DISALLOW_ALL"
var uploadPolicy = "DISALLOW_ALL";
var uploadRestrictions = ['jpg', 'jpeg', 'gif', 'png', 'txt', 'pdf', 'odp', 'ods', 'odt', 'rtf', 'doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'ogv', 'mp4', 'webm', 'ogg', 'mp3', 'wav'];

// Allowed image extensions when type is 'image'
var imagesExt = ['jpg', 'jpeg', 'gif', 'png'];

// Add the name of scripts you want to load in addition to the standard ones
// For example use this to load tiny_mce_popup.js
// extra_js_async specify if request is asynchronous or not (takes value true or false)
var extra_js = [''];
var extra_js_async = true;

// Videos player support
// -----------------------------------------
var showVideoPlayer = true;
var videosExt = ['ogv', 'mp4', 'webm']; // Recognized videos extensions
var videosPlayerWidth = 400; // Videos Player Width
var videosPlayerHeight = 222; // Videos Player Height

// Audios player support
//-----------------------------------------
var showAudioPlayer = true;
var audiosExt = ['ogg', 'mp3', 'wav']; // Recognized audios extensions

// File size limit for HTML5 file size check. In MB.
var fileSizeLimit = 30;

