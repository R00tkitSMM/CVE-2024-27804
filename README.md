# CVE-2024-27804

```bash
  ./build.sh
  ./panic.sh
```
```bash
panic(cpu 4 caller 0xfffffe0026851cdc): Unaligned kernel data abort. at pc 0xfffffe0026aed514, lr 0xfffffe0026aed5d8 (saved state: 0xfffffe3a396e3200)
	  x0:  0x000000000000000e x1:  0xfffffe1002bdc01b  x2:  0x0000000000000000  x3:  0xfffffe3a396e3444
	  x4:  0xfffffe3a396e344c x5:  0x000000000002d1f4  x6:  0x0000000000000000  x7:  0xffffffffffffffff
	  x8:  0x0000000000000004 x9:  0xfffffe1002bdc01f  x10: 0x0000000000000000  x11: 0x0000000000000002
	  x12: 0x0000000000000004 x13: 0x0000000000000000  x14: 0x0000000000000000  x15: 0x0000000000000000
	  x16: 0xfffffe0026aeda90 x17: 0xfffffe0026aed9fc  x18: 0x0000000000000000  x19: 0xfffffe1b40e90000
	  x20: 0x0000000000000000 x21: 0x0000000000000000  x22: 0xfffffe1002bdc000  x23: 0x0000000000000001
	  x24: 0x0000000000000000 x25: 0xfffffe1002bdc024  x26: 0x000000000000001b  x27: 0x00000000000008b0
	  x28: 0x000000000000001b fp:  0xfffffe3a396e3610  lr:  0xfffffe0026aed5d8  sp:  0xfffffe3a396e3550
	  pc:  0xfffffe0026aed514 cpsr: 0x60401208         esr: 0x96000021          far: 0xfffffe1002bdc01b

Debugger message: panic
Memory ID: 0x6
OS release type: User
OS version: 23C71
Kernel version: Darwin Kernel Version 23.2.0: Wed Nov 15 21:53:34 PST 2023; root:xnu-10002.61.3~2/RELEASE_ARM64_T8103
Fileset Kernelcache UUID: 6DAC2CF8E68E8F436296A697E29AAD44
Kernel UUID: E245D804-1FA3-31E2-90BC-B4DF75B2129E
Boot session UUID: 52885412-0864-4DFF-8E9E-36C3C7BC8B88
iBoot version: iBoot-10151.61.4
secure boot?: YES
roots installed: 0
Paniclog version: 14
KernelCache slide: 0x000000001dac4000
KernelCache base:  0xfffffe0024ac8000
Kernel slide:      0x000000001dacc000
Kernel text base:  0xfffffe0024ad0000
Kernel text exec slide: 0x000000001efd8000
Kernel text exec base:  0xfffffe0025fdc000
mach_absolute_time: 0x1c4f4c5a5
Epoch Time:        sec       usec
  Boot    : 0x65a56518 0x000b7c0f
  Sleep   : 0x00000000 0x00000000
  Wake    : 0x00000000 0x00000000
  Calendar: 0x65a5664f 0x00072ae4

Zone info:
  Zone map: 0xfffffe100f2dc000 - 0xfffffe300f2dc000
  . VM    : 0xfffffe100f2dc000 - 0xfffffe14dbfa8000
  . RO    : 0xfffffe14dbfa8000 - 0xfffffe1675940000
  . GEN0  : 0xfffffe1675940000 - 0xfffffe1b4260c000
  . GEN1  : 0xfffffe1b4260c000 - 0xfffffe200f2d8000
  . GEN2  : 0xfffffe200f2d8000 - 0xfffffe24dbfa4000
  . GEN3  : 0xfffffe24dbfa4000 - 0xfffffe29a8c70000
  . DATA  : 0xfffffe29a8c70000 - 0xfffffe300f2dc000
  Metadata: 0xfffffe3a1c3ac000 - 0xfffffe3a243ac000
  Bitmaps : 0xfffffe3a243ac000 - 0xfffffe3a27194000
  Extra   : 0 - 0

CORE 0 recently retired instr at 0xfffffe00261886e4
CORE 1 recently retired instr at 0xfffffe00261886e4
CORE 2 recently retired instr at 0xfffffe00261886e4
CORE 3 recently retired instr at 0xfffffe00261886e4
CORE 4 recently retired instr at 0xfffffe0026186ee8
CORE 5 recently retired instr at 0xfffffe00261886e4
CORE 6 recently retired instr at 0xfffffe00261886e4
CORE 7 recently retired instr at 0xfffffe00261886e4
TPIDRx_ELy = {1: 0xfffffe1b448bd030  0: 0x0000000000001004  0ro: 0x000000010061c320 }
CORE 0 PVH locks held: None
CORE 1 PVH locks held: None
CORE 2 PVH locks held: None
CORE 3 PVH locks held: None
CORE 4 PVH locks held: None
CORE 5 PVH locks held: None
CORE 6 PVH locks held: None
CORE 7 PVH locks held: None
CORE 0: PC=0xfffffe002606ff30, LR=0xfffffe002606ff30, FP=0xfffffe3a39a13ef0
CORE 1: PC=0xfffffe002606ff30, LR=0xfffffe002606ff30, FP=0xfffffe3a392b7ef0
CORE 2: PC=0xfffffe002606ff30, LR=0xfffffe002606ff30, FP=0xfffffe3a37df7ef0
CORE 3: PC=0xfffffe002606ff30, LR=0xfffffe002606ff30, FP=0xfffffe3a37c8fef0
CORE 4 is the one that panicked. Check the full backtrace for details.
CORE 5: PC=0xfffffe002606ff34, LR=0xfffffe002606ff30, FP=0xfffffe3a39033ef0
CORE 6: PC=0xfffffe002606ff34, LR=0xfffffe002606ff30, FP=0xfffffe3a39893ef0
CORE 7: PC=0xfffffe002606ff34, LR=0xfffffe002606ff30, FP=0xfffffe3a396a7ef0
Compressor Info: 3% of compressed pages limit (OK) and 2% of segments limit (OK) with 0 swapfiles and OK swap space
Panicked task 0xfffffe1b46695e18: 14298 pages, 13 threads: pid 2352: vtdecode
Panicked thread: 0xfffffe1b448bd030, backtrace: 0xfffffe3a396e2930, tid: 184820
		  lr: 0xfffffe0026035568  fp: 0xfffffe3a396e29c0
		  lr: 0xfffffe002617fa24  fp: 0xfffffe3a396e2a30
		  lr: 0xfffffe002617de84  fp: 0xfffffe3a396e2b20
		  lr: 0xfffffe0025fe3b68  fp: 0xfffffe3a396e2b30
		  lr: 0xfffffe0026034e48  fp: 0xfffffe3a396e2ee0
		  lr: 0xfffffe002684726c  fp: 0xfffffe3a396e2f00
		  lr: 0xfffffe0026851cdc  fp: 0xfffffe3a396e3080
		  lr: 0xfffffe002617f890  fp: 0xfffffe3a396e30f0
		  lr: 0xfffffe002617e138  fp: 0xfffffe3a396e31e0
		  lr: 0xfffffe0025fe3b68  fp: 0xfffffe3a396e31f0
		  lr: 0xfffffe0026aed5d8  fp: 0xfffffe3a396e3610
		  lr: 0xfffffe0026ad6fe4  fp: 0xfffffe3a396e3720
		  lr: 0xfffffe0026ad66b4  fp: 0xfffffe3a396e3790
		  lr: 0xfffffe0026ad4e48  fp: 0xfffffe3a396e37d0
		  lr: 0xfffffe00267a0168  fp: 0xfffffe3a396e3810
		  lr: 0xfffffe00267a0484  fp: 0xfffffe3a396e39a0
		  lr: 0xfffffe002614b294  fp: 0xfffffe3a396e3ac0
		  lr: 0xfffffe002603bce8  fp: 0xfffffe3a396e3b60
		  lr: 0xfffffe002600edd4  fp: 0xfffffe3a396e3bc0
		  lr: 0xfffffe00260273f8  fp: 0xfffffe3a396e3c60
		  lr: 0xfffffe0026027864  fp: 0xfffffe3a396e3d50
		  lr: 0xfffffe0026173698  fp: 0xfffffe3a396e3e20
		  lr: 0xfffffe002617e18c  fp: 0xfffffe3a396e3f10
		  lr: 0xfffffe0025fe3b68  fp: 0xfffffe3a396e3f20
      Kernel Extensions in backtrace:
         com.apple.driver.AppleAVD(737.1)[63D957B3-2E48-36EA-880C-6F0BE3DE16A6]@0xfffffe0026a37e00->0xfffffe0026b04b43
            dependency: com.apple.driver.AppleARMPlatform(1.0.2)[9FC0A536-5BC6-33D5-911A-5A46BDDBBCEF]@0xfffffe00269dfe20->0xfffffe0026a3295b
            dependency: com.apple.driver.FairPlayIOKit(71.3.0)[AD212727-D14F-3DA2-8974-6CEA43B45BC1]@0xfffffe0027e23b50->0xfffffe0027f19aef
            dependency: com.apple.iokit.CoreAnalyticsFamily(1)[0896C7D3-89F2-3D56-A301-5CB0FE0BBEAC]@0xfffffe0027cb1f60->0xfffffe0027cb9d4b
            dependency: com.apple.iokit.IOSurface(352.0.3)[0351AFC2-D85C-3BB5-B9C6-C8C0F6C7A01D]@0xfffffe00288a7dc0->0xfffffe00288d85ab
```
