.class public abstract Lcyanogenmod/hardware/ICMHardwareService$Stub;
.super Landroid/os/Binder;
.source "ICMHardwareService.java"

# interfaces
.implements Lcyanogenmod/hardware/ICMHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/ICMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.hardware.ICMHardwareService"

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getColorBalance:I = 0x1d

.field static final TRANSACTION_getColorBalanceMax:I = 0x1c

.field static final TRANSACTION_getColorBalanceMin:I = 0x1b

.field static final TRANSACTION_getCurrentDisplayMode:I = 0x11

.field static final TRANSACTION_getDefaultDisplayMode:I = 0x12

.field static final TRANSACTION_getDefaultPictureAdjustment:I = 0x20

.field static final TRANSACTION_getDisplayColorCalibration:I = 0x4

.field static final TRANSACTION_getDisplayGammaCalibration:I = 0x7

.field static final TRANSACTION_getDisplayModes:I = 0x10

.field static final TRANSACTION_getLtoDestination:I = 0xc

.field static final TRANSACTION_getLtoDownloadInterval:I = 0xd

.field static final TRANSACTION_getLtoSource:I = 0xb

.field static final TRANSACTION_getNumGammaControls:I = 0x6

.field static final TRANSACTION_getPictureAdjustment:I = 0x1f

.field static final TRANSACTION_getPictureAdjustmentRanges:I = 0x22

.field static final TRANSACTION_getSerialNumber:I = 0xe

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getThermalState:I = 0x16

.field static final TRANSACTION_getUniqueDeviceId:I = 0x1a

.field static final TRANSACTION_getVibratorIntensity:I = 0x9

.field static final TRANSACTION_isSunlightEnhancementSelfManaged:I = 0x19

.field static final TRANSACTION_readPersistentBytes:I = 0x15

.field static final TRANSACTION_registerThermalListener:I = 0x17

.field static final TRANSACTION_requireAdaptiveBacklightForSunlightEnhancement:I = 0xf

.field static final TRANSACTION_set:I = 0x3

.field static final TRANSACTION_setColorBalance:I = 0x1e

.field static final TRANSACTION_setDisplayColorCalibration:I = 0x5

.field static final TRANSACTION_setDisplayGammaCalibration:I = 0x8

.field static final TRANSACTION_setDisplayMode:I = 0x13

.field static final TRANSACTION_setPictureAdjustment:I = 0x21

.field static final TRANSACTION_setVibratorIntensity:I = 0xa

.field static final TRANSACTION_unRegisterThermalListener:I = 0x18

.field static final TRANSACTION_writePersistentBytes:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    const-string v0, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ICMHardwareService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    const-string v1, "cyanogenmod.hardware.ICMHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/hardware/ICMHardwareService;

    if-eqz v1, :cond_1

    .line 174
    check-cast v0, Lcyanogenmod/hardware/ICMHardwareService;

    goto :goto_0

    .line 176
    :cond_1
    new-instance v0, Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 180
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 184
    sparse-switch p1, :sswitch_data_0

    .line 532
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 188
    :sswitch_0
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :sswitch_1
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getSupportedFeatures()I

    move-result v2

    .line 195
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 201
    .end local v2    # "_result":I
    :sswitch_2
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->get(I)Z

    move-result v2

    .line 205
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 211
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v5

    .line 216
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->set(IZ)Z

    move-result v2

    .line 217
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_2
    move v1, v4

    .line 215
    goto :goto_1

    .line 223
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayColorCalibration()[I

    move-result-object v2

    .line 225
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 231
    .end local v2    # "_result":[I
    :sswitch_5
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 234
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayColorCalibration([I)Z

    move-result v2

    .line 235
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 241
    .end local v0    # "_arg0":[I
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getNumGammaControls()I

    move-result v2

    .line 243
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v2    # "_result":I
    :sswitch_7
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayGammaCalibration(I)[I

    move-result-object v2

    .line 253
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[I
    :sswitch_8
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 264
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayGammaCalibration(I[I)Z

    move-result v2

    .line 265
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getVibratorIntensity()[I

    move-result-object v2

    .line 273
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 279
    .end local v2    # "_result":[I
    :sswitch_a
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setVibratorIntensity(I)Z

    move-result v2

    .line 283
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoSource()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoDestination()Ljava/lang/String;

    move-result-object v2

    .line 299
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoDownloadInterval()J

    move-result-wide v2

    .line 307
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 313
    .end local v2    # "_result":J
    :sswitch_e
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v2

    .line 323
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 329
    .end local v2    # "_result":Z
    :sswitch_10
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    .line 331
    .local v2, "_result":[Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v2, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 337
    .end local v2    # "_result":[Lcyanogenmod/hardware/DisplayMode;
    :sswitch_11
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    .line 339
    .local v2, "_result":Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v2, :cond_7

    .line 341
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    invoke-virtual {v2, p3, v5}, Lcyanogenmod/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 345
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 351
    .end local v2    # "_result":Lcyanogenmod/hardware/DisplayMode;
    :sswitch_12
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    .line 353
    .restart local v2    # "_result":Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v2, :cond_8

    .line 355
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {v2, p3, v5}, Lcyanogenmod/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 359
    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v2    # "_result":Lcyanogenmod/hardware/DisplayMode;
    :sswitch_13
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 368
    sget-object v6, Lcyanogenmod/hardware/DisplayMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/hardware/DisplayMode;

    .line 374
    .local v0, "_arg0":Lcyanogenmod/hardware/DisplayMode;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    move v1, v5

    .line 375
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v2

    .line 376
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v2, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 371
    .end local v0    # "_arg0":Lcyanogenmod/hardware/DisplayMode;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/hardware/DisplayMode;
    goto :goto_2

    :cond_b
    move v1, v4

    .line 374
    goto :goto_3

    .line 382
    .end local v0    # "_arg0":Lcyanogenmod/hardware/DisplayMode;
    :sswitch_14
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 387
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v2

    .line 388
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    if-eqz v2, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 394
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Z
    :sswitch_15
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 398
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 404
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[B
    :sswitch_16
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getThermalState()I

    move-result v2

    .line 406
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 412
    .end local v2    # "_result":I
    :sswitch_17
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/IThermalListenerCallback;

    move-result-object v0

    .line 415
    .local v0, "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->registerThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z

    move-result v2

    .line 416
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v2, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 422
    .end local v0    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    .end local v2    # "_result":Z
    :sswitch_18
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/IThermalListenerCallback;

    move-result-object v0

    .line 425
    .restart local v0    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->unRegisterThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z

    move-result v2

    .line 426
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v2, :cond_e

    move v4, v5

    :cond_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 432
    .end local v0    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    .end local v2    # "_result":Z
    :sswitch_19
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->isSunlightEnhancementSelfManaged()Z

    move-result v2

    .line 434
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v2, :cond_f

    move v4, v5

    :cond_f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 440
    .end local v2    # "_result":Z
    :sswitch_1a
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getColorBalanceMin()I

    move-result v2

    .line 450
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 456
    .end local v2    # "_result":I
    :sswitch_1c
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getColorBalanceMax()I

    move-result v2

    .line 458
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 464
    .end local v2    # "_result":I
    :sswitch_1d
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getColorBalance()I

    move-result v2

    .line 466
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 472
    .end local v2    # "_result":I
    :sswitch_1e
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setColorBalance(I)Z

    move-result v2

    .line 476
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v2, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 482
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_1f
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v2

    .line 484
    .local v2, "_result":Lcyanogenmod/hardware/HSIC;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v2, :cond_11

    .line 486
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {v2, p3, v5}, Lcyanogenmod/hardware/HSIC;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 490
    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 496
    .end local v2    # "_result":Lcyanogenmod/hardware/HSIC;
    :sswitch_20
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v2

    .line 498
    .restart local v2    # "_result":Lcyanogenmod/hardware/HSIC;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v2, :cond_12

    .line 500
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {v2, p3, v5}, Lcyanogenmod/hardware/HSIC;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 504
    :cond_12
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 510
    .end local v2    # "_result":Lcyanogenmod/hardware/HSIC;
    :sswitch_21
    const-string v6, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 513
    sget-object v6, Lcyanogenmod/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/hardware/HSIC;

    .line 518
    .local v0, "_arg0":Lcyanogenmod/hardware/HSIC;
    :goto_4
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v2

    .line 519
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v2, :cond_13

    move v4, v5

    :cond_13
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 516
    .end local v0    # "_arg0":Lcyanogenmod/hardware/HSIC;
    .end local v2    # "_result":Z
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcyanogenmod/hardware/HSIC;
    goto :goto_4

    .line 525
    .end local v0    # "_arg0":Lcyanogenmod/hardware/HSIC;
    :sswitch_22
    const-string v4, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getPictureAdjustmentRanges()[F

    move-result-object v2

    .line 527
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
