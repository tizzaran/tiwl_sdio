ifneq ($(KERNELRELEASE),)

obj-m  := tiwl_sdio.o
tiwl_sdio-y := msm_wifi.o

else

KDIR := /lib/modules/`uname -r`/build
modules:
	@$(MAKE) -C $(KDIR) M=`pwd` $@

endif
