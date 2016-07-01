
; For Drupal 7:
api = 2
core = 7.x

projects[drupal][type] = "core"
projects[drupal][download][type] = "get"
projects[drupal][download][url] = "http://files.aegir.cc/core/drupal-7.31.1.tar.gz"
projects[drupal][patch][] = "https://www.drupal.org/files/issues/SA-CORE-2014-005-D7.patch"