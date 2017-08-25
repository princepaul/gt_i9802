.class public Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "PartnerInterfaceService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMSettingsService"


# instance fields
.field private mAudioService:Landroid/media/IAudioService;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mService:Landroid/os/IBinder;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;-><init>(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mService:Landroid/os/IBinder;

    .line 62
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "cmpartnerinterface"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifyNetworkSettingsPermission()V

    return-void
.end method

.method static synthetic access$100(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setAirplaneModeEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setMobileDataEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceShutdownPermission()V

    return-void
.end method

.method static synthetic access$400(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->shutdownInternal(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifySoundSettingsPermission()V

    return-void
.end method

.method static synthetic access$600(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;IJ)Z
    .locals 2
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setZenModeInternal(IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceCaptureHotwordPermission()V

    return-void
.end method

.method private createZenModeConditionUri(J)Landroid/net/Uri;
    .locals 9
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 258
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p1, v4

    if-eqz v3, :cond_0

    cmp-long v3, p1, v6

    if-gez v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v2

    .line 261
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, p1

    .line 263
    .local v0, "endTimeMillis":J
    cmp-long v3, v0, v6

    if-gez v3, :cond_2

    .line 264
    const-string v3, "CMSettingsService"

    const-string v4, "createZenModeCondition duration exceeds the max numerical limit. Defaulting to Indefinite"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_2
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private enforceCaptureHotwordPermission()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    const-string v2, "You do not have permission to query the hotword input package name."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private enforceModifyNetworkSettingsPermission()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.MODIFY_NETWORK_SETTINGS"

    const-string v2, "You do not have permissions to change system network settings."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private enforceModifySoundSettingsPermission()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.MODIFY_SOUND_SETTINGS"

    const-string v2, "You do not have permissions to change system sound settings."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private enforceShutdownPermission()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REBOOT"

    const-string v2, "You do not have permissions to shut down the device."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private setAirplaneModeEnabledInternal(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 202
    return-void

    .line 195
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabledInternal(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 206
    return-void
.end method

.method private setZenModeInternal(IJ)Z
    .locals 8
    .param p1, "mode"    # I
    .param p2, "durationMillis"    # J

    .prologue
    const/4 v3, 0x0

    .line 223
    const/4 v2, -0x1

    .line 224
    .local v2, "zenModeValue":I
    const/4 v1, 0x0

    .line 225
    .local v1, "zenModeConditionUri":Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 241
    const-string v4, "CMSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setZenMode() called with invalid mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return v3

    .line 227
    :pswitch_0
    const/4 v2, 0x1

    .line 228
    invoke-direct {p0, p2, p3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->createZenModeConditionUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 246
    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mNotificationManager:Landroid/app/INotificationManager;

    const-string v5, "setZenMode (PartnerInterface)"

    invoke-interface {v4, v2, v1, v5}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    const/4 v3, 0x1

    goto :goto_0

    .line 231
    :pswitch_1
    const/4 v2, 0x0

    .line 234
    goto :goto_1

    .line 236
    :pswitch_2
    const/4 v2, 0x2

    .line 237
    invoke-direct {p0, p2, p3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->createZenModeConditionUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 238
    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CMSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setZenMode() failed for mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private shutdownInternal(Z)V
    .locals 5
    .param p1, "reboot"    # Z

    .prologue
    .line 209
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 212
    .local v1, "pm":Landroid/os/IPowerManager;
    if-eqz p1, :cond_0

    .line 213
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMSettingsService"

    const-string v3, "Unable to shutdown."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "org.cyanogenmod.partner"

    return-object v0
.end method

.method public getHotwordPackageNameInternal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2}, Landroid/media/IAudioService;->getCurrentHotwordInputPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMSettingsService"

    const-string v3, "getHotwordPackageName() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 75
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 77
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 78
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mAudioService:Landroid/media/IAudioService;

    .line 79
    return-void
.end method
