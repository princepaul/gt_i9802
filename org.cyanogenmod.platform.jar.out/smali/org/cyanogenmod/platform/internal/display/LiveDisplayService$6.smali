.class Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$6;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


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
    .line 586
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$6;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$6;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$100(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$6;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1700(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcom/android/server/twilight/TwilightManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    .line 590
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$6;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    sget v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->TWILIGHT_CHANGED:I

    # invokes: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateFeatures(I)V
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1200(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;I)V

    .line 591
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$6;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # invokes: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->nudge()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$1800(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V

    .line 592
    return-void
.end method
