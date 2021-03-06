#!/bin/bash

cat <<"EOF"
 ____                        _                  ____  _                  _          _           _
|  _ \  _   _  _ __   _ __  (_) _ __    __ _   / ___|| |__    ___   ___ | | __ ___ | |_  _   _ | |  ___
| |_) || | | || '_ \ | '_ \ | || '_ \  / _` | | |    | '_ \  / _ \ / __|| |/ // __|| __|| | | || | / _ \
|  _ < | |_| || | | || | | || || | | || (_| | | |___ | | | ||  __/| (__ |   < \__ \| |_ | |_| || ||  __/  _  _  _
|_| \_\ \__,_||_| |_||_| |_||_||_| |_| \__, |  \____||_| |_| \___| \___||_|\_\|___/ \__| \__, ||_| \___| (_)(_)(_)
                                       |___/                                             |___/

EOF

mvn clean checkstyle:check

rc=$?

if [[ $rc == 0 ]]; then
  cat <<"EOF"
  ____  _                  _          _           _         ____
 / ___|| |__    ___   ___ | | __ ___ | |_  _   _ | |  ___  / ___|  _   _   ___   ___   ___  ___  ___
| |    | '_ \  / _ \ / __|| |/ // __|| __|| | | || | / _ \ \___ \ | | | | / __| / __| / _ \/ __|/ __|
| |___ | | | ||  __/| (__ |   < \__ \| |_ | |_| || ||  __/  ___) || |_| || (__ | (__ |  __/\__ \\__ \ _
 \____||_| |_| \___| \___||_|\_\|___/ \__| \__, ||_| \___| |____/  \__,_| \___| \___| \___||___/|___/(_)
                                           |___/

EOF
  exit $rc
else
  cat <<"EOF"
  ____  _                  _          _           _         _____         _  _            _
 / ___|| |__    ___   ___ | | __ ___ | |_  _   _ | |  ___  |  ___|  __ _ (_)| |  ___   __| |
| |    | '_ \  / _ \ / __|| |/ // __|| __|| | | || | / _ \ | |_    / _` || || | / _ \ / _` |
| |___ | | | ||  __/| (__ |   < \__ \| |_ | |_| || ||  __/ |  _|  | (_| || || ||  __/| (_| | _
 \____||_| |_| \___| \___||_|\_\|___/ \__| \__, ||_| \___| |_|     \__,_||_||_| \___| \__,_|(_)
                                           |___/

EOF
  exit $rc
fi
