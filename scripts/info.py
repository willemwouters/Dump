#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Title: Spotify Notification Demo
Author: Stuart Colville, http://muffinresearch.co.uk
License: BSD

"""

import os
import dbus
import gobject
import pynotify
import httplib2
from urllib import quote
from cgi import escape
from xml.dom.minidom import parseString
from hashlib import md5
from dbus.mainloop.glib import DBusGMainLoop
from dbus.exceptions import DBusException
from subprocess import call

LASTFM_API_KEY = os.environ.get("LASTFM_API_KEY")
HTTP_CACHE_DIR = os.path.expanduser("~/.cache/spotify/http/")
IMAGE_CACHE_DIR = os.path.expanduser("~/.cache/spotify/art/")
BASE_URL = ("https://ws.audioscrobbler.com/2.0/?method=album."
            "getinfo&api_key=%s&artist=%%s&album=%%s" % LASTFM_API_KEY)

MISSING = os.path.realpath(os.path.join(os.path.dirname(__file__), "missing.png"))

if not os.path.isdir(HTTP_CACHE_DIR):
    os.makedirs(HTTP_CACHE_DIR)
if not os.path.isdir(IMAGE_CACHE_DIR):
    os.makedirs(IMAGE_CACHE_DIR)


class SpotifyNotifier(object):

    def __init__(self):
        """initialise."""
        bus_loop = DBusGMainLoop(set_as_default=True)
        self.bus = dbus.SessionBus(mainloop=bus_loop)
        loop = gobject.MainLoop()
        self.http = httplib2.Http(HTTP_CACHE_DIR)
        self.notify_id = None
        try: 
            self.props_changed_listener()
        except DBusException, e:
            if not ("org.mpris.MediaPlayer2.spotify "
                    "was not provided") in e.get_dbus_message():
                raise
        self.session_bus = self.bus.get_object("org.freedesktop.DBus", 
                                 "/org/freedesktop/DBus")
        self.session_bus.connect_to_signal("NameOwnerChanged", 
                                        self.handle_name_owner_changed,
                                        arg0="org.mpris.MediaPlayer2.spotify")

        loop.run()

    def props_changed_listener(self):
        """Hook up callback to PropertiesChanged event."""
        self.spotify = self.bus.get_object("org.mpris.MediaPlayer2.spotify", 
                                           "/org/mpris/MediaPlayer2")
        self.spotify.connect_to_signal("PropertiesChanged", 
                                        self.handle_properties_changed)

    def handle_name_owner_changed(self, name, older_owner, new_owner):
        """Introspect the NameOwnerChanged signal to work out if spotify has started."""
        if name == "org.mpris.MediaPlayer2.spotify":
            if new_owner:
                # spotify has been launched - hook it up.
                self.props_changed_listener()
            else:
                self.spotify = None


    def handle_properties_changed(self, interface, changed_props, invalidated_props):
        """Handle track changes."""
        metadata = changed_props.get("Metadata", {})
        if metadata:
            if pynotify.init("Spotify Notifier Demo"):
		bus = dbus.SessionBus()
		player = bus.get_object('com.spotify.qt', '/')
		iface = dbus.Interface(player, 'org.freedesktop.MediaPlayer2')
		info = iface.GetMetadata()
		os.system('notify-send --urgency=normal  "' + str(info['xesam:artist'][0]) + " - " + str(info['xesam:title']) + '"')

if __name__ == "__main__":
    SpotifyNotifier()
