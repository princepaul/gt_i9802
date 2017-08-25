.class Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;
.super Ljava/lang/Object;
.source "DisplayHardwareController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->animateDisplayColor([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 310
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    monitor-enter v3

    .line 311
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v2}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    move-object v0, v2

    check-cast v0, [F

    move-object v1, v0

    .line 313
    .local v1, "value":[F
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    # getter for: Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->access$100(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v1, v6

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    # getter for: Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I
    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->access$000(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v1, v6

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    # getter for: Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I
    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->access$000(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget v6, v1, v6

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    # getter for: Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I
    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->access$000(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v5

    invoke-virtual {v2, v4}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayColorCalibration([I)Z

    .line 318
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    # invokes: Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->screenRefresh()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->access$200(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V

    .line 320
    .end local v1    # "value":[F
    :cond_0
    monitor-exit v3

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
