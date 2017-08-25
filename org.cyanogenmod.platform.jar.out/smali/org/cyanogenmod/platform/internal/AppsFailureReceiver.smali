.class public Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppsFailureReceiver.java"


# static fields
.field private static final EXPIRATION_TIME_IN_MILLISECONDS:I = 0x7530

.field private static final FAILURES_THRESHOLD:I = 0x3


# instance fields
.field private mFailuresCount:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    return-void
.end method

.method private postThemeResetNotification(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x3f080058

    .line 103
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 105
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "title":Ljava/lang/String;
    const v4, 0x3f080059

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "body":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x1080078

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 118
    .local v2, "notice":Landroid/app/Notification;
    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 55
    .local v2, "currentTime":J
    const-string v6, "cyanogenmod.intent.action.APP_FAILURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    iget-wide v6, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 58
    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    .line 59
    iput v10, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    .line 61
    :cond_0
    iget v6, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    if-gt v6, v11, :cond_1

    .line 62
    iget v6, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    .line 63
    iget v6, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    if-ne v6, v11, :cond_1

    .line 65
    const-string v6, "cmthemes"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcyanogenmod/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;

    move-result-object v5

    .line 67
    .local v5, "tm":Lcyanogenmod/themes/IThemeService;
    const-string v4, "system"

    .line 68
    .local v4, "themePkgName":Ljava/lang/String;
    new-instance v1, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 69
    .local v1, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    const-string v6, "system"

    invoke-virtual {v1, v6}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setOverlay(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setStatusBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setNavBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setIcons(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setFont(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setBootanimation(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setLockWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setAlarm(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setNotification(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    const-string v7, "system"

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setRingtone(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v6

    sget-object v7, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_RESET:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    invoke-virtual {v6, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setRequestType(Lcyanogenmod/themes/ThemeChangeRequest$RequestType;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    .line 84
    :try_start_0
    invoke-virtual {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    .line 85
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->postThemeResetNotification(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .end local v4    # "themePkgName":Ljava/lang/String;
    .end local v5    # "tm":Lcyanogenmod/themes/IThemeService;
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    const-string v6, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    .line 94
    iput v10, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    goto :goto_0

    .line 86
    .restart local v1    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .restart local v4    # "themePkgName":Ljava/lang/String;
    .restart local v5    # "tm":Lcyanogenmod/themes/IThemeService;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
