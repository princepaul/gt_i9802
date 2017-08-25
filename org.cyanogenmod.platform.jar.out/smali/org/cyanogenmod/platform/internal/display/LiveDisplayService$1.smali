.class Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateFeatures(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;I)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    iput p2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$000(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$000(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    iget v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->val$flags:I

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;->this$0:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    # getter for: Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->access$100(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->update(ILorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method
