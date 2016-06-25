; For Drupal 7:
api = 2
core = 7.x

projects[drupal][type] = "core"
projects[drupal][download][type] = "get"
projects[drupal][download][url] = "http://files.aegir.cc/core/drupal-7.44.1.tar.gz"


;
; Themes
;

projects[adminimal_theme][version] = "1.24"
projects[adminimal_admin_menu][version] = "1.7"
projects[bootstrap][version] = "3.5"

;
; Modules
;
projects[block_class][version] = "2.3"
projects[ckeditor][version] = "1.17"
projects[ctools][version] = "1.x-dev"
projects[devel][version] = "1.5"
projects[filefield_paths][version] = "1.0"
projects[filefield_sources][version] = "1.10"
projects[filefield_sources_plupload][version] = "1.1"
projects[honeypot][version] = "1.22"
projects[libraries][version] = "2.3"
projects[panels][version] = "3.5"
projects[pathauto][version] = "1.3"
projects[token][version] = "1.6"
projects[transliteration][version] = "3.2"
projects[variable][version] = "2.5"
projects[views][version] = "3.14"

;
; Libraries
;
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.1/ckeditor_3.6.6.1.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][type] = "library"

libraries[flexslider][download][type] = "get"
libraries[flexslider][download][url] = "https://github.com/woothemes/FlexSlider/archive/2.6.0.zip"
libraries[flexslider][directory_name] = "flexslider"
libraries[flexslider][type] = "library"

libraries[openlayers][download][type] = "get"
libraries[openlayers][download][url] = "http://github.com/openlayers/openlayers/releases/download/release-2.13.1/OpenLayers-2.13.1.zip"
libraries[openlayers][directory_name] = "openlayers"
libraries[openlayers][type] = "library"

libraries[plupload][download][type] = "get"
libraries[plupload][download][url] = "https://github.com/moxiecode/plupload/archive/v1.5.8.zip"
libraries[plupload][directory_name] = "plupload"
libraries[plupload][type] = "library"
