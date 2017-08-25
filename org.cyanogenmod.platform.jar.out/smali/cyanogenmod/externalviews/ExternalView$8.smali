.class Lcyanogenmod/externalviews/ExternalView$8;
.super Ljava/lang/Object;
.source "ExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/ExternalView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/ExternalView;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/ExternalView;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcyanogenmod/externalviews/ExternalView$8;->this$0:Lcyanogenmod/externalviews/ExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView$8;->this$0:Lcyanogenmod/externalviews/ExternalView;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IExternalViewProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcyanogenmod/externalviews/IExternalViewProvider;->onAttach(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method
