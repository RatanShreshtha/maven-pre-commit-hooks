#!/bin/bash

cat <<"EOF"

 ____                        _                  ____                           _  _
|  _ \  _   _  _ __   _ __  (_) _ __    __ _   / ___|  ___   _ __ ___   _ __  (_)| |  ___
| |_) || | | || '_ \ | '_ \ | || '_ \  / _` | | |     / _ \ | '_ ` _ \ | '_ \ | || | / _ \
|  _ < | |_| || | | || | | || || | | || (_| | | |___ | (_) || | | | | || |_) || || ||  __/  _  _  _
|_| \_\ \__,_||_| |_||_| |_||_||_| |_| \__, |  \____| \___/ |_| |_| |_|| .__/ |_||_| \___| (_)(_)(_)
                                       |___/                           |_|

EOF

mvn clean compile

rc=$?

if [[ $rc == 0 ]]; then
  cat <<"EOF"
  ____                           _  _         ____
 / ___|  ___   _ __ ___   _ __  (_)| |  ___  / ___|  _   _   ___   ___   ___  ___  ___
| |     / _ \ | '_ ` _ \ | '_ \ | || | / _ \ \___ \ | | | | / __| / __| / _ \/ __|/ __|
| |___ | (_) || | | | | || |_) || || ||  __/  ___) || |_| || (__ | (__ |  __/\__ \\__ \ _
 \____| \___/ |_| |_| |_|| .__/ |_||_| \___| |____/  \__,_| \___| \___| \___||___/|___/(_)
                         |_|

EOF
  exit $rc
else
  cat <<"EOF"
  ____                           _  _         _____         _  _            _
 / ___|  ___   _ __ ___   _ __  (_)| |  ___  |  ___|  __ _ (_)| |  ___   __| |
| |     / _ \ | '_ ` _ \ | '_ \ | || | / _ \ | |_    / _` || || | / _ \ / _` |
| |___ | (_) || | | | | || |_) || || ||  __/ |  _|  | (_| || || ||  __/| (_| | _
 \____| \___/ |_| |_| |_|| .__/ |_||_| \___| |_|     \__,_||_||_| \___| \__,_|(_)
                         |_|

EOF
  exit $rc
fi
