.class Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;
.super Lcyanogenmod/hardware/ILiveDisplayService$Stub;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-direct {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 492
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    const-string v3, "LiveDisplay"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 495
    const-string v1, "LiveDisplay Service State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$100(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$400(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAwaitingNudge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1000(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$000(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 501
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$000(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    invoke-virtual {v1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->dump(Ljava/io/PrintWriter;)V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    return-void
.end method

.method public getColorAdjustment()[F
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    return-object v0
.end method

.method public getColorTemperature()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$800(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getColorTemperature()I

    move-result v0

    return v0
.end method

.method public getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$400(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDayColorTemperature()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$800(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    return v0
.end method

.method public getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mPAC:Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$900(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$400(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$300(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNightColorTemperature()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$800(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    return v0
.end method

.method public getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mPAC:Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$900(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public isAutoContrastEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v0

    return v0
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mOMC:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$700(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isCABCEnabled()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v0

    return v0
.end method

.method public isColorEnhancementEnabled()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v0

    return v0
.end method

.method public setAutoContrastEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 409
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->setAutoContrastEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 445
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mOMC:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$700(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setCABCEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 421
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->setCABCEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setColorAdjustment([F)Z
    .locals 3
    .param p1, "adj"    # [F

    .prologue
    .line 397
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->setColorAdjustment([F)Z

    move-result v0

    return v0
.end method

.method public setColorEnhancementEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$600(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->setColorEnhancementEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDayColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$800(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->setDayColorTemperature(I)V

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$400(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$300(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->setMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setNightColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$500(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$800(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->setNightColorTemperature(I)V

    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 1
    .param p1, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    .line 485
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mPAC:Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$900(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v0

    return v0
.end method
