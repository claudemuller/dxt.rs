---
id: index
aliases: []
tags: []
author: lukefilewalker
categories:
  - privacy
date: 2023-11-08T04:00:00+02:00
draft: true
showtoc: false
summary: ???
title: Disabling Telemetry in Firefox
---

- https://www.howtogeek.com/557929/how-to-see-and-disable-the-telemetry-data-firefox-collects-about-you/

browser.newtabpage.activity-stream.feeds.telemetry
browser.newtabpage.activity-stream.telemetry
browser.ping-centre.telemetry
toolkit.telemetry.archive.enabled
toolkit.telemetry.bhrPing.enabled
toolkit.telemetry.enabled
toolkit.telemetry.firstShutdownPing.enabled
toolkit.telemetry.hybridContent.enabled
toolkit.telemetry.newProfilePing.enabled
toolkit.telemetry.reportingpolicy.firstRun
toolkit.telemetry.shutdownPingSender.enabled
toolkit.telemetry.unified
toolkit.telemetry.updatePing.enabled



You need to double-click on each, and that changes the value to false. Next, click on "toolkit.telemetry.server" and empty the string value which should be "https://incoming.telemetry.mozilla.org."

Finally, search again for "experiments" and look for the following four entries and double-click them to change their Value to False:

experiments.activeExperiment
experiments.enabled
experiments.supported
network.allow-experiments
