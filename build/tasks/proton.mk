BUILD_DATE := $(shell date +%Y%m%d-%H%M)
PROTON_TARGET_PACKAGE := $(PRODUCT_OUT)/ProtonAOSP-$(CUSTOM_ROM_VERSION)-$(PRODUCT_DEVICE)-$(BUILD_DATE).zip

.PHONY: proton
proton: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(PROTON_TARGET_PACKAGE)
	@echo "Package Complete: $(PROTON_TARGET_PACKAGE)" >&2
