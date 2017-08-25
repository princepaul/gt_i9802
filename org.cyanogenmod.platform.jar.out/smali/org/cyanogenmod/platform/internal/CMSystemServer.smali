.class public Lorg/cyanogenmod/platform/internal/CMSystemServer;
.super Ljava/lang/Object;
.source "CMSystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "CMSystemServer"


# instance fields
.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceHelper:Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemServiceHelper:Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;

    .line 43
    return-void
.end method

.method public static coreAppsOnly()Z
    .locals 2

    .prologue
    .line 47
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "cryptState":Ljava/lang/String;
    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    const-string v0, "CMSystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "CMSystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void
.end method

.method private run()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMSystemServer;->startServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "System"

    const-string v2, "************ Failure starting cm system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    throw v0
.end method

.method private startServices()V
    .locals 12

    .prologue
    .line 67
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemContext:Landroid/content/Context;

    .line 68
    .local v2, "context":Landroid/content/Context;
    const-class v9, Lcom/android/server/SystemServiceManager;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/SystemServiceManager;

    .line 69
    .local v8, "ssm":Lcom/android/server/SystemServiceManager;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x3f05000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "externalServices":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v7, v0, v5

    .line 74
    .local v7, "service":Ljava/lang/String;
    :try_start_0
    const-string v9, "CMSystemServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempting to start service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v9, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemServiceHelper:Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;

    invoke-virtual {v9, v7}, Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;->getServiceFor(Ljava/lang/String;)Lorg/cyanogenmod/platform/internal/CMSystemService;

    move-result-object v1

    .line 76
    .local v1, "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/CMSystemService;->getFeatureDeclaration()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMSystemServer;->coreAppsOnly()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/CMSystemService;->isCoreService()Z

    move-result v9

    if-nez v9, :cond_0

    .line 79
    const-string v9, "CMSystemServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - only parsing core apps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    .restart local v1    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    :cond_0
    const-string v9, "CMSystemServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    .end local v1    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "starting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v3}, Lorg/cyanogenmod/platform/internal/CMSystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v1    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    :cond_1
    :try_start_1
    const-string v9, "CMSystemServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not starting service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " due to feature not declared on device"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    .end local v1    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    .end local v7    # "service":Ljava/lang/String;
    :cond_2
    return-void
.end method
