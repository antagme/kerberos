#!/bin/bash

/usr/bin/supervisord -c "/etc/supervisord.d/supervisord.ini" & /bin/bash
