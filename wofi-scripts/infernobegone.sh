#!/usr/bin/bash
/usr/bin/ryzenadj --stapm-limit=17500 --fast-limit=30000 --slow-limit=17500 --tctl-temp=60 --vrm-current 30000
/opt/bin/nvidia-smi -pl 45
