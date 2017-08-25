.class Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;
.super Landroid/os/Handler;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientLuxHandler"
.end annotation


# static fields
.field private static final MSG_TRANSITION:I = 0x1

.field private static final MSG_UPDATE_LUX:I


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "direction":I
    const/4 v1, 0x0

    .line 92
    .local v1, "lux":F
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    monitor-enter v5

    .line 93
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    monitor-exit v5

    .line 126
    return-void

    .line 95
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 96
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mRingBuffer:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$000(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->add(F)V

    .line 101
    :pswitch_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mRingBuffer:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
    invoke-static {v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$000(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->getAverage()F

    move-result v6

    # setter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F
    invoke-static {v3, v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$102(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;F)F

    .line 103
    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->DEBUG:Z
    invoke-static {}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const-string v3, "AmbientLuxObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lux= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I
    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$300(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAmbientLux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F
    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$100(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$300(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mThresholdLux:F
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$400(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v3

    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mHysteresisLux:F
    invoke-static {v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$500(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v6

    sub-float v2, v3, v6

    .line 110
    .local v2, "threshold":F
    :goto_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$100(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_4

    move v0, v4

    .line 111
    :goto_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$300(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 112
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # setter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I
    invoke-static {v3, v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$302(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;I)I

    .line 113
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mCallback:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$600(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mCallback:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$600(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    move-result-object v3

    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I
    invoke-static {v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$300(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v6

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F
    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$100(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v7

    invoke-interface {v3, v6, v7}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;->onTransition(IF)V

    .line 120
    :cond_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mRingBuffer:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$000(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 121
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mThresholdDuration:I
    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$700(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v6, v4

    invoke-virtual {p0, v3, v6, v7}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 125
    .end local v2    # "threshold":F
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 108
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    # getter for: Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mThresholdLux:F
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->access$400(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_1

    .line 110
    .restart local v2    # "threshold":F
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
