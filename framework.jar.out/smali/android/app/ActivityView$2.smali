.class Landroid/app/ActivityView$2;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityView;->setSurfaceAsync(Landroid/view/Surface;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;

.field final synthetic val$callback:Z

.field final synthetic val$densityDpi:I

.field final synthetic val$height:I

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/app/ActivityView;Landroid/view/Surface;IIIZ)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    iput-object p2, p0, Landroid/app/ActivityView$2;->val$surface:Landroid/view/Surface;

    iput p3, p0, Landroid/app/ActivityView$2;->val$width:I

    iput p4, p0, Landroid/app/ActivityView$2;->val$height:I

    iput p5, p0, Landroid/app/ActivityView$2;->val$densityDpi:I

    iput-boolean p6, p0, Landroid/app/ActivityView$2;->val$callback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityContainerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    invoke-static {v1}, Landroid/app/ActivityView;->access$400(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    invoke-static {v1}, Landroid/app/ActivityView;->access$400(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ActivityView$2;->val$surface:Landroid/view/Surface;

    iget v4, p0, Landroid/app/ActivityView$2;->val$width:I

    iget v5, p0, Landroid/app/ActivityView$2;->val$height:I

    iget v6, p0, Landroid/app/ActivityView$2;->val$densityDpi:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V

    .line 301
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    iget-boolean v1, p0, Landroid/app/ActivityView$2;->val$callback:Z

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    new-instance v2, Landroid/app/ActivityView$2$1;

    invoke-direct {v2, p0}, Landroid/app/ActivityView$2$1;-><init>(Landroid/app/ActivityView$2;)V

    invoke-virtual {v1, v2}, Landroid/app/ActivityView;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_1
    return-void

    .line 301
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ActivityView: Unable to set surface of ActivityContainer. "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
