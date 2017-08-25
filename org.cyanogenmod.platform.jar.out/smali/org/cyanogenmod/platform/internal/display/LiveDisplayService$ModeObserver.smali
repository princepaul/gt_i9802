.class final Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;
.super Lcom/android/server/pm/UserContentObserver;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModeObserver"
.end annotation


# instance fields
.field private final MODE_SETTING:Landroid/net/Uri;

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;Landroid/os/Handler;)V
    .locals 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 548
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    .line 549
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserContentObserver;-><init>(Landroid/os/Handler;)V

    .line 545
    const-string v1, "display_temperature_mode"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->MODE_SETTING:Landroid/net/Uri;

    .line 551
    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 552
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->MODE_SETTING:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 554
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->observe()V

    .line 555
    return-void
.end method


# virtual methods
.method getMode()I
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    const-string v1, "display_temperature_mode"

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$400(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultMode()I

    move-result v2

    # invokes: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getInt(Ljava/lang/String;I)I
    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1400(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method setMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 574
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$400(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    .line 575
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    const-string v1, "display_temperature_mode"

    # invokes: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->putInt(Ljava/lang/String;I)V
    invoke-static {v0, v1, p1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;Ljava/lang/String;I)V

    .line 576
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$400(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultMode()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # invokes: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->stopNudgingMe()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V

    .line 579
    :cond_0
    const/4 v0, 0x1

    .line 581
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 559
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v0

    .line 560
    .local v0, "mode":I
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$100(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v1

    iget v1, v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mMode:I

    if-eq v0, v1, :cond_0

    .line 561
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$100(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v1

    iput v0, v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mMode:I

    .line 563
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    sget v2, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->MODE_CHANGED:I

    # invokes: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateFeatures(I)V
    invoke-static {v1, v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1200(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;I)V

    .line 564
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # invokes: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->publishCustomTile()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1300(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V

    .line 566
    :cond_0
    return-void
.end method
