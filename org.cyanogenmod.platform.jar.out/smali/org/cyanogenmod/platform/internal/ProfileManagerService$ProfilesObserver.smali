.class Lorg/cyanogenmod/platform/internal/ProfileManagerService$ProfilesObserver;
.super Landroid/database/ContentObserver;
.source "ProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilesObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$ProfilesObserver;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .line 220
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 225
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$ProfilesObserver;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$600(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_profiles_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, "state":I
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$ProfilesObserver;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$300(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method
