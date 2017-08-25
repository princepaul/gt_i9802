.class Lcyanogenmod/externalviews/KeyguardExternalView$5;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$5;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$5;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    # getter for: Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->access$000(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->onAttach(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method
