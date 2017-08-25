.class public Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;,
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CPU_BOOST_TIME:I = 0x4c4b40

.field private static final MSG_CPU_BOOST:I = 0x1

.field private static final MSG_LAUNCH_BOOST:I = 0x2

.field private static final MSG_SET_PROFILE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PerformanceManager"


# instance fields
.field private final POWER_FEATURE_SUPPORTED_PROFILES:I

.field private final POWER_HINT_CPU_BOOST:I

.field private final POWER_HINT_LAUNCH_BOOST:I

.field private final POWER_HINT_SET_PROFILE:I

.field private final mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mCurrentActivityName:Ljava/lang/String;

.field private mCurrentProfile:I

.field private final mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mNumProfiles:I

.field private mPatterns:[Ljava/util/regex/Pattern;

.field private mPm:Landroid/os/PowerManagerInternal;

.field private mProfiles:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 76
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    .line 51
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    .line 54
    const/4 v3, -0x1

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    .line 55
    iput v6, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    .line 61
    const/16 v3, 0x10

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_CPU_BOOST:I

    .line 62
    const/16 v3, 0x11

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_LAUNCH_BOOST:I

    .line 63
    const/16 v3, 0x30

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_SET_PROFILE:I

    .line 65
    const/16 v3, 0x1000

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_FEATURE_SUPPORTED_PROFILES:I

    .line 68
    iput-boolean v6, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    .line 69
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    .line 294
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mBinder:Landroid/os/IBinder;

    .line 398
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 78
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "activities":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 83
    array-length v3, v0

    new-array v3, v3, [Ljava/util/regex/Pattern;

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    .line 84
    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 86
    aget-object v3, v0, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "info":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 88
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v3, v1

    .line 89
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    .end local v2    # "info":[Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/android/server/ServiceThread;

    const-string v4, "PerformanceManager"

    const/4 v5, -0x7

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 102
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->start()V

    .line 104
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;IZ)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->applyProfile(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->native_launchBoost(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->cpuBoostInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 44
    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    return v0
.end method

.method static synthetic access$500(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileHasAppProfilesInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$700(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 44
    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    return v0
.end method

.method static synthetic access$800(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    return-object v0
.end method

.method static synthetic access$902(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    return-object p1
.end method

.method private applyProfile(Z)V
    .locals 3
    .param p1, "fromUser"    # Z

    .prologue
    .line 273
    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    if-eqz v1, :cond_2

    .line 281
    const/4 v0, 0x0

    .line 291
    .local v0, "profile":I
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    goto :goto_0

    .line 282
    .end local v0    # "profile":I
    :cond_2
    if-eqz p1, :cond_3

    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-nez v1, :cond_3

    .line 283
    const/4 v0, 0x1

    .restart local v0    # "profile":I
    goto :goto_1

    .line 285
    .end local v0    # "profile":I
    :cond_3
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    .line 287
    .restart local v0    # "profile":I
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->hasAppProfiles()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileHasAppProfilesInternal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileForActivity(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private cpuBoostInternal(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_1

    .line 256
    const-string v0, "PerformanceManager"

    const-string v1, "System is not ready, dropping cpu boost request"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    monitor-exit p0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-lez p1, :cond_2

    const v0, 0x4c4b40

    if-gt p1, v0, :cond_2

    .line 262
    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 268
    :cond_2
    const-string v0, "PerformanceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boost duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProfileForActivity(Ljava/lang/String;)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 243
    if-eqz p1, :cond_1

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 245
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    aget v1, v1, v0

    .line 250
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 244
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getProfileHasAppProfilesInternal(I)Z
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-le p1, v2, :cond_2

    .line 149
    :cond_0
    const-string v0, "PerformanceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    return v1

    .line 153
    :cond_2
    if-ne p1, v0, :cond_1

    .line 154
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private getUserProfile()I
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "performance_profile"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasAppProfiles()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 142
    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_perf_profiles_enabled"

    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_launchBoost(ILjava/lang/String;)V
.end method

.method private declared-synchronized setPowerProfileInternal(IZ)Z
    .locals 8
    .param p1, "profile"    # I
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    if-nez v5, :cond_1

    .line 183
    const-string v4, "PerformanceManager"

    const-string v5, "System is not ready, dropping profile request"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 186
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-le p1, v5, :cond_3

    .line 187
    :cond_2
    const-string v4, "PerformanceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 191
    :cond_3
    :try_start_2
    iget v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-ne p1, v5, :cond_4

    move v0, v4

    .line 193
    .local v0, "isProfileSame":Z
    :goto_1
    if-nez v0, :cond_6

    .line 194
    if-nez p1, :cond_9

    .line 197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 199
    .local v2, "token":J
    :try_start_3
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setPowerSaveMode(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    .line 203
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "isProfileSame":Z
    .end local v2    # "token":J
    :cond_4
    move v0, v1

    .line 191
    goto :goto_1

    .line 203
    .restart local v0    # "isProfileSame":Z
    .restart local v2    # "token":J
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    .end local v2    # "token":J
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 218
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "performance_profile"

    invoke-static {v5, v6, p1}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    :cond_7
    if-nez v0, :cond_0

    .line 227
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    const-string v6, "cyanogenmod.permission.PERFORMANCE_ACCESS"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 232
    .restart local v2    # "token":J
    iput p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    .line 234
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    const/4 v6, 0x3

    if-eqz p2, :cond_8

    move v1, v4

    :cond_8
    invoke-virtual {v5, v6, p1, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 237
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v4

    .line 239
    goto :goto_0

    .line 203
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 205
    .end local v2    # "token":J
    :cond_9
    iget v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-nez v5, :cond_6

    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 207
    .restart local v2    # "token":J
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setPowerSaveMode(Z)Z

    .line 208
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "org.cyanogenmod.performance"

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v3, 0x2

    .line 120
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_1

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    .line 123
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getFeature(I)I

    move-result v1

    iput v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    .line 124
    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-lez v1, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    .line 126
    .local v0, "profile":I
    if-ne v0, v3, :cond_2

    .line 127
    const-string v1, "PerformanceManager"

    const-string v2, "Reverting profile %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    .line 135
    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 137
    .end local v0    # "profile":I
    :cond_0
    monitor-exit p0

    .line 139
    :cond_1
    return-void

    .line 132
    .restart local v0    # "profile":I
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    goto :goto_0

    .line 137
    .end local v0    # "profile":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 114
    const-string v0, "cmperformance"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 115
    const-class v0, Lcyanogenmod/power/PerformanceManagerInternal;

    new-instance v1, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 116
    return-void
.end method
