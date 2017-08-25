.class final Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;
.super Ljava/lang/Object;
.source "PerformanceManagerService.java"

# interfaces
.implements Lcyanogenmod/power/PerformanceManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p2, "x1"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    return-void
.end method


# virtual methods
.method public activityResumed(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "activityName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 356
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # setter for: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;
    invoke-static {v2, v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$902(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    const/4 v3, 0x0

    # invokes: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->applyProfile(Z)V
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$1000(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)V

    .line 363
    return-void
.end method

.method public cpuBoost(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->cpuBoostInternal(I)V
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$200(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)V

    .line 333
    return-void
.end method

.method public launchBoost(ILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 337
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$600(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1

    .line 339
    const-string v0, "PerformanceManager"

    const-string v2, "System is not ready, dropping launch boost request"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    monitor-exit v1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$700(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$700(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 348
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->access$800(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1, p2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
