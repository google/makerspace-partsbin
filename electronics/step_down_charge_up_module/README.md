# Step-down-charge-up module

## Status

Estimated current: about 3A
Status: boards fabbed, untested

## Known issues

I2C port is at vbat, which needs a level translator.

## Background

This board's goal is to be a Pi UPS, while also allowing configurable powerup
behavior and battery voltage monitoring (that can be used as a crude estimate
of capacity).  Existing Pi UPS options were inadequate because they either:

* Don't have configurable behavior on power returning
* Don't monitor battery charge at all
* Don't have a failsafe timer after setting the GPIO that should
  software-shutdown
* Weren't open-source enough

By including an attiny, we should see extremely low quiescent current, and
allows for restarting (e.g. periodically, once an hour) or other more complex
behavior in software.

Eventually I hope to shrink this down to a module that can be pre-built and
included on other boards.

## Similar reading

The TP5410 IC does most of what this does, but at lower currents.  Look into
that if you are simply powering a MCU.

