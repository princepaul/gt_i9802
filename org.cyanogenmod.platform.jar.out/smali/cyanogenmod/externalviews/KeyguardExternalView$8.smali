.class Lcyanogenmod/externalviews/KeyguardExternalView$8;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;->onBouncerShowing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

.field final synthetic val$showing:Z


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalView;Z)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$8;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    iput-boolean p2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$8;->val$showing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$8;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$000(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v0

    iget-boolean v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$8;->val$showing:Z

    invoke-interface {v0, v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->onBouncerShowing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    goto :goto_0
.end method
