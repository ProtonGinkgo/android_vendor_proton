include vendor/proton/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/proton/config/BoardConfigQcom.mk
endif

include vendor/proton/config/BoardConfigSoong.mk
