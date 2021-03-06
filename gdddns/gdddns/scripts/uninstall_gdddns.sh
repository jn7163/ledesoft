#!/bin/sh

export KSROOT=/koolshare
source $KSROOT/scripts/base.sh

rm /etc/rc.d/S98gdddns.sh > /dev/null 2>&1
rm $KSROOT/bin/gdddns_curl > /dev/null 2>&1
rm $KSROOT/webs/res/icon-gdddns.png > /dev/null 2>&1
rm $KSROOT/webs/Module_gdddns.asp > /dev/null 2>&1
rm $KSROOT/scripts/gdddns_config.sh > /dev/null 2>&1
rm $KSROOT/scripts/gdddns_update.sh > /dev/null 2>&1
rm $KSROOT/scripts/uninstall_gdddns.sh > /dev/null 2>&1
rm $KSROOT/init.d/S98gddns.sh > /dev/null 2>&1

cru d aliddns
dbus remove softcenter_module_gdddns_install
dbus remove softcenter_module_gdddns_version
dbus remove softcenter_module_gdddns_description