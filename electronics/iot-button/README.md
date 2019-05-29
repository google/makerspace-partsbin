# IoT Button

This is a single-button (with some IOs broken out) that can use deep sleep or
fully turn off in between uses.

Stack-up, inside a 3d printed case...

    Button Cap
    Board (0.8mm)
    Small LiPO

Results in a pretty small overall package that's not quite pocket-sized.

## Build

The build by hand will probably require a microscope (for Q301, part of the
auto-reset circuit) and a very good soldering iron (exposed pads, although there
vias so you can head from the other side).

The USB connector is one that doesn't require slots for mounting, so this board
can be made at osh park.

## Verification

The power-off functionality works, on wakeup you need to assert IO12 as long as
you want to stay powered-up.  The U402 (single pixel) works, although it draws a
*lot* from the 3v3 rail.  The IO4 voltage measurement is expected to only work
as a rough measurement, given results on previous similar circuits.

## USB Power

The overall power budget is an estimate that hasn't been verified yet.  Maximum
stable draw is with an exhausted LiPO + busy ESP32, and the draw at the USB
port shouldn't exceed 500mA.

Capacitance has been minimized that would affect inrush current, and previous
prototypes with similar circuits were acceptable, but this should be measured.

## Known Issues

* v0.3
  * some broken-out IOs are unusable
  * regulator part number is incorrect; it needs one with higher current
  * CH340 variant can't program faster than 115k (perhaps a limitation of the
    xtal-less one)
* v0.2
  * url is wrong, U402 rotated 180
