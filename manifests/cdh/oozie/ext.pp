# == Class: cloudera::cdh::oozie::ext
#
# This class handles installing the Oozie Web Console.
#
# === Parameters:
#
# [*oozie_ext*]
#   URI of the ext-2.2.zip file required by Oozie in order to enable the WebUI.
#   Default: http://extjs.com/deploy/ext-2.2.zip
#
# === Actions:
#
# Downloads and unzips ext-2.2.zip.
#
# === Requires:
#
#   Define['staging::deploy']
#
# === Sample Usage:
#
#   class { 'cloudera::cdh::oozie::ext': }
#
# === Authors:
#
# Mike Arnold <mike@razorsedge.org>
#
# === Copyright:
#
# Copyright (C) 2013 Mike Arnold, unless otherwise noted.
#
class cloudera::cdh::oozie::ext (
  $source = $cloudera::params::oozie_ext
) inherits cloudera::params {
  staging::deploy { 'ext-2.2.zip':
    source => $source,
    target => '/usr/lib/oozie/libext',
  }
}
