#!/bin/bash

# LIBRIVOX
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS__librivox_es__v0.2/best_model_20553.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS__librivox_es__v0.2/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_librivox_es_v1.2/checkpoint_330000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_librivox_es_v1.2/config.json


######
# CDLM
######

# Fonemas
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CDLM_v1.2/checkpoint_210000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CDLM_v1.2/config.json

# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CDLM_v1.2/checkpoint_135000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CDLM_v1.2/config.json

# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora_CDLM/checkpoint_250000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora_CDLM/config.json

# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/CDLM/glowtts-july-12/checkpoint_450000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/CDLM/glowtts-july-12/config.json --vocoder_path /mnt/DATA/VOCES.AI/MODELS/CDLM/multiband-melgan/checkpoint_1050000.pth.tar --vocoder_config_path /mnt/DATA/VOCES.AI/MODELS/CDLM/multiband-melgan/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CDLM_v1.2/checkpoint_465000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CDLM_v1.2/config.json

# 44.1kHz
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS__CarlosDeLaMorena-RTVE-ljspeech_es-es__v1.2_44.1khz/checkpoint_215000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS__CarlosDeLaMorena-RTVE-ljspeech_es-es__v1.2_44.1khz/config.json



# Finetune
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora_CDLM/checkpoint_250000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora_CDLM/config.json


######
# ABR
######

# Fonemas
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR__v0.21/checkpoint_45000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR__v0.21/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.2/checkpoint_50000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.2/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.2/checkpoint_210000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.2/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.2/checkpoint_370000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.2/config.json


# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.2/checkpoint_155000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.2/config.json


# Caracteres
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.1/checkpoint_140000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_v1.1/config.json

# ABR finetune
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR__finetune__v0.2/learning_rate_alto/checkpoint_45000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR__finetune__v0.2/learning_rate_alto/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora_anabelen/checkpoint_195000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora_anabelen/config.json


# ABR finetune Aurora
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_finetune_Aurora/checkpoint_245000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_ABR_finetune_Aurora/config.json


#########
# Blizzard
#########

# Fonemas
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_blizzard_v1.2/checkpoint_275000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_blizzard_v1.2/config.json




#########
# Aurora
#########

# Entusiasmo
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_Aurora_finetune_ABR_entusiasmo_10min/checkpoint_165000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_Aurora_finetune_ABR_entusiasmo_10min/config.json

# Fonemas
# python TTS/server/server.py  --port 5005  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS__aurora-monoceros-ljspeech_es-es__v1.2/best_model_243876.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS__aurora-monoceros-ljspeech_es-es__v1.2/config.json
# python TTS/server/server.py --port 5005  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS__aurora-monoceros-ljspeech_es-es__v1.2/checkpoint_460000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS__aurora-monoceros-ljspeech_es-es__v1.2/config.json

# 48kHz
python TTS/server/server.py  --port 5005  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS__aurora-monoceros-ljspeech_es-es__v1.2_48khz/checkpoint_565000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS__aurora-monoceros-ljspeech_es-es__v1.2_48khz/config.json


# Aurora Finetune
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora-monoceros-ljspeech_es-es__finetune__v0.2/learning_rate_alto/best_model_39015.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora-monoceros-ljspeech_es-es__finetune__v0.2/learning_rate_alto/config.json

# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora-monoceros-ljspeech_es-es__finetune__v0.2/learning_rate_alto/checkpoint_60000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_aurora-monoceros-ljspeech_es-es__finetune__v0.2/learning_rate_alto/config.json

# 10 min
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_10/checkpoint_165000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_10/config.json


# 20 min
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_20/checkpoint_170000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_20/config.json
# 40 min
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_40/checkpoint_180000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_40/config.json
# 60 min
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_60/checkpoint_185000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_60/config.json


# 40 min
# /mnt/DATA/VOCES.AI/MODELS/VITS_40/checkpoint_180000.pth.tar
# /mnt/DATA/VOCES.AI/MODELS/VITS_40/config.json

# 60 min
# /mnt/DATA/VOCES.AI/MODELS/VITS_60/checkpoint_185000.pth.tar
# /mnt/DATA/VOCES.AI/MODELS/VITS_60/config.json

# Full
# python TTS/server/server.py --port 5005 --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_Aurora_finetune_ABR/best_model_547006.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_Aurora_finetune_ABR/config.json



# CDLM FINETUNE
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CarlosDeLaMorena-RTVE-ljspeech_es-es__finetune__v0.2/checkpoint_60000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CarlosDeLaMorena-RTVE-ljspeech_es-es__finetune__v0.2/config.json

######################
# Multispeaker español
######################

## Español internacional

# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS__multispeaker_es__v1.0/checkpoint_40000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS__multispeaker_es__v1.0/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_multispeaker_v1.2/checkpoint_205000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_multispeaker_v1.2/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_multispeaker_v1.2/checkpoint_365000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_multispeaker_v1.2/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_multispeaker_v1.2/checkpoint_405000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_multispeaker_v1.2/config.json

## Español España

# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS__multispeaker_es__v1.2_2/checkpoint_515000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS__multispeaker_es__v1.2_2/config.json

################################
# CMR
################################

# 5min
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_librivox_5min/checkpoint_250000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_librivox_5min/config.json


# 10min
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_librivox_10min/checkpoint_260000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_librivox_10min/config.json
# python TTS/server/server.py --port 5003  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_librivox_10min/best_model_250812.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_librivox_10min/config.json
# python TTS/server/server.py --port 5003  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_librivox_10min/checkpoint_470000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_librivox_10min/config.json

# Entusiasmo
# python TTS/server/server.py --port 5003 --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_entusiasmo_10min/checkpoint_250000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_CMR_entusiasmo_10min/config.json

################################
# NAS
################################

# python TTS/server/server.py --port 5004  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_NAS/checkpoint_385000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_NAS/config.json


################################

# Zaira
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_Zaira/checkpoint_175000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_Zaira/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_Zaira/checkpoint_215000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_Zaira/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_Zaira/checkpoint_235000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_Zaira/config.json


# Sergi
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_Sergi/checkpoint_255000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_Sergi/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_Sergi/checkpoint_280000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_Sergi/config.json
# python TTS/server/server.py  --model_path /mnt/DATA/VOCES.AI/MODELS/VITS_Sergi/checkpoint_295000.pth.tar --config_path /mnt/DATA/VOCES.AI/MODELS/VITS_Sergi/config.json

