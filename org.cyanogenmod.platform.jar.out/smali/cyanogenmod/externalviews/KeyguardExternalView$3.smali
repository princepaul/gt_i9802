.class Lcyanogenmod/externalviews/KeyguardExternalView$3;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

.field final synthetic val$clipRect:Landroid/graphics/Rect;

.field final synthetic val$height:I

.field final synthetic val$visible:Z

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalView;IIIIZLandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    iput p2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$x:I

    iput p3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$y:I

    iput p4, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$width:I

    iput p5, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$height:I

    iput-boolean p6, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$visible:Z

    iput-object p7, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$clipRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$000(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$x:I

    iget v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$y:I

    iget v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$width:I

    iget v4, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$height:I

    iget-boolean v5, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$visible:Z

    iget-object v6, p0, Lcyanogenmod/externalviews/KeyguardExternalView$3;->val$clipRect:Landroid/graphics/Rect;

    invoke-interface/range {v0 .. v6}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->alterWindow(IIIIZLandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method
