.class Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;
.super Ljava/lang/Object;
.source "OutdoorModeController.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransition(IF)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "ambientLux"    # F

    .prologue
    const/4 v0, 0x1

    .line 229
    if-ne p1, v0, :cond_0

    .line 230
    .local v0, "outdoor":Z
    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    # getter for: Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->access$000(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 232
    monitor-exit v2

    .line 238
    :goto_1
    return-void

    .line 229
    .end local v0    # "outdoor":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    .restart local v0    # "outdoor":Z
    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    # setter for: Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z
    invoke-static {v1, v0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->access$002(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;Z)Z

    .line 236
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    # invokes: Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->access$100(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V

    .line 237
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
