.class Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$5;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


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
    .line 532
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$5;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 2
    .param p1, "lowPowerMode"    # Z

    .prologue
    .line 535
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$5;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$100(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v0

    iget-boolean v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    if-eq p1, v0, :cond_0

    .line 536
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$5;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$100(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v0

    iput-boolean p1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 537
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$5;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    sget v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->MODE_CHANGED:I

    # invokes: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateFeatures(I)V
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1200(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;I)V

    .line 539
    :cond_0
    return-void
.end method
