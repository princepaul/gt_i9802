.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    .line 390
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "streamValue"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 433
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->isNotificationStreamLinked()Z
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1600(Landroid/preference/SeekBarVolumizer;)Z

    move-result v4

    if-eqz v4, :cond_2

    # invokes: Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z
    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->access$1700(I)Z

    move-result v1

    .line 436
    .local v1, "streamMatch":Z
    :goto_0
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    .line 437
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1200(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1800(Landroid/preference/SeekBarVolumizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_4

    :cond_0
    move v0, v2

    .line 439
    .local v0, "muted":Z
    :goto_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->access$1900(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$400(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 441
    .end local v0    # "muted":Z
    :cond_1
    return-void

    .line 433
    .end local v1    # "streamMatch":Z
    :cond_2
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1800(Landroid/preference/SeekBarVolumizer;)I

    move-result v4

    if-ne p1, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    .restart local v1    # "streamMatch":Z
    :cond_4
    move v0, v3

    .line 437
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 412
    .local v2, "streamType":I
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 413
    .local v3, "streamValue":I
    invoke-direct {p0, v2, v3}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 430
    .end local v2    # "streamType":I
    .end local v3    # "streamValue":I
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 415
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mRingerMode:I
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)I

    move-result v1

    .line 416
    .local v1, "oldRingerMode":I
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->access$1200(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v6

    # setter for: Landroid/preference/SeekBarVolumizer;->mRingerMode:I
    invoke-static {v5, v6}, Landroid/preference/SeekBarVolumizer;->access$1002(Landroid/preference/SeekBarVolumizer;I)I

    .line 419
    :cond_2
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1300(Landroid/preference/SeekBarVolumizer;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mRingerMode:I
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 420
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_0

    .line 422
    .end local v1    # "oldRingerMode":I
    :cond_3
    const-string v5, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 423
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 424
    .restart local v2    # "streamType":I
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1200(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 425
    .local v4, "streamVolume":I
    invoke-direct {p0, v2, v4}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    goto :goto_0

    .line 426
    .end local v2    # "streamType":I
    .end local v4    # "streamVolume":I
    :cond_4
    const-string v5, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 427
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->access$1500(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v6

    # setter for: Landroid/preference/SeekBarVolumizer;->mZenMode:I
    invoke-static {v5, v6}, Landroid/preference/SeekBarVolumizer;->access$1402(Landroid/preference/SeekBarVolumizer;I)I

    .line 428
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 394
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 395
    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    .line 396
    if-eqz p1, :cond_1

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 403
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
