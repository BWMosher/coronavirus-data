#!/bin/bash

convert -delay 140 -loop 0 history/*.png animation.gif
convert -delay 50 -loop 0 history/*.png faster-animation.gif
convert -delay 10 -loop 0 history/*.png fastest-animation.gif
