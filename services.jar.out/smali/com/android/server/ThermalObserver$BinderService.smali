.class final Lcom/android/server/ThermalObserver$BinderService;
.super Landroid/os/Binder;
.source "ThermalObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermalObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermalObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/ThermalObserver;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/ThermalObserver$BinderService;->this$0:Lcom/android/server/ThermalObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ThermalObserver;Lcom/android/server/ThermalObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ThermalObserver;
    .param p2, "x1"    # Lcom/android/server/ThermalObserver$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/ThermalObserver$BinderService;-><init>(Lcom/android/server/ThermalObserver;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/server/ThermalObserver$BinderService;->this$0:Lcom/android/server/ThermalObserver;

    invoke-virtual {v2}, Lcom/android/server/ThermalObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump thermal observer service from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 134
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ThermalObserver$BinderService;->this$0:Lcom/android/server/ThermalObserver;

    # getter for: Lcom/android/server/ThermalObserver;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/ThermalObserver;->access$400(Lcom/android/server/ThermalObserver;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    if-eqz p3, :cond_1

    :try_start_1
    array-length v2, p3

    if-eqz v2, :cond_1

    const-string v2, "-a"

    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    :cond_1
    const-string v2, "Current Thermal Observer Service state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  last state change: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/ThermalObserver$BinderService;->this$0:Lcom/android/server/ThermalObserver;

    # getter for: Lcom/android/server/ThermalObserver;->mLastState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/android/server/ThermalObserver;->access$500(Lcom/android/server/ThermalObserver;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/ThermalObserver$BinderService;->this$0:Lcom/android/server/ThermalObserver;

    # getter for: Lcom/android/server/ThermalObserver;->mLastState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/android/server/ThermalObserver;->access$500(Lcom/android/server/ThermalObserver;)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 137
    :cond_3
    :try_start_2
    const-string v2, "none"

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
