.class Landroid/app/ActivityView$2$1;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityView$2;


# direct methods
.method constructor <init>(Landroid/app/ActivityView$2;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    iget-object v0, v0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;
    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    iget-object v0, v0, Landroid/app/ActivityView$2;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    iget-object v0, v0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;
    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    iget-object v1, v1, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceAvailable(Landroid/app/ActivityView;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    iget-object v0, v0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;
    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$2$1;->this$1:Landroid/app/ActivityView$2;

    iget-object v1, v1, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceDestroyed(Landroid/app/ActivityView;)V

    goto :goto_0
.end method
