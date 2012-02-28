ifneq ($(KERNELRELEASE),)

obj-m  := tiwl_sdio.o
tiwl_sdio-y := msm_wifi.o

else

KDIR := /lib/modules/`uname -r`/build
modules clean:
	@$(MAKE) -C $(KDIR) M=`pwd` $@

endif
